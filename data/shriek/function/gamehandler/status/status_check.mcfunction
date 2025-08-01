# Removes and Adds tags, sprinting and sneaking, based on wether or not the player is sprinting or sneaking
tag @s[predicate=shriek:sprint] add sprinting
tag @s[predicate=shriek:sneak] add sneaking
tag @s[predicate=!shriek:sprint] remove sprinting
tag @s[predicate=!shriek:sneak] remove sneaking

# Stores the Distance Jumped into a Scoreboard
execute as @s store result score @s jump_dis run data get entity @s FallDistance 100

# If the distance jumped is greater than or equal to 99, run a function, else remove "jumping". Remove the tag "jumping" as well when the player is on the ground.
execute as @s[scores={jump_dis=99..}] run function shriek:gamehandler/status/jumping
execute as @s[scores={jump_dis=..99}] run tag @s remove jumping
tag @s[nbt={OnGround:1b}] remove jumped

# Status Inventory Preventors
kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{group-status:1}}}}]
clear @s[nbt=!{Inventory:[{count:1,Slot:8b, components:{"minecraft:custom_data":{group-status:1}}}]},tag=Players] #shriek:status

# Status Checkers
execute as @s[tag=!sprinting,tag=!jumping] run function shriek:gamehandler/status/green

execute as @s[tag=sprinting,tag=!sneaking] run function shriek:gamehandler/status/red

execute as @s[tag=jumping,tag=!sneaking,tag=!sprinting] run function shriek:gamehandler/status/yellow

execute as @s[tag=sprinting,tag=sneaking] run function shriek:gamehandler/status/yellow
execute as @s[tag=jumping,tag=sneaking, tag=!sprinting] run function shriek:gamehandler/status/green

# Cooldown Helpers (Sprinting for more than 500cm)
execute at @s[scores={sprint-time=1..},tag=!sprinting] run particle poof ~ ~ ~ 0 1 0 0 100 normal
execute at @s[scores={sprint-time=1..},tag=!sprinting] run playsound minecraft:entity.armadillo.brush master @a ~ ~ ~ 1 0.1 1
scoreboard players set @s[tag=!sprinting] sprint-time 0
execute unless score @s shrieker-cd matches ..0 run execute as @s[scores={sprint-time=499..},tag=!sneaking] run function shriek:gamehandler/shrieker/reducers/sprinter
scoreboard players set @s[scores={sprint-time=500..}] sprint-time 0
