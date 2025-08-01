# Map Selection Functions
advancement revoke @s only shriek:mapping-rightc

tag @s add mapping

# Respective Map Scoring, Sounds, and Visual Feedback
execute at @a run playsound minecraft:ui.cartography_table.take_result master @a ~ ~ ~ 1 0.1 1
execute at @a run particle minecraft:poof ~ ~ ~ 0 1 0 1 50 normal
execute at @a run playsound minecraft:entity.experience_orb.pickup master @a ~ ~ ~ 1 0.1 1

execute as @e[type=interaction,tag=sculkMap] on target run scoreboard players set map gameHandler 1
execute as @e[type=interaction,tag=stalkMap] on target run scoreboard players set map gameHandler 2
execute as @e[type=interaction,tag=creakMap] on target run scoreboard players set map gameHandler 3

execute as @e[type=interaction,tag=sculkMap] on target run execute at @a run playsound minecraft:entity.warden.sonic_boom master @a ~ ~ ~ 1 0.1 1
execute as @e[type=interaction,tag=stalkMap] on target run execute at @a run playsound minecraft:entity.skeleton_horse.death master @a ~ ~ ~ 1 0.1 1
execute as @e[type=interaction,tag=creakMap] on target run execute at @a run playsound minecraft:block.trial_spawner.ambient_ominous master @a ~ ~ ~ 1 0.1 1

execute as @e[type=interaction,tag=sculkMap] on target run title @s actionbar ["",{"text":"ʏᴏᴜ'ᴠᴇ ꜱᴇʟᴇᴄᴛᴇᴅ ᴛʜᴇ ᴍᴀᴘ: "},{"text":"SCULKED INSTITUTE","color":"dark_aqua","bold":true}]
execute as @e[type=interaction,tag=stalkMap] on target run title @s actionbar ["",{"text":"ʏᴏᴜ'ᴠᴇ ꜱᴇʟᴇᴄᴛᴇᴅ ᴛʜᴇ ᴍᴀᴘ: "},{"text":"STALKING FOREST","color":"gray","bold":true}]
execute as @e[type=interaction,tag=creakMap] on target run title @s actionbar ["",{"text":"ʏᴏᴜ'ᴠᴇ ꜱᴇʟᴇᴄᴛᴇᴅ ᴛʜᴇ ᴍᴀᴘ: "},{"text":"CREAKING DUNGEON","color":"red","bold":true}]

execute as @e[type=interaction,tag=mappers] run data remove entity @s interaction

execute if score map gameHandler matches 1 run bossbar set map name [{"text":"Map Selected | ","color":"white"},{"text":"SCULKED INSTITUTE","color":"dark_aqua","bold":true}]
execute if score map gameHandler matches 2 run bossbar set map name [{"text":"Map Selected | ","color":"white"},{"text":"STALKING FOREST","color":"gray","bold":true}]
execute if score map gameHandler matches 3 run bossbar set map name [{"text":"Map Selected | ","color":"white"},{"text":"CREAKING DUNGEON","color":"red","bold":true}]
execute if score map gameHandler matches 1 run bossbar set map value 1
execute if score map gameHandler matches 2 run bossbar set map value 2
execute if score map gameHandler matches 3 run bossbar set map value 3
tag @s remove mappin
setblock -20 -61 43 minecraft:redstone_lamp[lit=false]
setblock -14 -61 43 minecraft:redstone_lamp[lit=false]
setblock -8 -61 43 minecraft:redstone_lamp[lit=false]

execute if score map gameHandler matches 1 run setblock -20 -61 43 minecraft:redstone_lamp[lit=true]
execute if score map gameHandler matches 2 run setblock -14 -61 43 minecraft:redstone_lamp[lit=true]
execute if score map gameHandler matches 3 run setblock -8 -61 43 minecraft:redstone_lamp[lit=true]