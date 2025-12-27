# Debug
execute if score .functionDebug debug matches 1 run tellraw @a [{"text":"[DEBUG]","color":"blue","bold":true},{"text":" Running function hub/teams/updater/join.mcfunction","color":"white","bold":false}]

execute as @s run function shriek:gamehandler/hub/team_iden

tag @s add .mapSelectionVisualPause
execute as @s run schedule function shriek:gamehandler/hub/teams/visualpause 2s

## Teams
# Empty Teams
execute if score red teams matches 0 run data modify entity @e[limit=1,type=text_display,tag=teamRed] text set value [{"text":"Team Red","color":"red"},{"text":"\n"},{"text":"❌ ᴇᴍᴘᴛʏ","color":"red","bold":true}]
execute if score yellow teams matches 0 run data modify entity @e[limit=1,type=text_display,tag=teamYellow] text set value [{"text":"Team Yellow","color":"yellow"},{"text":"\n"},{"text":"❌ ᴇᴍᴘᴛʏ","color":"red","bold":true}]
execute if score green teams matches 0 run data modify entity @e[limit=1,type=text_display,tag=teamGreen] text set value [{"text":"Team Green","color":"green"},{"text":"\n"},{"text":"❌ ᴇᴍᴘᴛʏ","color":"red","bold":true}]
execute if score blue teams matches 0 run data modify entity @e[limit=1,type=text_display,tag=teamBlue] text set value [{"text":"Team Blue","color":"blue"},{"text":"\n"},{"text":"❌ ᴇᴍᴘᴛʏ","color":"red","bold":true}]
execute if score purple teams matches 0 run data modify entity @e[limit=1,type=text_display,tag=teamPurple] text set value [{"text":"Team Purple","color":"dark_purple"},{"text":"\n"},{"text":"❌ ᴇᴍᴘᴛʏ","color":"red","bold":true}]
execute if score orange teams matches 0 run data modify entity @e[limit=1,type=text_display,tag=teamOrange] text set value [{"text":"Team Orange","color":"gold"},{"text":"\n"},{"text":"❌ ᴇᴍᴘᴛʏ","color":"red","bold":true}]

# Filled Teams
execute if score red teams matches 1.. run data modify entity @e[limit=1,type=text_display,tag=teamRed] text set value [{"text":"Team Red","color":"red"},{"text":"\n"},{"text":"✔ ꜰᴜʟʟ - ","color":"green","bold":true},{"selector":"@a[team=Red]"}]
execute if score yellow teams matches 1.. run data modify entity @e[limit=1,type=text_display,tag=teamYellow] text set value [{"text":"Team Yellow","color":"yellow"},{"text":"\n"},{"text":"✔ ꜰᴜʟʟ - ","color":"green","bold":true},{"selector":"@a[team=Yellow]"}]
execute if score green teams matches 1.. run data modify entity @e[limit=1,type=text_display,tag=teamGreen] text set value [{"text":"Team Green","color":"green"},{"text":"\n"},{"text":"✔ ꜰᴜʟʟ - ","color":"green","bold":true},{"selector":"@a[team=Green]"}]
execute if score blue teams matches 1.. run data modify entity @e[limit=1,type=text_display,tag=teamBlue] text set value [{"text":"Team Blue","color":"blue"},{"text":"\n"},{"text":"✔ ꜰᴜʟʟ - ","color":"green","bold":true},{"selector":"@a[team=Blue]"}]
execute if score purple teams matches 1.. run data modify entity @e[limit=1,type=text_display,tag=teamPurple] text set value [{"text":"Team Purple","color":"dark_purple"},{"text":"\n"},{"text":"✔ ꜰᴜʟʟ - ","color":"green","bold":true},{"selector":"@a[team=Purple]"}]
execute if score orange teams matches 1.. run data modify entity @e[limit=1,type=text_display,tag=teamOrange] text set value [{"text":"Team Orange","color":"gold"},{"text":"\n"},{"text":"✔ ꜰᴜʟʟ - ","color":"green","bold":true},{"selector":"@a[team=Orange]"}]

# Spectator Counting
execute if score spectators teams matches 0 run data modify entity @e[limit=1,type=text_display,tag=spectators] text set value [{"text":"Spectators","bold":true,"color":"gray"},{"text":"\n"},{"text":"ᴇᴍᴘᴛʏ","color":"red","bold":true}]
execute if score spectators teams matches 1.. run data modify entity @e[limit=1,type=text_display,tag=spectators] text set value [{"text":"Spectators","bold":true,"color":"gray"},{"text":"\n"},{"score":{"name":"spectators","objective":"teams"},"color":"white"},{"text":" Ghosting","color":"white"}]

# Team Listing
execute store result score blue teams run team list Blue
execute store result score red teams run team list Red
execute store result score orange teams run team list Orange
execute store result score yellow teams run team list Yellow
execute store result score green teams run team list Green
execute store result score purple teams run team list Purple
execute store result score spectators teams run team list Spectators

# Total Player Counting
execute store result score totalPlayers teams run list
execute store result score activePlayers teams run scoreboard players operation totalPlayers teams -= spectators teams 


function shriek:gamehandler/hub/maps/updater
function shriek:gamehandler/hub/teams/updater

