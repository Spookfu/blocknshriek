# Intial Rune Roll
execute store result score @s slot2 run random roll 1..7
# Duplicate Rune Preventer
execute store result score @s slot2 run execute if score @s slot2 = @s slot1 run random roll 1..7
execute store result score @s slot2 run execute if score @s slot3 = @s slot1 run function shriek:gamehandler/runes/spells/slot2

# Spell Tier Changer
scoreboard players set @s spellTier 2