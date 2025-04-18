scoreboard players add startAnim animate 1
title @a title {"text":" . . . "}
title @a times 0t 2t 4t
execute if score startAnim animate matches 1 run title @a subtitle "ᴛ"
execute if score startAnim animate matches 2 run title @a subtitle "ᴛɴ"
execute if score startAnim animate matches 3 run title @a subtitle "ᴛʜɴ"
execute if score startAnim animate matches 4 run title @a subtitle "ᴛʜɪɴ"
execute if score startAnim animate matches 5 run title @a subtitle "ᴛʜᴇɪɴ"
execute if score startAnim animate matches 6 run title @a subtitle "ᴛʜᴇ ɪɴ"
execute if score startAnim animate matches 7 run title @a subtitle "ᴛʜᴇ  ɪɴ"
execute if score startAnim animate matches 8 run title @a subtitle "ᴛʜᴇ ᴛ ɪɴ"
execute if score startAnim animate matches 9 run title @a subtitle "ᴛʜᴇ ɢᴛ ɪɴ"
execute if score startAnim animate matches 10 run title @a subtitle "ᴛʜᴇ ɢʀᴛ ɪɴ"
execute if score startAnim animate matches 11 run title @a subtitle "ᴛʜᴇ ɢᴀʀᴛ ɪɴ"
execute if score startAnim animate matches 12 run title @a subtitle "ᴛʜᴇ ɢᴀᴀʀᴛ ɪɴ"
execute if score startAnim animate matches 13 run title @a subtitle "ᴛʜᴇ ɢᴀᴍᴀʀᴛ ɪɴ"
execute if score startAnim animate matches 14 run title @a subtitle "ᴛʜᴇ ɢᴀᴍᴛᴀʀᴛ ɪɴ"
execute if score startAnim animate matches 15 run title @a subtitle "ᴛʜᴇ ɢᴀᴍᴇᴛᴀʀᴛ ɪɴ"
execute if score startAnim animate matches 16 run title @a subtitle "ᴛʜᴇ ɢᴀᴍᴇꜱᴛᴀʀᴛ ɪɴ"
execute if score startAnim animate matches 17 run title @a subtitle "ᴛʜᴇ ɢᴀᴍᴇ ꜱᴛᴀʀᴛ ɪɴ"
execute if score startAnim animate matches 18 run title @a subtitle "ᴛʜᴇ ɢᴀᴍᴇ  ꜱᴛᴀʀᴛ ɪɴ"
execute if score startAnim animate matches 19 run title @a subtitle "ᴛʜᴇ ɢᴀᴍᴇ ᴡ ꜱᴛᴀʀᴛ ɪɴ"
execute if score startAnim animate matches 20 run title @a subtitle "ᴛʜᴇ ɢᴀᴍᴇ ᴡʟ ꜱᴛᴀʀᴛ ɪɴ"
execute if score startAnim animate matches 21 run title @a subtitle "ᴛʜᴇ ɢᴀᴍᴇ ᴡɪʟ ꜱᴛᴀʀᴛ ɪɴ"
execute if score startAnim animate matches 22 run title @a subtitle "ᴛʜᴇ ɢᴀᴍᴇ ᴡɪʟʟ ꜱᴛᴀʀᴛ ɪɴ"

execute at @a run playsound minecraft:block.piston.contract master @a ~ ~ ~ 1 2 1

execute unless score startAnim animate matches 22 run return run schedule function shriek:gamehandler/start/startanim 2t

scoreboard players set countdown gameHandler 5
function shriek:gamehandler/start/startcountdown