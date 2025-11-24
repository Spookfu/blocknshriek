# Debug
execute if score functionDebug debug matches 1 run tellraw @a [{"text":"[DEBUG]","color":"blue","bold":true},{"text":" Running function hub/maps/choose-stalking.mcfunction","color":"white","bold":false}]

tag @s remove chosen_sculk
tag @s add chosen_stalking
tag @s remove chosen_dungeon
execute as @s run function shriek:gamehandler/hub/maps/updater