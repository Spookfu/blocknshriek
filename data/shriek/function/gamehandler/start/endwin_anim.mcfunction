scoreboard players add endWin_anim gameHandler 1

execute if score endWin_anim gameHandler matches 1 run title @a title {"text":"."}
execute if score endWin_anim gameHandler matches 1 run title @a subtitle {"text":"ᴛ","color":"gray"}
execute if score endWin_anim gameHandler matches 2 run title @a title {"text":".."}
execute if score endWin_anim gameHandler matches 2 run title @a subtitle {"text":"ᴛꜱ","color":"gray"}
execute if score endWin_anim gameHandler matches 3 run title @a subtitle {"text":"ᴛʜꜱ","color":"gray"}
execute if score endWin_anim gameHandler matches 4 run title @a subtitle {"text":"ᴛʜɪꜱ","color":"gray"}
execute if score endWin_anim gameHandler matches 5 run title @a title {"text":". ."}
execute if score endWin_anim gameHandler matches 5 run title @a subtitle {"text":"ᴛʜᴇɪꜱ","color":"gray"}
execute if score endWin_anim gameHandler matches 6 run title @a subtitle {"text":"ᴛʜᴇ ɪꜱ","color":"gray"}
execute if score endWin_anim gameHandler matches 7 run title @a subtitle {"text":"ᴛʜᴇ  ɪꜱ","color":"gray"}
execute if score endWin_anim gameHandler matches 8 run title @a title {"text":".  ."}
execute if score endWin_anim gameHandler matches 8 run title @a subtitle {"text":"ᴛʜᴇ ʀ ɪꜱ","color":"gray"}
execute if score endWin_anim gameHandler matches 9 run title @a subtitle {"text":"ᴛʜᴇ ᴡʀ ɪꜱ","color":"gray"}
execute if score endWin_anim gameHandler matches 10 run title @a subtitle {"text":"ᴛʜᴇ ᴡᴇʀ ɪꜱ","color":"gray"}
execute if score endWin_anim gameHandler matches 11 run title @a title {"text":". . ."}
execute if score endWin_anim gameHandler matches 11 run title @a subtitle {"text":"ᴛʜᴇ ᴡɪᴇʀ ɪꜱ","color":"gray"}
execute if score endWin_anim gameHandler matches 12 run title @a subtitle {"text":"ᴛʜᴇ ᴡɪɴᴇʀ ɪꜱ","color":"gray"}
execute if score endWin_anim gameHandler matches 13 run title @a subtitle {"text":"ᴛʜᴇ ᴡɪɴɴᴇʀ ɪꜱ","color":"gray"}

execute unless score endWin_anim gameHandler matches 13.. run execute at @a run playsound minecraft:block.piston.contract master @a ~ ~ ~ 1 2 1
execute unless score endWin_anim gameHandler matches 13.. run schedule function shriek:gamehandler/start/endwin_anim 2t
execute if score endWin_anim gameHandler matches 13 run execute at @a run playsound minecraft:entity.warden.sonic_charge master @a ~ ~ ~ 1 0.1 1
execute if score endWin_anim gameHandler matches 13..14 run schedule function shriek:gamehandler/start/endwin_anim 3s

execute if score endWin_anim gameHandler matches 14..14 run function shriek:gamehandler/start/endwin