# Debug
execute if score functionDebug debug matches 1 run tellraw @a [{"text":"[DEBUG]","color":"blue","bold":true},{"text":" Running function start/display-map/title.mcfunction","color":"white","bold":false}]

# Start Title Animation cycle
scoreboard players add mapFinalizing animate 1

execute if score mapFinalizing animate matches 1 run title @a title {"text":"ZI","color":"green","bold":true}
execute if score mapFinalizing animate matches 2 run title @a title {"text":"IZIN","color":"green","bold":true}
execute if score mapFinalizing animate matches 3 run title @a title {"text":"LIZING","color":"green","bold":true}
execute if score mapFinalizing animate matches 4 run title @a title {"text":"ALIZING ","color":"green","bold":true}
execute if score mapFinalizing animate matches 5 run title @a title {"text":"NALIZING M","color":"green","bold":true}
execute if score mapFinalizing animate matches 6 run title @a title {"text":"INALIZING MA ","color":"green","bold":true}
execute if score mapFinalizing animate matches 7 run title @a title {"text":"FINALIZING MAP","color":"green","bold":true}

execute if score mapFinalizing animate matches 8 run title @a subtitle {"text":"ᴡ","color":"gray"}
execute if score mapFinalizing animate matches 9 run title @a subtitle {"text":"ᴇ ᴡᴀ","color":"gray"}
execute if score mapFinalizing animate matches 10 run title @a subtitle {"text":"sᴇ ᴡᴀɪ","color":"gray"}
execute if score mapFinalizing animate matches 11 run title @a subtitle {"text":"ᴀsᴇ ᴡᴀɪᴛ","color":"gray"}
execute if score mapFinalizing animate matches 12 run title @a subtitle {"text":"ᴇᴀsᴇ ᴡᴀɪᴛ.","color":"gray"}
execute if score mapFinalizing animate matches 13 run title @a subtitle {"text":"ʟᴇᴀsᴇ ᴡᴀɪᴛ..","color":"gray"}
execute if score mapFinalizing animate matches 14 run title @a subtitle {"text":"ᴘʟᴇᴀsᴇ ᴡᴀɪᴛ...","color":"gray"}

execute at @a as @a run playsound minecraft:block.piston.extend master @s ~ ~ ~ 1 1 1

# Run after Title Animation Cycle completes
execute unless score mapFinalizing animate matches 14 run return run schedule function shriek:gamehandler/start/display-map/title 2t
scoreboard players set mapFinalizing animate 0

schedule function shriek:gamehandler/start/display-map/titledelay 1s










