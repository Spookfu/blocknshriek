# Keeps all the Handlers continously running as long as the game is active.
execute if score game gameHandler matches 1 run function shriek:gamehandler/baser

# General Stuff
effect give @a minecraft:saturation infinite 1 true

# Hub Stuff
execute at @e[tag=teamers] run particle minecraft:electric_spark ~ ~0.5 ~ 0.2 0.2 0.2 0 1 normal
particle minecraft:small_flame -12.635 -60 40.60 .2 1 .2 0 1
particle minecraft:small_flame -14.50 -57.50 38.50 .3 1 .3 0 1
execute at @e[tag=sculkMap] run particle minecraft:sculk_soul ~ ~.5 ~ 0 0 0 0.1 1
execute at @e[tag=stalkMap] run particle minecraft:infested ~ ~.5 ~ 0 0 0 0.1 1
execute at @e[tag=creakMap] run particle minecraft:trial_spawner_detection_ominous ~ ~.3 ~ 0 0 0 0.1 1

execute if block -14 -60 54 minecraft:oak_button[powered=true] run function shriek:gamehandler/start/reqcheck
execute if block -14 -60 54 minecraft:oak_button[powered=true,face=floor] run setblock -14 -60 54 minecraft:oak_button[powered=false,face=floor]
particle minecraft:end_rod -13.5 -60 66.5 0 10 0 0 1

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

# Player Tagging
tag @a[team=Blue] add Players
tag @a[team=Red] add Players
tag @a[team=Orange] add Players
tag @a[team=Yellow] add Players
tag @a[team=Green] add Players
tag @a[team=Purple] add Players
tag @a[team=Spectators] remove Players

# Team Listing
execute store result score blue teams run team list Blue
execute store result score red teams run team list Red
execute store result score orange teams run team list Orange
execute store result score yellow teams run team list Yellow
execute store result score green teams run team list Green
execute store result score purple teams run team list Purple
execute store result score spectators teams run team list Spectators

# Total Player Counting
scoreboard players set total teams 0
scoreboard players operation total teams += red teams
scoreboard players operation total teams += orange teams
scoreboard players operation total teams += yellow teams
scoreboard players operation total teams += green teams
scoreboard players operation total teams += blue teams
scoreboard players operation total teams += purple teams

# Team Selection Screen
execute as @a[x=-14,y=-59,z=66,distance=..1] run function shriek:gamehandler/hub/team_selection
execute as @a[x=-14,y=-59,z=66,distance=1..,tag=selecting_team] run function shriek:gamehandler/hub/team_selection-exit


# Triggers
execute as @a[scores={shriek.end=1..}] run function shriek:triggers/helper.end
scoreboard players enable @a shriek.end

execute as @a[scores={shriek.start=1..}] run function shriek:triggers/helper.start
scoreboard players enable @a shriek.start

execute as @a[scores={shriek.addloot=1..}] run function shriek:triggers/addloot
scoreboard players enable @a shriek.addloot