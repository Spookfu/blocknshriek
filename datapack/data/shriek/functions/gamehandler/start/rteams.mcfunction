# Team Selection Functions
advancement revoke @s only shriek:teams-rightc

tag @s add teaming
# Respective Team Scoring, Sounds, and Visual Feedback
playsound minecraft:ui.cartography_table.take_result master @s ~ ~ ~ 0.5 0.1 0.5
particle minecraft:poof ~ ~ ~ 0 1 0 1 50 normal

effect give @s glowing infinite 1 true

execute as @e[type=interaction,tag=teamSpec] on target run team join Spectators

execute unless score blue teams matches 1 run execute as @e[type=interaction,tag=teamBlue] on target run team join Player1
execute unless score blue teams matches 1 run execute as @e[type=interaction,tag=teamBlue] on target run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 0.1 1

execute unless score red teams matches 1 run execute as @e[type=interaction,tag=teamRed] on target run team join Player2
execute unless score red teams matches 1 run execute as @e[type=interaction,tag=teamRed] on target run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 0.1 1

execute if score blue teams matches 1 run execute as @e[type=interaction,tag=teamBlue] on target run title @s actionbar ["",{"text":"BLUE","color":"blue","bold":true},{"text":" Team is "},{"text":"full","color":"red"}]
execute if score blue teams matches 1 run execute as @e[type=interaction,tag=teamBlue] on target run playsound minecraft:entity.villager.no master @s ~ ~ ~ 1 1 1

execute if score red teams matches 1 run execute as @e[type=interaction,tag=teamRed] on target run title @s actionbar ["",{"text":"RED","color":"red","bold":true},{"text":" Team is "},{"text":"full","color":"red"}]
execute if score red teams matches 1 run execute as @e[type=interaction,tag=teamRed] on target run playsound minecraft:entity.villager.no master @s ~ ~ ~ 1 1 1

execute if score blue teams matches 1 run execute as @e[type=interaction,tag=teamBlue] on target run title @s[team=Player1] actionbar ["",{"text":"You are already on Team"},{"text":" BLUE","color":"blue","bold":true}]
execute if score red teams matches 1 run execute as @e[type=interaction,tag=teamRed] on target run title @s[team=Player2] actionbar ["",{"text":"You are already on Team"},{"text":" RED","color":"red","bold":true}]

execute as @e[type=interaction,tag=teamSpec] on target run title @s actionbar ["",{"text":"You've joined team"},{"text":" SPECTATORS","color":"gray","bold":true}]

execute unless score blue teams matches 1 run execute as @e[type=interaction,tag=teamBlue] on target run title @s actionbar ["",{"text":"You've joined team"},{"text":" BLUE","color":"blue","bold":true}]
execute unless score red teams matches 1 run execute as @e[type=interaction,tag=teamRed] on target run title @s actionbar ["",{"text":"You've joined team"},{"text":" RED","color":"red","bold":true}]

execute as @e[type=interaction,tag=teamers] run data remove entity @s interaction

tag @s remove teaming