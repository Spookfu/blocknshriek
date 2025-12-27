# Debug
execute if score .functionDebug debug matches 1 run tellraw @a [{"text":"[DEBUG]","color":"blue","bold":true},{"text":" Running function start/display-game/countdown.mcfunction","color":"white","bold":false}]

# Start Countdown Animation Cycle
scoreboard players remove .startSequence-gameCountdown animate 1
# Game Starting Visual Countdown
title @a subtitle {"text":"ᴛʜᴇ ɢᴀᴍᴇ ᴡɪʟʟ ꜱᴛᴀʀᴛ ɪɴ","color": "white"}
title @a title ["",{"text":"> ","color":"blue","bold":true},{"score":{"name": ".startSequence-gameCountdown","objective": "animate"}},{"text":" <","color":"red","bold":true}]

# Sound
execute at @a as @a run playsound minecraft:item.axe.scrape master @a ~ ~ ~ 1 1 1

# Runs the Game Setup Functions, once countdown completes
execute as @a run execute if score .startSequence-gameCountdown animate matches 0 run return run function shriek:gamehandler/start/startgame

# Rerun Function after 1s
schedule function shriek:gamehandler/start/display-game/countdown 1s
