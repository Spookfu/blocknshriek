# Kills Decorated Pot Fillers
kill @e[type=item,name="Barrier"]

# Sets the players score of "looting" to 1 if they break either a Flower Pot or Decorated Pot
scoreboard players set @s[scores={flower_potsBreak-loot=1..}] looting 1
scoreboard players set @s[scores={potsBreak-loot=1..}] looting 1

# If any player has a score of 1 for "looting" run this function.
execute as @s[scores={looting=1}] run function shriek:gamehandler/runes/looter