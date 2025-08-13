# Loop Amount Calculation
# (length / 2) + 1
execute store result score val1 math run data get storage shriek:typewriter length 1
scoreboard players set val2 math 2

execute store result score loop typewriting run function shriek:tools/math/nonmacro/divide
scoreboard players add loop typewriting 1