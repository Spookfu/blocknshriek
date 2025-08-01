# Team Selection Functions
advancement revoke @s only shriek:teams-rightc

# Respective Team Scoring, Sounds, and Visual Feedback
playsound minecraft:ui.cartography_table.take_result master @s ~ ~ ~ 0.5 1 0.5
particle minecraft:poof ~ ~ ~ 0 1 0 1 50 normal

effect give @s glowing infinite 1 true

execute as @e[type=interaction,tag=teamSpec] on target run team join Spectators

# Join Team
execute unless score blue teams matches 1 run execute as @e[type=interaction,tag=teamBlue] on target run team join Blue
execute unless score blue teams matches 1 run execute as @e[type=interaction,tag=teamBlue] on target run playsound entity.villager.yes master @s ~ ~ ~ 1 1 1

execute unless score red teams matches 1 run execute as @e[type=interaction,tag=teamRed] on target run team join Red
execute unless score red teams matches 1 run execute as @e[type=interaction,tag=teamRed] on target run playsound entity.villager.yes master @s ~ ~ ~ 1 1 1

execute unless score orange teams matches 1 run execute as @e[type=interaction,tag=teamOrange] on target run team join Orange
execute unless score orange teams matches 1 run execute as @e[type=interaction,tag=teamOrange] on target run playsound entity.villager.yes master @s ~ ~ ~ 1 1 1

execute unless score yellow teams matches 1 run execute as @e[type=interaction,tag=teamYellow] on target run team join Yellow
execute unless score yellow teams matches 1 run execute as @e[type=interaction,tag=teamYellow] on target run playsound entity.villager.yes master @s ~ ~ ~ 1 1 1

execute unless score green teams matches 1 run execute as @e[type=interaction,tag=teamGreen] on target run team join Green
execute unless score green teams matches 1 run execute as @e[type=interaction,tag=teamGreen] on target run playsound entity.villager.yes master @s ~ ~ ~ 1 1 1

execute unless score purple teams matches 1 run execute as @e[type=interaction,tag=teamPurple] on target run team join Purple
execute unless score purple teams matches 1 run execute as @e[type=interaction,tag=teamPurple] on target run playsound entity.villager.yes master @s ~ ~ ~ 1 1 1
execute as @e[type=interaction,tag=teamSpec] on target run title @s actionbar ["",{"text":"ʏᴏᴜ'ᴠᴇ ᴊᴏɪɴᴇᴅ ᴛᴇᴀᴍ"},{"text":" SPECTATORS","color":"gray","bold":true}]

execute unless score blue teams matches 1 run execute as @e[type=interaction,tag=teamBlue] on target run title @s actionbar ["",{"text":"ʏᴏᴜ'ᴠᴇ ᴊᴏɪɴᴇᴅ ᴛᴇᴀᴍ"},{"text":" BLUE","color":"blue","bold":true}]
execute unless score red teams matches 1 run execute as @e[type=interaction,tag=teamRed] on target run title @s actionbar ["",{"text":"ʏᴏᴜ'ᴠᴇ ᴊᴏɪɴᴇᴅ ᴛᴇᴀᴍ"},{"text":" RED","color":"red","bold":true}]
execute unless score orange teams matches 1 run execute as @e[type=interaction,tag=teamOrange] on target run title @s actionbar ["",{"text":"ʏᴏᴜ'ᴠᴇ ᴊᴏɪɴᴇᴅ ᴛᴇᴀᴍ"},{"text":" ORANGE","color":"gold","bold":true}]
execute unless score yellow teams matches 1 run execute as @e[type=interaction,tag=teamYellow] on target run title @s actionbar ["",{"text":"ʏᴏᴜ'ᴠᴇ ᴊᴏɪɴᴇᴅ ᴛᴇᴀᴍ"},{"text":" YELLOW","color":"yellow","bold":true}]
execute unless score green teams matches 1 run execute as @e[type=interaction,tag=teamGreen] on target run title @s actionbar ["",{"text":"ʏᴏᴜ'ᴠᴇ ᴊᴏɪɴᴇᴅ ᴛᴇᴀᴍ"},{"text":" GREEN","color":"green","bold":true}]
execute unless score purple teams matches 1 run execute as @e[type=interaction,tag=teamPurple] on target run title @s actionbar ["",{"text":"ʏᴏᴜ'ᴠᴇ ᴊᴏɪɴᴇᴅ ᴛᴇᴀᴍ"},{"text":" Purple","color":"light_purple","bold":true}]

# Full Team
execute if score blue teams matches 1 run execute as @e[type=interaction,tag=teamBlue] on target run title @s actionbar [{"text":"BLUE","color":"blue","bold":true},{"text":" ᴛᴇᴀᴍ ɪꜱ ꜰᴜʟʟ","color":"white","bold":false}]
execute if score blue teams matches 1 run execute as @e[type=interaction,tag=teamBlue] on target run playsound minecraft:entity.villager.no master @s[team=!Blue] ~ ~ ~ 1 1 1

execute if score red teams matches 1 run execute as @e[type=interaction,tag=teamRed] on target run title @s actionbar [{"text":"RED","color":"red","bold":true},{"text":" ᴛᴇᴀᴍ ɪꜱ ꜰᴜʟʟ","color":"white","bold":false}]
execute if score red teams matches 1 run execute as @e[type=interaction,tag=teamRed] on target run playsound minecraft:entity.villager.no master @s[team=!Red] ~ ~ ~ 1 1 1

execute if score orange teams matches 1 run execute as @e[type=interaction,tag=teamOrange] on target run title @s actionbar [{"text":"ORANGE","color":"gold","bold":true},{"text":" ᴛᴇᴀᴍ ɪꜱ ꜰᴜʟʟ","color":"white","bold":false}]
execute if score orange teams matches 1 run execute as @e[type=interaction,tag=teamOrange] on target run playsound minecraft:entity.villager.no master @s[team=!Orange] ~ ~ ~ 1 1 1

execute if score yellow teams matches 1 run execute as @e[type=interaction,tag=teamYellow] on target run title @s actionbar [{"text":"YELLOW","color":"yellow","bold":true},{"text":" ᴛᴇᴀᴍ ɪꜱ ꜰᴜʟʟ","color":"white","bold":false}]
execute if score yellow teams matches 1 run execute as @e[type=interaction,tag=teamYellow] on target run playsound minecraft:entity.villager.no master @s[team=!Yellow] ~ ~ ~ 1 1 1

execute if score green teams matches 1 run execute as @e[type=interaction,tag=teamGreen] on target run title @s actionbar [{"text":"GREEN","color":"green","bold":true},{"text":" ᴛᴇᴀᴍ ɪꜱ ꜰᴜʟʟ","color":"white","bold":false}]
execute if score green teams matches 1 run execute as @e[type=interaction,tag=teamGreen] on target run playsound minecraft:entity.villager.no master @s[team=!Green] ~ ~ ~ 1 1 1

execute if score purple teams matches 1 run execute as @e[type=interaction,tag=teamPurple] on target run title @s actionbar [{"text":"PURPLE","color":"light_purple","bold":true},{"text":" ᴛᴇᴀᴍ ɪꜱ ꜰᴜʟʟ","color":"white","bold":false}]
execute if score purple teams matches 1 run execute as @e[type=interaction,tag=teamPurple] on target run playsound minecraft:entity.villager.no master @s[team=!Purple] ~ ~ ~ 1 1 1

# Already on Team
execute if score blue teams matches 1 run execute as @e[type=interaction,tag=teamBlue] on target run title @s[team=Blue] actionbar ["",{"text":"ʏᴏᴜ'ʀᴇ ᴀʟʀᴇᴀᴅʏ ᴏɴ ᴛᴇᴀᴍ"},{"text":" BLUE","color":"blue","bold":true}]
execute if score red teams matches 1 run execute as @e[type=interaction,tag=teamRed] on target run title @s[team=Red] actionbar ["",{"text":"ʏᴏᴜ'ʀᴇ ᴀʟʀᴇᴀᴅʏ ᴏɴ ᴛᴇᴀᴍ"},{"text":" RED","color":"red","bold":true}]
execute if score orange teams matches 1 run execute as @e[type=interaction,tag=teamOrange] on target run title @s[team=Orange] actionbar ["",{"text":"ʏᴏᴜ'ʀᴇ ᴀʟʀᴇᴀᴅʏ ᴏɴ ᴛᴇᴀᴍ"},{"text":" ORANGE","color":"gold","bold":true}]
execute if score yellow teams matches 1 run execute as @e[type=interaction,tag=teamYellow] on target run title @s[team=Yellow] actionbar ["",{"text":"ʏᴏᴜ'ʀᴇ ᴀʟʀᴇᴀᴅʏ ᴏɴ ᴛᴇᴀᴍ"},{"text":" YELLOW","color":"yellow","bold":true}]
execute if score green teams matches 1 run execute as @e[type=interaction,tag=teamGreen] on target run title @s[team=Green] actionbar ["",{"text":"ʏᴏᴜ'ʀᴇ ᴀʟʀᴇᴀᴅʏ ᴏɴ ᴛᴇᴀᴍ"},{"text":" GREEN","color":"green","bold":true}]
execute if score purple teams matches 1 run execute as @e[type=interaction,tag=teamPurple] on target run title @s[team=Purple] actionbar ["",{"text":"ʏᴏᴜ'ʀᴇ ᴀʟʀᴇᴀᴅʏ ᴏɴ ᴛᴇᴀᴍ"},{"text":" PURPLE","color":"light_purple","bold":true}]
execute if score blue teams matches 1 run execute as @e[type=interaction,tag=teamBlue] on target run playsound entity.villager.trade master @s[team=Blue] ~ ~ ~ 1 1 1
execute if score red teams matches 1 run execute as @e[type=interaction,tag=teamRed] on target run playsound entity.villager.trade master @s[team=Red] ~ ~ ~ 1 1 1
execute if score orange teams matches 1 run execute as @e[type=interaction,tag=teamOrange] on target run playsound entity.villager.trade master @s[team=Orange] ~ ~ ~ 1 1 1
execute if score yellow teams matches 1 run execute as @e[type=interaction,tag=teamYellow] on target run playsound entity.villager.trade master @s[team=Yellow] ~ ~ ~ 1 1 1
execute if score green teams matches 1 run execute as @e[type=interaction,tag=teamGreen] on target run playsound entity.villager.trade master @s[team=Green] ~ ~ ~ 1 1 1
execute if score purple teams matches 1 run execute as @e[type=interaction,tag=teamPurple] on target run playsound entity.villager.trade master @s[team=Purple] ~ ~ ~ 1 1 1

# Remove Interaction Data
execute as @e[type=interaction,tag=teamers] run data remove entity @s interaction

function shriek:gamehandler/hub/team-hud

