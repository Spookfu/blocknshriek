# Resets Player
stopsound @s
tag @s remove selecting_team
effect clear @s blindness
effect clear @s darkness
effect clear @s slowness
clear @s minecraft:nether_star
clear @s white_dye
title @s clear
title @s times 0t 4s 1s
title @a actionbar {"text":"ᴛᴇᴀᴍ ᴡᴀꜱ ɴᴏᴛ ᴄʜᴀɴɢᴇᴅ"}

execute at @s[tag=considering] run particle totem_of_undying ~ ~ ~ 0 0 0 1 100 normal
execute at @s[tag=considering] run playsound minecraft:entity.zombie.infect master @s ~ ~ ~ 1 0.1 1
execute at @s[tag=considering] run playsound minecraft:item.trident.thunder master @s ~ ~ ~ 0.5 0.1 0
execute at @s[tag=considering] run playsound block.beacon.power_select master @s ~ ~ ~ 0.5 0.1 0
execute at @s run particle minecraft:smoke ~ ~ ~ 0 0 0 1 100 normal
execute at @s[tag=!considering] run playsound block.beacon.deactivate master @s ~ ~ ~ 1 0.1 1



execute if entity @s[team=Red-Consider] run title @s actionbar ["",{"text":"ʏᴏᴜ'ᴠᴇ ᴊᴏɪɴᴇᴅ ᴛᴇᴀᴍ"},{"text":" RED","color":"red","bold":true}]
execute if entity @s[team=Orange-Consider] run title @s actionbar ["",{"text":"ʏᴏᴜ'ᴠᴇ ᴊᴏɪɴᴇᴅ ᴛᴇᴀᴍ"},{"text":" ORANGE","color":"gold","bold":true}]
execute if entity @s[team=Yellow-Consider] run title @s actionbar ["",{"text":"ʏᴏᴜ'ᴠᴇ ᴊᴏɪɴᴇᴅ ᴛᴇᴀᴍ"},{"text":" YELLOW","color":"yellow","bold":true}]
execute if entity @s[team=Green-Consider] run title @s actionbar ["",{"text":"ʏᴏᴜ'ᴠᴇ ᴊᴏɪɴᴇᴅ ᴛᴇᴀᴍ"},{"text":" GREEN","color":"green","bold":true}]
execute if entity @s[team=Blue-Consider] run title @s actionbar ["",{"text":"ʏᴏᴜ'ᴠᴇ ᴊᴏɪɴᴇᴅ ᴛᴇᴀᴍ"},{"text":" BLUE","color":"blue","bold":true}]
execute if entity @s[team=Purple-Consider] run title @s actionbar ["",{"text":"ʏᴏᴜ'ᴠᴇ ᴊᴏɪɴᴇᴅ ᴛᴇᴀᴍ"},{"text":" Purple","color":"light_purple","bold":true}]
execute if entity @s[team=Spectators-Consider] run title @s actionbar ["",{"text":"ʏᴏᴜ'ᴠᴇ ᴊᴏɪɴᴇᴅ ᴛᴇᴀᴍ"},{"text":" SPECTATORS","color":"gray","bold":true}]

execute if entity @s[team=Red-Consider] run title @s title {"text":"\ue000"}
execute if entity @s[team=Orange-Consider] run title @s title {"text":"\ue001"}
execute if entity @s[team=Yellow-Consider] run title @s title {"text":"\ue002"}
execute if entity @s[team=Green-Consider] run title @s title {"text":"\ue003"}
execute if entity @s[team=Blue-Consider] run title @s title {"text":"\ue004"}
execute if entity @s[team=Purple-Consider] run title @s title {"text":"\ue005"}
execute if entity @s[team=Spectators-Consider] run title @s title {"text":"\ue006"}

execute if entity @s[team=Red-Consider] run team join Red
execute if entity @s[team=Orange-Consider] run team join Orange
execute if entity @s[team=Yellow-Consider] run team join Yellow
execute if entity @s[team=Green-Consider] run team join Green
execute if entity @s[team=Blue-Consider] run team join Blue
execute if entity @s[team=Purple-Consider] run team join Purple
execute if entity @s[team=Spectators-Consider] run team join Spectators

tag @s remove Red
tag @s remove Orange
tag @s remove Yellow
tag @s remove Green
tag @s remove Blue
tag @s remove Purple
tag @s remove Spectators
tag @s remove considering