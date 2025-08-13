# Feedback
$title @s actionbar [{"text":"Inputted String","color":"gray","bold":true},{"text":" | ","color":"white","bold":false},{"text":"$(string)","color":"blue","bold":false}]

# User Data Input for String and String Length
$data modify storage shriek:typewriter string set value $(string)
execute store result storage shriek:typewriter length int 1 run data get storage shriek:typewriter string

# Corresponding Data Prep Based on Type
execute if data storage shriek:typewriter {type:"enter"} run function shriek:tools/typewriter/enter
execute if data storage shriek:typewriter {type:"exit"} run function shriek:tools/typewriter/exit

# Odd/Even Calculation
execute store result score val1 math run data get storage shriek:typewriter length
scoreboard players set val2 math 2
execute store result score num typewriting run function shriek:tools/math/nonmacro/mod

# Looping Amount Calculation
execute if score num typewriting matches 0 run function shriek:tools/typewriter/loop-even
execute if score num typewriting matches 1 run function shriek:tools/typewriter/loop-odd


