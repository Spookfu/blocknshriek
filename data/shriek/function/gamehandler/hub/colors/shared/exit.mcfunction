# Debug
execute if score .functionDebug debug matches 1 run tellraw @a [{"text":"[DEBUG]","color":"blue","bold":true},{"text":" Running function /hub/colors/shared/exit.mcfunction","color":"white","bold":false}]

execute as @e[type=interaction,tag=colors] run data remove entity @s interaction
function shriek:gamehandler/hub/colors/updater