# If the score heartbeat timer reaches equal to or below 0, play the heartbeat sound
execute if score @s hiding-timer matches ..0 run execute at @s run playsound minecraft:entity.warden.sniff master @a ~ ~ ~ 0.1 0.1

# Sets the Frequency of the heartbeats (Measured in Ticks - 20t/1s)
execute if score @s[scores={hiding=..500}] hiding-timer matches ..0 run scoreboard players set @s hiding-timer 200
execute if score @s[scores={hiding=..700}] hiding-timer matches ..0 run scoreboard players set @s hiding-timer 160
execute if score @s[scores={hiding=..900}] hiding-timer matches ..0 run scoreboard players set @s hiding-timer 120
execute if score @s[scores={hiding=..1100}] hiding-timer matches ..0 run scoreboard players set @s hiding-timer 80
execute if score @s[scores={hiding=..1300}] hiding-timer matches ..0 run scoreboard players set @s hiding-timer 40
execute if score @s[scores={hiding=1300..}] hiding-timer matches ..0 run scoreboard players set @s hiding-timer 40

execute if score @s[scores={hiding=..500}] hiding-timer matches ..0 run execute at @s run playsound minecraft:entity.warden.sniff master @a ~ ~ ~ 0.1 0.1
execute if score @s[scores={hiding=..700}] hiding-timer matches ..0 run execute at @s run playsound minecraft:entity.warden.sniff master @a ~ ~ ~ 0.3 0.1
execute if score @s[scores={hiding=..900}] hiding-timer matches ..0 run execute at @s run playsound minecraft:entity.warden.sniff master @a ~ ~ ~ 0.5 0.1
execute if score @s[scores={hiding=..1100}] hiding-timer matches ..0 run execute at @s run playsound minecraft:entity.warden.sniff master @a ~ ~ ~ 0.7 0.1
execute if score @s[scores={hiding=..1300}] hiding-timer matches ..0 run execute at @s run playsound minecraft:entity.warden.sniff master @a ~ ~ ~ 0.9 0.1
execute if score @s[scores={hiding=1300..}] hiding-timer matches ..0 run execute at @s run playsound minecraft:entity.warden.sniff master @a ~ ~ ~ 1.1 0.1

# Continously removes one score/t from hiding-timer, unless it is equal to or below 0.
execute unless score @s hiding-timer matches ..0 run scoreboard players remove @s hiding-timer 1