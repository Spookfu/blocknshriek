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
give @a feather[custom_name='["",{"text":"Quick Step","italic":false}]',enchantment_glint_override=true,consumable={can_always_eat:1b,consume_seconds:0.2,animation:brush,sound:"minecraft:entity.pig.saddle",on_consume_effects:[{type:apply_effects,effects:[{id:speed,duration:2000,amplifier:1,show_icon:0b}]}],nutrition:1,saturation:1},use_cooldown={seconds:100}]
schedule function shriek:gamehandler/start/endwin_anim 4.5s