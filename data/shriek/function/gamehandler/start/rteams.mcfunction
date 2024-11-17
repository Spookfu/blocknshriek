# Team Selection Functions
advancement revoke @s only shriek:teams-rightc

tag @s add teaming
# Respective Team Scoring, Sounds, and Visual Feedback
playsound minecraft:ui.cartography_table.take_result master @s ~ ~ ~ 0.5 0.1 0.5
particle minecraft:poof ~ ~ ~ 0 1 0 1 50 normal

effect give @s glowing infinite 1 true

execute as @e[type=interaction,tag=teamSpec] on target run team join Spectators


# Unlessers for Blue
execute unless score blue teams matches 1 run execute as @e[type=interaction,tag=teamBlue] on target run team join Blue
execute unless score blue teams matches 1 run execute as @e[type=interaction,tag=teamBlue] on target run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 0.1 1

execute unless score red teams matches 1 run execute as @e[type=interaction,tag=teamRed] on target run team join Red
execute unless score red teams matches 1 run execute as @e[type=interaction,tag=teamRed] on target run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 0.1 1

execute unless score orange teams matches 1 run execute as @e[type=interaction,tag=teamOrange] on target run team join Orange
execute unless score orange teams matches 1 run execute as @e[type=interaction,tag=teamOrange] on target run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 0.1 1

execute unless score yellow teams matches 1 run execute as @e[type=interaction,tag=teamYellow] on target run team join Yellow
execute unless score yellow teams matches 1 run execute as @e[type=interaction,tag=teamYellow] on target run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 0.1 1

execute unless score green teams matches 1 run execute as @e[type=interaction,tag=teamGreen] on target run team join Green
execute unless score green teams matches 1 run execute as @e[type=interaction,tag=teamGreen] on target run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 0.1 1

execute unless score purple teams matches 1 run execute as @e[type=interaction,tag=teamPurple] on target run team join Purple
execute unless score purple teams matches 1 run execute as @e[type=interaction,tag=teamPurple] on target run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 0.1 1

# Full Colors!
execute if score blue teams matches 1 run execute as @e[type=interaction,tag=teamBlue] on target run title @s actionbar ["",{"text":" ᴛᴇᴀᴍ ɪꜱ "},{"text":"FULL","color":"red","bold":true}]
execute if score blue teams matches 1 run execute as @e[type=interaction,tag=teamBlue] on target run playsound minecraft:entity.villager.no master @s ~ ~ ~ 1 1 1

execute if score red teams matches 1 run execute as @e[type=interaction,tag=teamRed] on target run title @s actionbar ["",{"text":" ᴛᴇᴀᴍ ɪꜱ "},{"text":"FULL","color":"red","bold":true}]
execute if score red teams matches 1 run execute as @e[type=interaction,tag=teamRed] on target run playsound minecraft:entity.villager.no master @s ~ ~ ~ 1 1 1

execute if score orange teams matches 1 run execute as @e[type=interaction,tag=teamOrange] on target run title @s actionbar ["",{"text":" ᴛᴇᴀᴍ ɪꜱ "},{"text":"FULL","color":"red","bold":true}]
execute if score orange teams matches 1 run execute as @e[type=interaction,tag=teamOrange] on target run playsound minecraft:entity.villager.no master @s ~ ~ ~ 1 1 1

execute if score yellow teams matches 1 run execute as @e[type=interaction,tag=teamYellow] on target run title @s actionbar ["",{"text":" ᴛᴇᴀᴍ ɪꜱ "},{"text":"FULL","color":"red","bold":true}]
execute if score yellow teams matches 1 run execute as @e[type=interaction,tag=teamYellow] on target run playsound minecraft:entity.villager.no master @s ~ ~ ~ 1 1 1

execute if score green teams matches 1 run execute as @e[type=interaction,tag=teamGreen] on target run title @s actionbar ["",{"text":" ᴛᴇᴀᴍ ɪꜱ "},{"text":"FULL","color":"red","bold":true}]
execute if score green teams matches 1 run execute as @e[type=interaction,tag=teamGreen] on target run playsound minecraft:entity.villager.no master @s ~ ~ ~ 1 1 1

execute if score purple teams matches 1 run execute as @e[type=interaction,tag=teamPurple] on target run title @s actionbar ["",{"text":" ᴛᴇᴀᴍ ɪꜱ "},{"text":"FULL","color":"red","bold":true}]
execute if score purple teams matches 1 run execute as @e[type=interaction,tag=teamPurple] on target run playsound minecraft:entity.villager.no master @s ~ ~ ~ 1 1 1

# Already on Colors!
execute if score blue teams matches 1 run execute as @e[type=interaction,tag=teamBlue] on target run title @s[team=Blue] actionbar ["",{"text":"ʏᴏᴜ'ʀᴇ ᴀʟʀᴇᴀᴅʏ ᴏɴ ᴛᴇᴀᴍ"},{"text":" BLUE","color":"blue","bold":true}]
execute if score red teams matches 1 run execute as @e[type=interaction,tag=teamRed] on target run title @s[team=Red] actionbar ["",{"text":"ʏᴏᴜ'ʀᴇ ᴀʟʀᴇᴀᴅʏ ᴏɴ ᴛᴇᴀᴍ"},{"text":" RED","color":"red","bold":true}]
execute if score orange teams matches 1 run execute as @e[type=interaction,tag=teamOrange] on target run title @s[team=Orange] actionbar ["",{"text":"ʏᴏᴜ'ʀᴇ ᴀʟʀᴇᴀᴅʏ ᴏɴ ᴛᴇᴀᴍ"},{"text":" ORANGE","color":"gold","bold":true}]
execute if score yellow teams matches 1 run execute as @e[type=interaction,tag=teamYellow] on target run title @s[team=Yellow] actionbar ["",{"text":"ʏᴏᴜ'ʀᴇ ᴀʟʀᴇᴀᴅʏ ᴏɴ ᴛᴇᴀᴍ"},{"text":" YELLOW","color":"yellow","bold":true}]
execute if score green teams matches 1 run execute as @e[type=interaction,tag=teamGreen] on target run title @s[team=Green] actionbar ["",{"text":"ʏᴏᴜ'ʀᴇ ᴀʟʀᴇᴀᴅʏ ᴏɴ ᴛᴇᴀᴍ"},{"text":" GREEN","color":"green","bold":true}]
execute if score purple teams matches 1 run execute as @e[type=interaction,tag=teamPurple] on target run title @s[team=Purple] actionbar ["",{"text":"ʏᴏᴜ'ʀᴇ ᴀʟʀᴇᴀᴅʏ ᴏɴ ᴛᴇᴀᴍ"},{"text":" PURPLE","color":"light_purple","bold":true}]

execute as @e[type=interaction,tag=teamSpec] on target run title @s actionbar ["",{"text":"ʏᴏᴜ'ᴠᴇ ᴊᴏɪɴᴇᴅ ᴛᴇᴀᴍ"},{"text":" SPECTATORS","color":"gray","bold":true}]

# Color Teamers here!
execute unless score blue teams matches 1 run execute as @e[type=interaction,tag=teamBlue] on target run title @s actionbar ["",{"text":"ʏᴏᴜ'ᴠᴇ ᴊᴏɪɴᴇᴅ ᴛᴇᴀᴍ"},{"text":" BLUE","color":"blue","bold":true}]
execute unless score red teams matches 1 run execute as @e[type=interaction,tag=teamRed] on target run title @s actionbar ["",{"text":"ʏᴏᴜ'ᴠᴇ ᴊᴏɪɴᴇᴅ ᴛᴇᴀᴍ"},{"text":" RED","color":"red","bold":true}]
execute unless score orange teams matches 1 run execute as @e[type=interaction,tag=teamOrange] on target run title @s actionbar ["",{"text":"ʏᴏᴜ'ᴠᴇ ᴊᴏɪɴᴇᴅ ᴛᴇᴀᴍ"},{"text":" ORANGE","color":"gold","bold":true}]
execute unless score yellow teams matches 1 run execute as @e[type=interaction,tag=teamYellow] on target run title @s actionbar ["",{"text":"ʏᴏᴜ'ᴠᴇ ᴊᴏɪɴᴇᴅ ᴛᴇᴀᴍ"},{"text":" YELLOW","color":"yellow","bold":true}]
execute unless score green teams matches 1 run execute as @e[type=interaction,tag=teamGreen] on target run title @s actionbar ["",{"text":"ʏᴏᴜ'ᴠᴇ ᴊᴏɪɴᴇᴅ ᴛᴇᴀᴍ"},{"text":" GREEN","color":"green","bold":true}]
execute unless score purple teams matches 1 run execute as @e[type=interaction,tag=teamPurple] on target run title @s actionbar ["",{"text":"ʏᴏᴜ'ᴠᴇ ᴊᴏɪɴᴇᴅ ᴛᴇᴀᴍ"},{"text":" Purple","color":"light_purple","bold":true}]
# Keeps trakc of the amount of people in Red and Blue team
execute store result score blue teams run team list Blue
execute store result score red teams run team list Red
execute store result score orange teams run team list Orange
execute store result score yellow teams run team list Yellow
execute store result score green teams run team list Green
execute store result score purple teams run team list Purple

scoreboard players set total teams 0

scoreboard players operation total teams += red teams

scoreboard players operation total teams += orange teams

scoreboard players operation total teams += yellow teams

scoreboard players operation total teams += green teams

scoreboard players operation total teams += blue teams

scoreboard players operation total teams += purple teams
# Taggers!


execute as @e[type=interaction,tag=teamers] run data remove entity @s interaction

tag @s remove teaming

tag @a[team=Blue] add Players
tag @a[team=Red] add Players
tag @a[team=Orange] add Players
tag @a[team=Yellow] add Players
tag @a[team=Green] add Players
tag @a[team=Purple] add Players


execute if score red teams matches 0 run data modify entity @e[limit=1,type=text_display,tag=teamRed] text set value '{"text":"❌ ᴇᴍᴘᴛʏ","color":"red","bold":true}'
execute if score yellow teams matches 0 run data modify entity @e[limit=1,type=text_display,tag=teamYellow] text set value '{"text":"❌ ᴇᴍᴘᴛʏ","color":"red","bold":true}'
execute if score green teams matches 0 run data modify entity @e[limit=1,type=text_display,tag=teamGreen] text set value '{"text":"❌ ᴇᴍᴘᴛʏ","color":"red","bold":true}'
execute if score blue teams matches 0 run data modify entity @e[limit=1,type=text_display,tag=teamBlue] text set value '{"text":"❌ ᴇᴍᴘᴛʏ","color":"red","bold":true}'
execute if score purple teams matches 0 run data modify entity @e[limit=1,type=text_display,tag=teamPurple] text set value '{"text":"❌ ᴇᴍᴘᴛʏ","color":"red","bold":true}'
execute if score orange teams matches 0 run data modify entity @e[limit=1,type=text_display,tag=teamOrange] text set value '{"text":"❌ ᴇᴍᴘᴛʏ","color":"red","bold":true}'

execute if score red teams matches 1.. run data modify entity @e[limit=1,type=text_display,tag=teamRed] text set value '[{"text":"✔ ꜰᴜʟʟ","color":"green","bold":true},{"text":"\\n"},{"selector":"@a[team=Red]"}]'
execute if score yellow teams matches 1.. run data modify entity @e[limit=1,type=text_display,tag=teamYellow] text set value '[{"text":"✔ ꜰᴜʟʟ","color":"green","bold":true},{"text":"\\n"},{"selector":"@a[team=Yellow]"}]'
execute if score green teams matches 1.. run data modify entity @e[limit=1,type=text_display,tag=teamGreen] text set value '[{"text":"✔ ꜰᴜʟʟ","color":"green","bold":true},{"text":"\\n"},{"selector":"@a[team=Green]"}]'
execute if score blue teams matches 1.. run data modify entity @e[limit=1,type=text_display,tag=teamBlue] text set value '[{"text":"✔ ꜰᴜʟʟ","color":"green","bold":true},{"text":"\\n"},{"selector":"@a[team=Blue]"}]'
execute if score purple teams matches 1.. run data modify entity @e[limit=1,type=text_display,tag=teamPurple] text set value '[{"text":"✔ ꜰᴜʟʟ","color":"green","bold":true},{"text":"\\n"},{"selector":"@a[team=Purple]"}]'
execute if score orange teams matches 1.. run data modify entity @e[limit=1,type=text_display,tag=teamOrange] text set value '[{"text":"✔ ꜰᴜʟʟ","color":"green","bold":true},{"text":"\\n"},{"selector":"@a[team=Orange]"}]'