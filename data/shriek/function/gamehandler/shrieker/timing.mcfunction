scoreboard players set @a[scores={shrieker-status=0},tag=!shrieked] shrieker-cd 120
tag @a[scores={shrieker-status=0}] add shrieked

# Removes one from the timer score. 
scoreboard players remove @a[scores={shrieker-cd=1..},tag=!hiding,tag=shrieked] shrieker-cd 1

# Runs the schedule again in 1s
execute if entity @a[scores={shrieker-cd=1..}] run schedule function shriek:gamehandler/shrieker/timing 1s


# # If cooldown complete (shrieker-timer score of 0 or less), run the returner function.
execute as @a[scores={shrieker-cd=..0},tag=shrieked] run function shriek:gamehandler/shrieker/returner
