execute store result score @s slot1 run random roll 1..7
execute as @a if items entity @s hotbar.0 #minecraft:trim_templates[minecraft:custom_data={movement:1, rune:1}] run scoreboard players set @s slot1 1

scoreboard players set @s spellTier 1