# /tellraw @a {"storage":"shriek:typewriter","nbt":"string.result","color":"red"}
# Data Prep
scoreboard players set max typewriting 0
scoreboard players set min typewriting 0
scoreboard players set num typewriting 0

# Odd/Even Calculation > Corresponding Function to prep for Enter type
execute if score num typewriting matches 0 run function shriek:tools/typewriter/enter-even
execute if score num typewriting matches 1 run function shriek:tools/typewriter/enter-odd