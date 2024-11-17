scoreboard players set start_anim gameHandler 0
title @a times 0t 5t 2s
# Game Starting Visual Countdown
title @a subtitle {"text":"ᴛʜᴇ ɢᴀᴍᴇ ᴡɪʟʟ ꜱᴛᴀʀᴛ ɪɴ","color": "white"}
title @a title ["",{"text":"> ","color":"blue","bold":true},{"score":{"name": "timer","objective": "gameHandler"}},{"text":" <","color":"red","bold":true}]
execute if score timer gameHandler matches 0 run title @a subtitle ["",{"text":"> ","color":"blue","bold":true},{"text":"ɢᴏᴏᴅ ʟᴜᴄᴋ","color": "white"},{"text":" <","color":"red","bold":true}]
execute if score timer gameHandler matches 0 run title @a title {"text":"SHRIEK","color":"dark_red"}

execute at @a run playsound minecraft:item.axe.scrape master @a ~ ~ ~ 1 1 1
execute unless score timer gameHandler matches 0 run schedule function shriek:gamehandler/start/start 1s

# Runs the Game Setup Functions, once countdown completes
execute as @a run execute if score timer gameHandler matches 0 run function shriek:gamehandler/start/basic/roll

execute unless score timer gameHandler matches 0 run scoreboard players remove timer gameHandler 1