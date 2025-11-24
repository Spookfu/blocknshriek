# Debug
execute if score functionDebug debug matches 1 run tellraw @a [{"text":"[DEBUG]","color":"blue","bold":true},{"text":" Running function start/display-map-titledelay.mcfunction","color":"white","bold":false}]

# Start Title Animation cycle.
scoreboard players add mapFinalizing-2 animate 1

title @a title {"text":"FINALIZING MAP","color":"green"}
execute if score mapFinalizing-2 animate matches 1 run title @a subtitle {"text":"ᴘʟᴇᴀsᴇ ᴡᴀɪᴛ.","color":"gray"}
execute if score mapFinalizing-2 animate matches 2 run title @a subtitle {"text":"ᴘʟᴇᴀsᴇ ᴡᴀɪᴛ..","color":"gray"}
execute if score mapFinalizing-2 animate matches 3 run title @a subtitle {"text":"ᴘʟᴇᴀsᴇ ᴡᴀɪᴛ...","color":"gray"}

execute at @a as @a run playsound minecraft:block.vault.insert_item master @a ~ ~ ~ 1 1 1

# Run after Animation Cycle completes
execute unless score mapFinalizing-2 animate matches 3 run return run schedule function shriek:gamehandler/start/display-map/titledelay 2s
scoreboard players set mapFinalizing-2 animate 0

# Tally Map Votes
schedule function shriek:gamehandler/start/tally-map/tally 2s