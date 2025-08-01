# Player Resets
team leave @a
gamemode adventure @a
effect clear @a

execute as @a run playsound minecraft:ui.toast.challenge_complete master @a ~ ~ ~ 1 0.1 1
title @a times 0t 4s 4t

schedule clear shriek:gamehandler/gametime/timer
schedule clear shriek:gamehandler/shrieker/timing

# Scoreboard Resetting
scoreboard players set countdown gameHandler 0
scoreboard players set game gameHandler 0
scoreboard players set map gameHandler 0
scoreboard players set start gameHandler 0
scoreboard players set gameTimer gameHandler 0
scoreboard players set seconds gameHandler 0 
scoreboard players set minutes gameHandler 0
scoreboard players set minuteSeconds gameHandler 0
scoreboard players set timeSegments gameHandler 0
scoreboard players set endAnim animate 0
scoreboard players set endWinAnim animate 0
scoreboard players set startAnim animate 0
scoreboard players set @a heartbeat-timer 0
scoreboard players set @a hiding 0
scoreboard players set @a hiding-timer 0
scoreboard players set @a shrieker-cd 0
scoreboard players set @a shrieker-dura 120
scoreboard players set @a slot1 0
scoreboard players set @a slot2 0
scoreboard players set @a slot3 0
scoreboard players set @a spell 0
scoreboard players set @a spellTier 0

# Bossbar Switch
bossbar set minecraft:game_timer visible false
bossbar set minecraft:map players @a
bossbar set minecraft:map visible true
bossbar set map name [{"text":"Map Selected | ","color":"white"},{"text":"NONE","color":"red","bold":true}]
bossbar set map value 0

# Resets Team Displays
function shriek:gamehandler/hub/teaming

# Resets Inventory
clear @a
give @a feather[item_name=["",{"text":"Quick Step","italic":false}],enchantment_glint_override=true,consumable={can_always_eat:1b,consume_seconds:0.2,animation:brush,sound:"minecraft:entity.pig.saddle",on_consume_effects:[{type:apply_effects,effects:[{id:speed,duration:2000,amplifier:1,show_icon:0b}]}],nutrition:1,saturation:1},use_cooldown={seconds:100}]
schedule function shriek:gamehandler/end/endwinanim 4.5s