# Kills Decorated Pot Fillers
kill @e[type=item,name="Barrier"]

# Sets the players score of "looting" to 1 if they break either a Flower Pot or Decorated Pot
execute as @a[scores={flower_potsBreak-loot=1..}] run scoreboard players set @s looting 1
execute as @a[scores={potsBreak-loot=1..}] run scoreboard players set @s looting 1

# If any player has a score of 1 for "looting" run this function.
execute as @a[scores={looting=1}] run function shriek:gamehandler/runes/looter