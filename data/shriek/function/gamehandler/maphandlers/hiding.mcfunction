execute as @n[type=interaction,tag=hideSpot] run data remove entity @s interaction
scoreboard players set @s hiding 0
tp @s @n[type=interaction,tag=hideRide,limit=1,sort=nearest]
ride @s mount @n[type=interaction,tag=hideRide,limit=1,sort=nearest]
tag @s add hiding
execute at @s run playsound entity.horse.saddle master @a ~ ~ ~ 1 1 1
effect give @s slowness infinite 3 true

