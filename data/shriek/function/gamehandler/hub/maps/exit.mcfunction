# Debug
execute if score .functionDebug debug matches 1 run tellraw @a [{"text":"[DEBUG]","color":"blue","bold":true},{"text":" Running function hub/maps/exit.mcfunction","color":"white","bold":false}]

stopsound @s * block.beacon.activate
stopsound @s * block.amethyst_block.resonate
tag @s remove .mapConsideringBase
tag @s remove .mapConsideringCrypt
tag @s remove .mapConsideringStalking
tag @s remove .mapConsideringSculk
clear @s white_dye
playsound minecraft:block.beacon.deactivate master @s ~ ~ ~ 1 0.1 1
execute as @s run function shriek:gamehandler/hub/team_iden
function shriek:gamehandler/hub/maps/updater

item replace entity @s armor.head with air