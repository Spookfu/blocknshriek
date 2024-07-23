execute as @a run execute if score timer gameHandler matches 5 run function shriek:gamehandler/start/start

execute if score game gameHandler matches 1 run function shriek:gamehandler/status/status_check

execute store result score blue teams run team list Player1
execute store result score red teams run team list Player2