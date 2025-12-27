# Keeps all the Handlers continously running as long as the game is active.
    execute if score game gameHandler matches 1 run function shriek:gamehandler/baser

# Hub Stuff
    execute if block -14 -60 54 minecraft:oak_button[powered=true] run execute as @a run function shriek:gamehandler/start/reqcheck

# Map Selection Screen
execute as @a[x=-21.5,y=-59.5,z=36.8,dx=5,dy=4,dz=5.5] run function shriek:gamehandler/hub/maps/sculk
execute as @a[x=-16.5,y=-59.5,z=36.8,dx=5,dy=4,dz=5.5] run function shriek:gamehandler/hub/maps/stalking
execute as @a[x=-10.5,y=-59.5,z=36.8,dx=5,dy=4,dz=5.5] run function shriek:gamehandler/hub/maps/crypt

title @a[tag=.mapChosenIsSculk,tag=!mapSelectionVisualPause] actionbar [{"text":"Selected -"},{"text":" Sᴄᴜʟᴋᴇᴅ Iɴꜱᴛɪᴛᴜᴛᴇ","color":"aqua"}]
title @a[tag=.mapChosenIsStalking,tag=!mapSelectionVisualPause] actionbar [{"text":"Selected -"},{"text":" Sᴛᴀʟᴋɪɴɢ Fᴏʀᴇꜱᴛ","color":"gray"}]
title @a[tag=.mapChosenIsCrypt,tag=!mapSelectionVisualPause] actionbar [{"text":"Selected -"},{"text":" Cʀᴇᴀᴋɪɴɢ Cʀʏᴘᴛꜱ","color":"red"}]

execute as @a[x=-21.5, y=-60, z=44.5,dx=16,tag=.mapConsideringBase] run function shriek:gamehandler/hub/maps/exit

execute if entity @a[scores={mapKills=1}] run function shriek:gamehandler/start/fight-map/victory