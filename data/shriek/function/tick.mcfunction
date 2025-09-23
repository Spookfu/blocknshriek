# Keeps all the Handlers continously running as long as the game is active.
    execute if score game gameHandler matches 1 run function shriek:gamehandler/baser

# Hub Stuff
    execute if block -14 -60 54 minecraft:oak_button[powered=true] run function shriek:gamehandler/start/reqcheck

# Map Selection Screen
execute as @a[x=-21.5,y=-59.5,z=36.8,dx=5,dy=4,dz=5.5] run function shriek:gamehandler/hub/maps/map1
execute as @a[x=-16.5,y=-59.5,z=36.8,dx=5,dy=4,dz=5.5] run function shriek:gamehandler/hub/maps/map2
execute as @a[x=-10.5,y=-59.5,z=36.8,dx=5,dy=4,dz=5.5] run function shriek:gamehandler/hub/maps/map3

execute as @a[x=-21.5, y=-60, z=44.5,dx=16,tag=map] run function shriek:gamehandler/hub/maps/exit

title @a[tag=chosen_sculk] actionbar [{"text":"ᴍᴀᴘ ꜱᴇʟᴇᴄᴛᴇᴅ"},{"text":" SCULKED INSTITUTE","color":"dark_aqua","bold":true}]
title @a[tag=chosen_stalking] actionbar [{"text":"ᴍᴀᴘ ꜱᴇʟᴇᴄᴛᴇᴅ"},{"text":" STALKING FOREST","color":"gray","bold":true}]
title @a[tag=chosen_dungeon] actionbar [{"text":"ᴍᴀᴘ ꜱᴇʟᴇᴄᴛᴇᴅ"},{"text":" CREAKING CRYPTS","color":"red","bold":true}]
title @a[tag=!chosen_dungeon,tag=!chosen_stalking,tag=!chosen_sculk] actionbar [{"text":"- ᴠᴏᴛᴇ ꜰᴏʀ ᴀ ᴍᴀᴘ -"}]
# function shriek:gamehandler/hub/team_iden


#Triggers
    execute as @a[scores={shriek.end=1..}] run function shriek:triggers/helper.end
    scoreboard players enable @a shriek.end

    execute as @a[scores={shriek.start=1..}] run function shriek:triggers/helper.start
    scoreboard players enable @a shriek.start

    execute as @a[scores={shriek.addloot=1..}] run function shriek:triggers/addloot
    scoreboard players enable @a shriek.addloot