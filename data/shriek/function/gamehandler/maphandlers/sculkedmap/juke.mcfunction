execute as @e[type=interaction,tag=juke] run data remove entity @s attack
execute if score juke sculkedMap matches 0.. run execute at @e[type=minecraft:interaction,tag=juke] run particle minecraft:note ~ ~1 ~ 0 0 0 1 1 normal

execute if score juke sculkedMap matches 0 run execute at @e[type=minecraft:interaction,tag=juke] run playsound minecraft:ui.loom.take_result master @a ~ ~ ~ 1 0.1 1
execute if score juke sculkedMap matches 0 run stopsound @a master minecraft:music_disc.creator_music_box
execute if score juke sculkedMap matches 0 run execute at @e[type=minecraft:interaction,tag=juke] run playsound minecraft:music_disc.creator_music_box master @a ~ ~ ~ 1 0.5 1
execute if score juke sculkedMap matches 0 run execute as @e[type=interaction,tag=juke] run data remove entity @s interaction
execute if score juke sculkedMap matches 0 run tellraw @a {"text":" ","color":"gray"}
execute if score juke sculkedMap matches 0 run tellraw @a {"text":" ","color":"gray"}
execute if score juke sculkedMap matches 0 run tellraw @a {"text":"A music disc was played...","color":"gray"}
execute if score juke sculkedMap matches 0 run tellraw @a {"text":" ","color":"gray"}
execute if score juke sculkedMap matches 0 run tellraw @a {"text":" ","color":"gray"}
scoreboard players set juke sculkedMap 1
    schedule function shriek:gamehandler/maphandlers/sculkedmap/juke 3s
