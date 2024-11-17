execute as @a run playsound minecraft:block.bell.use master @s ~ ~ ~ 1 0.1 1
scoreboard players remove timeSegments gameHandler 1

execute if score timeSegments gameHandler matches 4 run tellraw @a ["[🔔] ",{"text":"5 Minutes","color":"red","bold":true}, {"text":" remaining!","color":"white"}]
execute if score timeSegments gameHandler matches 4 run execute as @a run playsound minecraft:block.bell.resonate master @s ~ ~ ~ 1 0.1 1