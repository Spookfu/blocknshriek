scoreboard players remove startCountdown animate 1
# Game Starting Visual Countdown
title @a subtitle {"text":"ᴛʜᴇ ɢᴀᴍᴇ ᴡɪʟʟ ꜱᴛᴀʀᴛ ɪɴ","color": "white"}
title @a title ["",{"text":"> ","color":"blue","bold":true},{"score":{"name": "startCountdown","objective": "animate"}},{"text":" <","color":"red","bold":true}]

# Sound
execute at @a run playsound minecraft:item.axe.scrape master @a ~ ~ ~ 1 1 1

# Runs the Game Setup Functions, once countdown completes
execute as @a run execute if score startCountdown animate matches 0 run return run function shriek:gamehandler/start/startgame

# Rerun Function after 1s
schedule function shriek:gamehandler/start/display-game/countdown 1s
