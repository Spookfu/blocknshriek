# Debug
execute if score functionDebug debug matches 1 run tellraw @a [{"text":"[DEBUG]","color":"blue","bold":true},{"text":" Running function start/display-game/title.mcfunction","color":"white","bold":false}]

# Pre-caution to stop Duel-Music. (Plan to make Custom)
stopsound @a * music_disc.precipice

# Map Tag Removals
tag @a remove chosen_dungeon
tag @a remove chosen_sculk
tag @a remove chosen_stalking

# Start Title Animation cycle
scoreboard players add start animate 1

title @a title {"text":" . . . "}
execute if score start animate matches 1 run title @a subtitle "ᴛ"
execute if score start animate matches 2 run title @a subtitle "ᴛɴ"
execute if score start animate matches 3 run title @a subtitle "ᴛʜɴ"
execute if score start animate matches 4 run title @a subtitle "ᴛʜɪɴ"
execute if score start animate matches 5 run title @a subtitle "ᴛʜᴇɪɴ"
execute if score start animate matches 6 run title @a subtitle "ᴛʜᴇ ɪɴ"
execute if score start animate matches 7 run title @a subtitle "ᴛʜᴇ  ɪɴ"
execute if score start animate matches 8 run title @a subtitle "ᴛʜᴇ ᴛ ɪɴ"
execute if score start animate matches 9 run title @a subtitle "ᴛʜᴇ ɢᴛ ɪɴ"
execute if score start animate matches 10 run title @a subtitle "ᴛʜᴇ ɢʀᴛ ɪɴ"
execute if score start animate matches 11 run title @a subtitle "ᴛʜᴇ ɢᴀʀᴛ ɪɴ"
execute if score start animate matches 12 run title @a subtitle "ᴛʜᴇ ɢᴀᴀʀᴛ ɪɴ"
execute if score start animate matches 13 run title @a subtitle "ᴛʜᴇ ɢᴀᴍᴀʀᴛ ɪɴ"
execute if score start animate matches 14 run title @a subtitle "ᴛʜᴇ ɢᴀᴍᴛᴀʀᴛ ɪɴ"
execute if score start animate matches 15 run title @a subtitle "ᴛʜᴇ ɢᴀᴍᴇᴛᴀʀᴛ ɪɴ"
execute if score start animate matches 16 run title @a subtitle "ᴛʜᴇ ɢᴀᴍᴇꜱᴛᴀʀᴛ ɪɴ"
execute if score start animate matches 17 run title @a subtitle "ᴛʜᴇ ɢᴀᴍᴇ ꜱᴛᴀʀᴛ ɪɴ"
execute if score start animate matches 18 run title @a subtitle "ᴛʜᴇ ɢᴀᴍᴇ  ꜱᴛᴀʀᴛ ɪɴ"
execute if score start animate matches 19 run title @a subtitle "ᴛʜᴇ ɢᴀᴍᴇ ᴡ ꜱᴛᴀʀᴛ ɪɴ"
execute if score start animate matches 20 run title @a subtitle "ᴛʜᴇ ɢᴀᴍᴇ ᴡʟ ꜱᴛᴀʀᴛ ɪɴ"
execute if score start animate matches 21 run title @a subtitle "ᴛʜᴇ ɢᴀᴍᴇ ᴡɪʟ ꜱᴛᴀʀᴛ ɪɴ"
execute if score start animate matches 22 run title @a subtitle "ᴛʜᴇ ɢᴀᴍᴇ ᴡɪʟʟ ꜱᴛᴀʀᴛ ɪɴ"

execute at @a run playsound minecraft:block.piston.contract master @a ~ ~ ~ 1 2 1

# Run after Animation Cycle completes
execute unless score start animate matches 22 run return run schedule function shriek:gamehandler/start/display-game/title 2t
scoreboard players set start animate 0


# Runs Countdown Cycle to start Game.
scoreboard players set startCountdown animate 5
function shriek:gamehandler/start/display-game/countdown