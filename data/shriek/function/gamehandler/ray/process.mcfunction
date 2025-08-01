# Initialize steps
scoreboard players set @s steps 64

# Move the ray
execute at @s run function shriek:gamehandler/ray/move

# Check if the ray hit a Creeper
execute as @s[tag=hitCreeper] at @s run function shriek:gamehandler/ray/hit
execute as @s[tag=hitBlock] at @s run function shriek:gamehandler/ray/hit

# Destroy the ray (very important!)
kill @s
