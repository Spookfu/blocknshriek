scoreboard players add endWinAnim animate 1

execute if score endWinAnim animate matches 1 run title @a title {"text":"."}
execute if score endWinAnim animate matches 1 run title @a subtitle {"text":"ᴛ","color":"gray"}
execute if score endWinAnim animate matches 2 run title @a title {"text":".."}
execute if score endWinAnim animate matches 2 run title @a subtitle {"text":"ᴛꜱ","color":"gray"}
execute if score endWinAnim animate matches 3 run title @a subtitle {"text":"ᴛʜꜱ","color":"gray"}
execute if score endWinAnim animate matches 4 run title @a subtitle {"text":"ᴛʜɪꜱ","color":"gray"}
execute if score endWinAnim animate matches 5 run title @a title {"text":". ."}
execute if score endWinAnim animate matches 5 run title @a subtitle {"text":"ᴛʜᴇɪꜱ","color":"gray"}
execute if score endWinAnim animate matches 6 run title @a subtitle {"text":"ᴛʜᴇ ɪꜱ","color":"gray"}
execute if score endWinAnim animate matches 7 run title @a subtitle {"text":"ᴛʜᴇ  ɪꜱ","color":"gray"}
execute if score endWinAnim animate matches 8 run title @a title {"text":".  ."}
execute if score endWinAnim animate matches 8 run title @a subtitle {"text":"ᴛʜᴇ ʀ ɪꜱ","color":"gray"}
execute if score endWinAnim animate matches 9 run title @a subtitle {"text":"ᴛʜᴇ ᴡʀ ɪꜱ","color":"gray"}
execute if score endWinAnim animate matches 10 run title @a subtitle {"text":"ᴛʜᴇ ᴡᴇʀ ɪꜱ","color":"gray"}
execute if score endWinAnim animate matches 11 run title @a title {"text":". . ."}
execute if score endWinAnim animate matches 11 run title @a subtitle {"text":"ᴛʜᴇ ᴡɪᴇʀ ɪꜱ","color":"gray"}
execute if score endWinAnim animate matches 12 run title @a subtitle {"text":"ᴛʜᴇ ᴡɪɴᴇʀ ɪꜱ","color":"gray"}
execute if score endWinAnim animate matches 13 run title @a subtitle {"text":"ᴛʜᴇ ᴡɪɴɴᴇʀ ɪꜱ","color":"gray"}


execute if score endWinAnim animate matches 10 run execute at @a run playsound minecraft:entity.warden.sonic_charge master @a ~ ~ ~ 1 0.1 1

execute if score endWinAnim animate matches 14..14 run return run schedule function shriek:gamehandler/end/endwin 2.9s

execute at @a run playsound minecraft:block.piston.contract master @a ~ ~ ~ 1 2 1
schedule function shriek:gamehandler/end/endwinanim 2t