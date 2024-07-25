# Resets the scores back to 0
scoreboard players set @s potsBreak-loot 0
scoreboard players set @s flower_potsBreak-loot 0

# Give the player a rune, (see runes.json under loot_tables folder)
loot give @s loot shriek:runes

# Play a sound
playsound minecraft:block.amethyst_cluster.break master @a ~ ~ ~ 1 2 1

# Resets the score bck to 0
scoreboard players set @s looting 0

# Tags a Flower or Decorated Pot with LOOT
tag @e[type=item,name="Flower Pot"] add LOOT
tag @e[type=item,name="Decorated Pot"] add LOOT

# Runs a function as any item with the tag LOOT
execute as @e[type=item,tag=LOOT] run function shriek:gamehandler/runes/visual