bossbar set minecraft:game_timer visible false
scoreboard players set game gameHandler 0
team leave @a
gamemode adventure @a
effect clear @a
execute as @a run playsound minecraft:ui.toast.challenge_complete master @a ~ ~ ~ 1 0.1 1
title @a times 0t 4s 4t
scoreboard players set @a shrieker-timer 30
scoreboard players set @a shrieker-on 1
scoreboard players set @a shrieker-baser 0
scoreboard players set @a shrieker-dura 0
scoreboard players set @a heartbeat-timer 0
scoreboard players set @a looting 0
scoreboard players set map gameHandler 0
scoreboard players set endInitial_anim gameHandler 0
scoreboard players set endInitial2_anim gameHandler 0
scoreboard players set @a slot1 0
scoreboard players set @a slot2 0
scoreboard players set @a slot3 0
scoreboard players set @a spellTier 0
schedule clear shriek:gamehandler/start/timer
schedule clear shriek:gamehandler/shrieker/timing
bossbar set minecraft:map players @a
bossbar set minecraft:map visible true
bossbar set map name [{"text":"Map Selected | ","color":"white"},{"text":"NONE","color":"red","bold":true}]

bossbar set map value 0
function shriek:gamehandler/start/rteams

clear @a

schedule function shriek:gamehandler/start/endwin_anim 4.5s