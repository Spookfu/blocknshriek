stopsound @a master minecraft:music_disc.creator_music_box
execute as @e[type=interaction,tag=juke] run data remove entity @s attack
execute as @e[type=interaction,tag=juke] run data remove entity @s interaction
execute at @e[type=minecraft:interaction,tag=juke] run playsound block.glass.break master @a ~ ~ ~ 3 0.1 1
scoreboard players set juke sculkedMap 0
schedule clear shriek:gamehandler/maphandlers/sculkedmap/juke