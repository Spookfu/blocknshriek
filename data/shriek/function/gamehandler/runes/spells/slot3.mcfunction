# Intial Rune Roll
execute store result score @s slot3 run random roll 1..7
# Duplicate Rune Preventer
execute store result score @s slot3 run execute if score @s slot3 = @s slot1 run random roll 1..7
execute store result score @s slot3 run execute if score @s slot3 = @s slot1 run function shriek:gamehandler/runes/spells/slot3
execute store result score @s slot3 run execute if score @s slot3 = @s slot2 run random roll 1..7
execute store result score @s slot3 run execute if score @s slot3 = @s slot2 run function shriek:gamehandler/runes/spells/slot3

# Spell Tier Changer
scoreboard players set @s spellTier 3
