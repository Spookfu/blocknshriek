execute if score functionDebug debug matches 1 run tellraw @a [{"text":"[DEBUG]","color":"blue","bold":true},{"text":" Running function start/startgame.mcfunction","color":"white","bold":false}]

title @a times 0t 10t 10s

tellraw @a {"text":" ꜱᴛᴀʀᴛɪɴɢ ɢᴀᴍᴇ . . .","color":"gray"}
tellraw @a " "
tellraw @a " "
execute unless score red teams matches 0 run tellraw @a [{"text":"Team Red ","color":"red"},{"text":"| ","color":"gray"},{"selector":"@a[team=Red]"}]
execute unless score orange teams matches 0 run tellraw @a [{"text":"Team Orange ","color":"gold"},{"text":"| ","color":"gray"},{"selector":"@a[team=Orange]"}]
execute unless score yellow teams matches 0 run tellraw @a [{"text":"Team Yellow ","color":"yellow"},{"text":"| ","color":"gray"},{"selector":"@a[team=Yellow]"}]
execute unless score green teams matches 0 run tellraw @a [{"text":"Team Green ","color":"green"},{"text":"| ","color":"gray"},{"selector":"@a[team=Green]"}]
execute unless score blue teams matches 0 run tellraw @a [{"text":"Team Blue ","color":"blue"},{"text":"| ","color":"gray"},{"selector":"@a[team=Blue]"}]
execute unless score purple teams matches 0 run tellraw @a [{"text":"Team Purple ","color":"light_purple"},{"text":"| ","color":"gray"},{"selector":"@a[team=Purple]"}]

tellraw @a [{"text":"Spectators ","color":"gray"},{"text":"| ","color":"gray"},{"selector":"@a[team=Spectators]"}]
# Last Title
title @a subtitle ["",{"text":"> ","color":"blue","bold":true},{"text":"ɢᴏᴏᴅ ʟᴜᴄᴋ","color": "white"},{"text":" <","color":"red","bold":true}]
title @a title {"text":"SHRIEK","color":"dark_red","bold":true}

# Game Starting FX
execute at @s run particle minecraft:ominous_spawning ~ ~1 ~ 0 0 0 1 100 normal
execute at @s run particle minecraft:enchant ~ ~2 ~ 0 0 0 1 100 normal
effect give @s minecraft:slowness infinite 225 true
effect give @s minecraft:blindness infinite 1 true
playsound minecraft:block.trial_spawner.about_to_spawn_item master @s ~ ~ ~ 1 1 1

# Runs TP and Setup Function in 2.1s
schedule function shriek:gamehandler/sttart/playersetup 2.1s