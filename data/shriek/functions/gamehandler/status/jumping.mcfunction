tag @s add jumping
execute as @s[tag=!jumped,tag=!sneaking] run execute at @s run playsound minecraft:block.sculk_sensor.clicking master @a ~ ~ ~ 1 0.1 1
execute as @s[tag=!jumped,tag=!sneaking] run execute at @s run particle minecraft:sculk_charge_pop ~ ~0.8 ~ 0.5 0.8 0.5 0 100 force
tag @s add jumped