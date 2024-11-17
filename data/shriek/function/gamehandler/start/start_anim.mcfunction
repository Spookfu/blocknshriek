scoreboard players add start_anim gameHandler 1
title @a title {"text":" . . . "}
title @a times 0t 2t 4t
execute if score start_anim gameHandler matches 1 run title @a subtitle "ᴛ"
execute if score start_anim gameHandler matches 2 run title @a subtitle "ᴛɴ"
execute if score start_anim gameHandler matches 3 run title @a subtitle "ᴛʜɴ"
execute if score start_anim gameHandler matches 4 run title @a subtitle "ᴛʜɪɴ"
execute if score start_anim gameHandler matches 5 run title @a subtitle "ᴛʜᴇɪɴ"
execute if score start_anim gameHandler matches 6 run title @a subtitle "ᴛʜᴇ ɪɴ"
execute if score start_anim gameHandler matches 7 run title @a subtitle "ᴛʜᴇ  ɪɴ"
execute if score start_anim gameHandler matches 8 run title @a subtitle "ᴛʜᴇ ᴛ ɪɴ"
execute if score start_anim gameHandler matches 9 run title @a subtitle "ᴛʜᴇ ɢᴛ ɪɴ"
execute if score start_anim gameHandler matches 10 run title @a subtitle "ᴛʜᴇ ɢʀᴛ ɪɴ"
execute if score start_anim gameHandler matches 11 run title @a subtitle "ᴛʜᴇ ɢᴀʀᴛ ɪɴ"
execute if score start_anim gameHandler matches 12 run title @a subtitle "ᴛʜᴇ ɢᴀᴀʀᴛ ɪɴ"
execute if score start_anim gameHandler matches 13 run title @a subtitle "ᴛʜᴇ ɢᴀᴍᴀʀᴛ ɪɴ"
execute if score start_anim gameHandler matches 14 run title @a subtitle "ᴛʜᴇ ɢᴀᴍᴛᴀʀᴛ ɪɴ"
execute if score start_anim gameHandler matches 15 run title @a subtitle "ᴛʜᴇ ɢᴀᴍᴇᴛᴀʀᴛ ɪɴ"
execute if score start_anim gameHandler matches 16 run title @a subtitle "ᴛʜᴇ ɢᴀᴍᴇꜱᴛᴀʀᴛ ɪɴ"
execute if score start_anim gameHandler matches 17 run title @a subtitle "ᴛʜᴇ ɢᴀᴍᴇ ꜱᴛᴀʀᴛ ɪɴ"
execute if score start_anim gameHandler matches 18 run title @a subtitle "ᴛʜᴇ ɢᴀᴍᴇ  ꜱᴛᴀʀᴛ ɪɴ"
execute if score start_anim gameHandler matches 19 run title @a subtitle "ᴛʜᴇ ɢᴀᴍᴇ ᴡ ꜱᴛᴀʀᴛ ɪɴ"
execute if score start_anim gameHandler matches 20 run title @a subtitle "ᴛʜᴇ ɢᴀᴍᴇ ᴡʟ ꜱᴛᴀʀᴛ ɪɴ"
execute if score start_anim gameHandler matches 21 run title @a subtitle "ᴛʜᴇ ɢᴀᴍᴇ ᴡɪʟ ꜱᴛᴀʀᴛ ɪɴ"
execute if score start_anim gameHandler matches 22 run title @a subtitle "ᴛʜᴇ ɢᴀᴍᴇ ᴡɪʟʟ ꜱᴛᴀʀᴛ ɪɴ"

execute at @a run playsound minecraft:block.piston.contract master @a ~ ~ ~ 1 2 1

execute unless score start_anim gameHandler matches 22 run schedule function shriek:gamehandler/start/start_anim 2t
execute if score start_anim gameHandler matches 22 run scoreboard players set timer gameHandler 5
execute if score start_anim gameHandler matches 22 run function shriek:gamehandler/start/start