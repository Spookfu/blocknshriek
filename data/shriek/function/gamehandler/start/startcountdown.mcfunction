scoreboard players set startAnim animate 0
title @a times 0t 5t 2s

# Game Starting Visual Countdown
title @a subtitle {"text":"ᴛʜᴇ ɢᴀᴍᴇ ᴡɪʟʟ ꜱᴛᴀʀᴛ ɪɴ","color": "white"}
title @a title ["",{"text":"> ","color":"blue","bold":true},{"score":{"name": "countdown","objective": "gameHandler"}},{"text":" <","color":"red","bold":true}]

# Sound
execute at @a run playsound minecraft:item.axe.scrape master @a ~ ~ ~ 1 1 1

# Runs the Game Setup Functions, once countdown completes
execute as @a run execute if score countdown gameHandler matches 0 run return run function shriek:gamehandler/start/intial/mapspawnroll

# Rerun Function after 1s
schedule function shriek:gamehandler/start/startcountdown 1s
scoreboard players remove countdown gameHandler 1