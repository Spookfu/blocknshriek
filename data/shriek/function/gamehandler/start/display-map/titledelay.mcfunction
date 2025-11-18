scoreboard players add mapFinalizing-2 animate 1

title @a title {"text":"FINALIZING MAP","color":"green"}
execute if score mapFinalizing-2 animate matches 1 run title @a subtitle {"text":"ᴘʟᴇᴀsᴇ ᴡᴀɪᴛ.","color":"gray"}
execute if score mapFinalizing-2 animate matches 2 run title @a subtitle {"text":"ᴘʟᴇᴀsᴇ ᴡᴀɪᴛ..","color":"gray"}
execute if score mapFinalizing-2 animate matches 3 run title @a subtitle {"text":"ᴘʟᴇᴀsᴇ ᴡᴀɪᴛ...","color":"gray"}

execute at @a run playsound minecraft:block.vault.insert_item master @a ~ ~ ~ 1 1 1

execute unless score mapFinalizing-2 animate matches 3 run return run schedule function shriek:gamehandler/start/display-map/titledelay 2s
scoreboard players set mapFinalizing-2 animate 0

schedule function shriek:gamehandler/start/tally-map/tally 2s