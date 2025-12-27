# Debug
execute if score .functionDebug debug matches 1 run tellraw @a [{"text":"[DEBUG]","color":"blue","bold":true},{"text":" Running function hub/teams/shared/exit.mcfunction","color":"white","bold":false}]

execute as @e[type=interaction,tag=teamers] run data remove entity @s interaction
function shriek:gamehandler/hub/teams/updater