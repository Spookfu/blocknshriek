# Sets the score "shrieker-on" to prevent continous running of this function, and other one-time runs for Shrieker Usage
scoreboard players set @a[scores={shrieker-baser=0}] shrieker-on 1

# Removes one from the timer score.
execute unless entity @a[scores={shrieker-baser=0,shrieker-timer=..0}] run scoreboard players remove @a[scores={shrieker-baser=0}] shrieker-timer 1

# Runs the schedule again in 1s
execute unless entity @a[scores={shrieker-baser=0,shrieker-timer=..0}] run schedule function shriek:gamehandler/shrieker/timing 1s

# If cooldown complete (shrieker-timer score of 0 or less), run the returner function.
execute as @a[scores={shrieker-baser=0,shrieker-timer=..0}] run function shriek:gamehandler/shrieker/returner
