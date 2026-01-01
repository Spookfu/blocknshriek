# Debug
execute if score .functionDebug debug matches 1 run tellraw @a [{"text":"[DEBUG]","color":"blue","bold":true},{"text":" Running function /hub/colors/mapping.mcfunction","color":"white","bold":false}]

# Team Selection Functions
advancement revoke @s only shriek:interaction-colors

# Respective Team Scoring, Sounds, and Visual Feedback
playsound minecraft:ui.cartography_table.take_result master @s ~ ~ ~ 0.5 1 0.5
particle minecraft:poof ~ ~ ~ 0 1 0 1 50 normal

effect give @s glowing infinite 1 true

execute as @e[type=interaction,tag=redColorInteraction] on target run function shriek:gamehandler/hub/colors/shared/checks {"team":"Red","color":"red","text":"RED","score":"red"}
execute as @e[type=interaction,tag=orangeColorInteraction] on target run function shriek:gamehandler/hub/colors/shared/checks {"team":"Orange","color":"#FC7546","text":"ORANGE","score":"orange"}
execute as @e[type=interaction,tag=yellowColorInteraction] on target run function shriek:gamehandler/hub/colors/shared/checks {"team":"Yellow","color":"yellow","text":"YELLOW","score":"yellow"}
execute as @e[type=interaction,tag=greenColorInteraction] on target run function shriek:gamehandler/hub/colors/shared/checks {"team":"Green","color":"green","text":"GREEN","score":"green"}
execute as @e[type=interaction,tag=blueColorInteraction] on target run function shriek:gamehandler/hub/colors/shared/checks {"team":"Blue","color":"blue","text":"BLUE","score":"blue"}
execute as @e[type=interaction,tag=purpleColorInteraction] on target run function shriek:gamehandler/hub/colors/shared/checks {"team":"Purple","color":"light_purple","text":"PURPLE","score":"purple"}
execute as @e[type=interaction,tag=spectatorColorInteraction] on target run function shriek:gamehandler/hub/colors/shared/checks {"team":"Spectators","color":"gray","text":"SPECTATORS","score":"spectators"}