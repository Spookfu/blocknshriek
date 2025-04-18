# Last Title
title @a subtitle ["",{"text":"> ","color":"blue","bold":true},{"text":"ɢᴏᴏᴅ ʟᴜᴄᴋ","color": "white"},{"text":" <","color":"red","bold":true}]
title @a title {"text":"SHRIEK","color":"dark_red"}

# Game Starting FX
execute at @s run particle minecraft:ominous_spawning ~ ~1 ~ 0 0 0 1 100 normal
execute at @s run particle minecraft:enchant ~ ~2 ~ 0 0 0 1 100 normal
effect give @s minecraft:slowness infinite 225 true
effect give @s minecraft:blindness infinite 1 true
playsound minecraft:block.trial_spawner.about_to_spawn_item master @s ~ ~ ~ 1 1 1

# Runs TP and Setup Function in 2.1s
schedule function shriek:gamehandler/start/intial/playersetup 2.1s

