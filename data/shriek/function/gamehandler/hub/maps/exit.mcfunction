# Debug
execute if score functionDebug debug matches 1 run tellraw @a [{"text":"[DEBUG]","color":"blue","bold":true},{"text":" Running function hub/maps/exit.mcfunction","color":"white","bold":false}]

stopsound @s * block.beacon.activate
stopsound @s * block.amethyst_block.resonate
tag @s remove map
tag @s remove map_dungeon
tag @s remove map_stalking
tag @s remove map_sculk
clear @s white_dye
playsound minecraft:block.beacon.deactivate master @a ~ ~ ~ 1 0.1 1
execute as @s run function shriek:gamehandler/hub/team_iden
function shriek:gamehandler/hub/maps/updater