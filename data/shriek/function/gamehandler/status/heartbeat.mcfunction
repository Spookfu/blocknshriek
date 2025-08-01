# If the score heartbeat timer reaches equal to or below 0, play the heartbeat sound
execute if score @s heartbeat-timer matches ..0 run execute at @s run playsound minecraft:entity.warden.heartbeat master @s ~ ~ ~ 1 0.01

# Sets the Frequency of the heartbeats (Measured in Ticks - 20t/1s)
execute if score @s heartbeat-timer matches 0 run execute if items entity @s hotbar.8 minecraft:lime_concrete run scoreboard players set @s heartbeat-timer 75
execute if score @s heartbeat-timer matches 0 run execute if items entity @s hotbar.8 minecraft:yellow_concrete run scoreboard players set @s heartbeat-timer 50
execute if score @s heartbeat-timer matches 0 run execute if items entity @s hotbar.8 minecraft:red_concrete run scoreboard players set @s heartbeat-timer 25

# Resets the timer to the appropriate time if it's above than what the Status indicates as shown above.
execute if score @s heartbeat-timer matches 50.. run execute if items entity @s hotbar.8 minecraft:yellow_concrete run scoreboard players set @s heartbeat-timer 50
execute if score @s heartbeat-timer matches 15.. run execute if items entity @s hotbar.8 minecraft:red_concrete run scoreboard players set @s heartbeat-timer 15

# Continously removes one score/t from heartbeat-timer, unless it is equal to or below 0.
execute unless score @s heartbeat-timer matches ..0 run scoreboard players remove @s heartbeat-timer 1


