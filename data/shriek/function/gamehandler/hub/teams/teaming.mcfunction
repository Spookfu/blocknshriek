# Team Selection Functions
advancement revoke @s only shriek:teams-rightc

# Respective Team Scoring, Sounds, and Visual Feedback
playsound minecraft:ui.cartography_table.take_result master @s ~ ~ ~ 0.5 1 0.5
particle minecraft:poof ~ ~ ~ 0 1 0 1 50 normal

effect give @s glowing infinite 1 true

execute as @e[type=interaction,tag=teamRed] on target run function shriek:gamehandler/hub/teams/shared/checks {"team":"Red","color":"red","text":"RED","score":"red"}
execute as @e[type=interaction,tag=teamOrange] on target run function shriek:gamehandler/hub/teams/shared/checks {"team":"Orange","color":"#FC7546","text":"ORANGE","score":"orange"}
execute as @e[type=interaction,tag=teamYellow] on target run function shriek:gamehandler/hub/teams/shared/checks {"team":"Yellow","color":"yellow","text":"YELLOW","score":"yellow"}
execute as @e[type=interaction,tag=teamGreen] on target run function shriek:gamehandler/hub/teams/shared/checks {"team":"Green","color":"green","text":"GREEN","score":"green"}
execute as @e[type=interaction,tag=teamBlue] on target run function shriek:gamehandler/hub/teams/shared/checks {"team":"Blue","color":"blue","text":"BLUE","score":"blue"}
execute as @e[type=interaction,tag=teamPurple] on target run function shriek:gamehandler/hub/teams/shared/checks {"team":"Purple","color":"light_purple","text":"PURPLE","score":"purple"}
execute as @e[type=interaction,tag=teamSpec] on target run function shriek:gamehandler/hub/teams/shared/checks {"team":"Spectators","color":"gray","text":"SPECTATORS","score":"spectators"}