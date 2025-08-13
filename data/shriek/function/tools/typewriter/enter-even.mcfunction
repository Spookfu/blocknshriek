# Min Value Calculation
# (length / 2) + 1 
execute store result score val1 math run data get storage shriek:typewriter length 1
scoreboard players set val2 math 2

execute store result score min typewriting run function shriek:tools/math/nonmacro/divide
scoreboard players remove min typewriting 1

# Max Value Calculation
# (length / 2) - 1
execute store result score val1 math run data get storage shriek:typewriter length 1
scoreboard players set val2 math 2

execute store result score max typewriting run function shriek:tools/math/nonmacro/divide
scoreboard players add max typewriting 1
