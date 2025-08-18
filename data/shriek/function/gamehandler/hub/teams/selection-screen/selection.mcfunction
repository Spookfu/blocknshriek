# Visual and Auditory Effects
playsound minecraft:ui.cartography_table.take_result master @s ~ ~ ~ 0.2 0.1 0.1
execute at @s run particle minecraft:poof ~ ~ ~ 0 1 0 1 50 normal

effect give @s glowing infinite 1 true
say Selected_NOTIF
advancement revoke @s only shriek:item-rightc-detect
# # # Temp Cache
    # # Already On Team
        # execute if entity @s[nbt={SelectedItem:{id:"minecraft:white_dye",count:1,components:{"minecraft:custom_model_data":{strings:["red-already"]}}}}] run team join Red-Consider
        # execute if entity @s[nbt={SelectedItem:{id:"minecraft:white_dye",count:1,components:{"minecraft:custom_model_data":{strings:["orange-already"]}}}}] run team join Orange-Consider
        # execute if entity @s[nbt={SelectedItem:{id:"minecraft:white_dye",count:1,components:{"minecraft:custom_model_data":{strings:["yellow-already"]}}}}] run team join Yellow-Consider
        # execute if entity @s[nbt={SelectedItem:{id:"minecraft:white_dye",count:1,components:{"minecraft:custom_model_data":{strings:["green-already"]}}}}] run team join Green-Consider
        # execute if entity @s[nbt={SelectedItem:{id:"minecraft:white_dye",count:1,components:{"minecraft:custom_model_data":{strings:["blue-already"]}}}}] run team join Blue-Consider
        # execute if entity @s[nbt={SelectedItem:{id:"minecraft:white_dye",count:1,components:{"minecraft:custom_model_data":{strings:["purple-already"]}}}}] run team join Purple-Consider
        # execute if entity @s[nbt={SelectedItem:{id:"minecraft:white_dye",count:1,components:{"minecraft:custom_model_data":{strings:["spectators-already"]}}}}] run team join Spectators-Consider

        # execute if entity @s[nbt={SelectedItem:{id:"minecraft:white_dye",count:1,components:{"minecraft:custom_model_data":{strings:["red-already"]}}}}] run return run title @s[tag=Red] actionbar ["",{"text":"ʏᴏᴜ'ʀᴇ ʀᴇᴄᴏɴꜱɪᴅᴇʀɪɴɢ ᴛᴇᴀᴍ"},{"text":" RED","color":"red","bold":true}]
        # execute if entity @s[nbt={SelectedItem:{id:"minecraft:white_dye",count:1,components:{"minecraft:custom_model_data":{strings:["orange-already"]}}}}] run return run title @s[tag=Orange] actionbar ["",{"text":"ʏᴏᴜ'ʀᴇ ʀᴇᴄᴏɴꜱɪᴅᴇʀɪɴɢ ᴛᴇᴀᴍ"},{"text":" ORANGE","color":"gold","bold":true}]
        # execute if entity @s[nbt={SelectedItem:{id:"minecraft:white_dye",count:1,components:{"minecraft:custom_model_data":{strings:["yellow-already"]}}}}] run return run title @s[tag=Yellow] actionbar ["",{"text":"ʏᴏᴜ'ʀᴇ ʀᴇᴄᴏɴꜱɪᴅᴇʀɪɴɢ ᴛᴇᴀᴍ"},{"text":" YELLOW","color":"yellow","bold":true}]
        # execute if entity @s[nbt={SelectedItem:{id:"minecraft:white_dye",count:1,components:{"minecraft:custom_model_data":{strings:["green-already"]}}}}] run return run title @s[tag=Green] actionbar ["",{"text":"ʏᴏᴜ'ʀᴇ ʀᴇᴄᴏɴꜱɪᴅᴇʀɪɴɢ ᴛᴇᴀᴍ"},{"text":" GREEN","color":"green","bold":true}]
        # execute if entity @s[nbt={SelectedItem:{id:"minecraft:white_dye",count:1,components:{"minecraft:custom_model_data":{strings:["blue-already"]}}}}] run return run title @s[tag=Blue] actionbar ["",{"text":"ʏᴏᴜ'ʀᴇ ʀᴇᴄᴏɴꜱɪᴅᴇʀɪɴɢ ᴛᴇᴀᴍ"},{"text":" BLUE","color":"blue","bold":true}]
        # execute if entity @s[nbt={SelectedItem:{id:"minecraft:white_dye",count:1,components:{"minecraft:custom_model_data":{strings:["purple-already"]}}}}] run return run title @s[tag=Purple] actionbar ["",{"text":"ʏᴏᴜ'ʀᴇ ʀᴇᴄᴏɴꜱɪᴅᴇʀɪɴɢ ᴛᴇᴀᴍ"},{"text":" PURPLE","color":"light_purple","bold":true}]
        # execute if entity @s[nbt={SelectedItem:{id:"minecraft:white_dye",count:1,components:{"minecraft:custom_model_data":{strings:["spectators-already"]}}}}] run return run title @s[tag=Spectators] actionbar ["",{"text":"ʏᴏᴜ'ʀᴇ ʀᴇᴄᴏɴꜱɪᴅᴇʀɪɴɢ ᴛᴇᴀᴍ"},{"text":" SPECTATORS","color":"gray","bold":true}]



    # # Joining Team
        # execute if entity @s[nbt={SelectedItem:{id:"minecraft:white_dye",count:1,components:{"minecraft:custom_model_data":{strings:["red"]}}}}] run title @s actionbar ["",{"text":"ʏᴏᴜ'ʀᴇ ᴀʀᴇ ᴄᴏɴꜱɪᴅᴇʀɪɴɢ ᴛᴇᴀᴍ"},{"text":" RED","color":"red","bold":true}]
        # execute if entity @s[nbt={SelectedItem:{id:"minecraft:white_dye",count:1,components:{"minecraft:custom_model_data":{strings:["orange"]}}}}] run title @s actionbar ["",{"text":"ʏᴏᴜ'ʀᴇ ᴀʀᴇ ᴄᴏɴꜱɪᴅᴇʀɪɴɢ ᴛᴇᴀᴍ"},{"text":" ORANGE","color":"gold","bold":true}]
        # execute if entity @s[nbt={SelectedItem:{id:"minecraft:white_dye",count:1,components:{"minecraft:custom_model_data":{strings:["yellow"]}}}}] run title @s actionbar ["",{"text":"ʏᴏᴜ'ʀᴇ ᴀʀᴇ ᴄᴏɴꜱɪᴅᴇʀɪɴɢ ᴛᴇᴀᴍ"},{"text":" YELLOW","color":"yellow","bold":true}]
        # execute if entity @s[nbt={SelectedItem:{id:"minecraft:white_dye",count:1,components:{"minecraft:custom_model_data":{strings:["green"]}}}}] run title @s actionbar ["",{"text":"ʏᴏᴜ'ʀᴇ ᴀʀᴇ ᴄᴏɴꜱɪᴅᴇʀɪɴɢ ᴛᴇᴀᴍ"},{"text":" GREEN","color":"green","bold":true}]
        # execute if entity @s[nbt={SelectedItem:{id:"minecraft:white_dye",count:1,components:{"minecraft:custom_model_data":{strings:["blue"]}}}}] run title @s actionbar ["",{"text":"ʏᴏᴜ'ʀᴇ ᴀʀᴇ ᴄᴏɴꜱɪᴅᴇʀɪɴɢ ᴛᴇᴀᴍ"},{"text":" BLUE","color":"blue","bold":true}]
        # execute if entity @s[nbt={SelectedItem:{id:"minecraft:white_dye",count:1,components:{"minecraft:custom_model_data":{strings:["purple"]}}}}] run title @s actionbar ["",{"text":"ʏᴏᴜ'ʀᴇ ᴀʀᴇ ᴄᴏɴꜱɪᴅᴇʀɪɴɢ ᴛᴇᴀᴍ"},{"text":" PURPLE","color":"light_purple","bold":true}]
        # execute if entity @s[nbt={SelectedItem:{id:"minecraft:white_dye",count:1,components:{"minecraft:custom_model_data":{strings:["spectators"]}}}}] run title @s actionbar ["",{"text":"ʏᴏᴜ'ʀᴇ ᴀʀᴇ ᴄᴏɴꜱɪᴅᴇʀɪɴɢ ᴛᴇᴀᴍ"},{"text":" SPECTATORS","color":"gray","bold":true}]

        # execute if entity @s[nbt={SelectedItem:{id:"minecraft:white_dye",count:1,components:{"minecraft:custom_model_data":{strings:["red"]}}}}] run tag @s add considering
        # execute if entity @s[nbt={SelectedItem:{id:"minecraft:white_dye",count:1,components:{"minecraft:custom_model_data":{strings:["orange"]}}}}] run tag @s add considering
        # execute if entity @s[nbt={SelectedItem:{id:"minecraft:white_dye",count:1,components:{"minecraft:custom_model_data":{strings:["yellow"]}}}}] run tag @s add considering
        # execute if entity @s[nbt={SelectedItem:{id:"minecraft:white_dye",count:1,components:{"minecraft:custom_model_data":{strings:["green"]}}}}] run tag @s add considering
        # execute if entity @s[nbt={SelectedItem:{id:"minecraft:white_dye",count:1,components:{"minecraft:custom_model_data":{strings:["blue"]}}}}] run tag @s add considering
        # execute if entity @s[nbt={SelectedItem:{id:"minecraft:white_dye",count:1,components:{"minecraft:custom_model_data":{strings:["purple"]}}}}] run tag @s add considering
        # execute if entity @s[nbt={SelectedItem:{id:"minecraft:white_dye",count:1,components:{"minecraft:custom_model_data":{strings:["spectators"]}}}}] run tag @s add considering

        # execute if entity @s[nbt={SelectedItem:{id:"minecraft:white_dye",count:1,components:{"minecraft:custom_model_data":{strings:["red"]}}}}] run return run team join Red-Consider @s
        # execute if entity @s[nbt={SelectedItem:{id:"minecraft:white_dye",count:1,components:{"minecraft:custom_model_data":{strings:["orange"]}}}}] run return run team join Orange-Consider @s
        # execute if entity @s[nbt={SelectedItem:{id:"minecraft:white_dye",count:1,components:{"minecraft:custom_model_data":{strings:["yellow"]}}}}] run return run team join Yellow-Consider @s
        # execute if entity @s[nbt={SelectedItem:{id:"minecraft:white_dye",count:1,components:{"minecraft:custom_model_data":{strings:["green"]}}}}] run return run team join Green-Consider @s
        # execute if entity @s[nbt={SelectedItem:{id:"minecraft:white_dye",count:1,components:{"minecraft:custom_model_data":{strings:["blue"]}}}}] run return run team join Blue-Consider @s
        # execute if entity @s[nbt={SelectedItem:{id:"minecraft:white_dye",count:1,components:{"minecraft:custom_model_data":{strings:["purple"]}}}}] run return run team join Purple-Consider @s
        # execute if entity @s[nbt={SelectedItem:{id:"minecraft:white_dye",count:1,components:{"minecraft:custom_model_data":{strings:["spectators"]}}}}] run return run team join Spectators-Consider @s

    # # Already Considering Team
        # execute if entity @s[nbt={SelectedItem:{id:"minecraft:white_dye",count:1,components:{"minecraft:custom_model_data":{strings:["red-chosen"]}}}}] run return run title @s[team=Red-Consider] actionbar ["",{"text":"ʏᴏᴜ'ʀᴇ ᴀʟʀᴇᴀᴅʏ ᴄᴏɴꜱɪᴅᴇʀɪɴɢ ᴛᴇᴀᴍ"},{"text":" RED","color":"red","bold":true}]
        # execute if entity @s[nbt={SelectedItem:{id:"minecraft:white_dye",count:1,components:{"minecraft:custom_model_data":{strings:["orange-chosen"]}}}}] run return run title @s[team=Orange-Consider] actionbar ["",{"text":"ʏᴏᴜ'ʀᴇ ᴀʟʀᴇᴀᴅʏ ᴄᴏɴꜱɪᴅᴇʀɪɴɢ ᴛᴇᴀᴍ"},{"text":" ORANGE","color":"gold","bold":true}]
        # execute if entity @s[nbt={SelectedItem:{id:"minecraft:white_dye",count:1,components:{"minecraft:custom_model_data":{strings:["yellow-chosen"]}}}}] run return run title @s[team=Yellow-Consider] actionbar ["",{"text":"ʏᴏᴜ'ʀᴇ ᴀʟʀᴇᴀᴅʏ ᴄᴏɴꜱɪᴅᴇʀɪɴɢ ᴛᴇᴀᴍ"},{"text":" YELLOW","color":"yellow","bold":true}]
        # execute if entity @s[nbt={SelectedItem:{id:"minecraft:white_dye",count:1,components:{"minecraft:custom_model_data":{strings:["green-chosen"]}}}}] run return run title @s[team=Green-Consider] actionbar ["",{"text":"ʏᴏᴜ'ʀᴇ ᴀʟʀᴇᴀᴅʏ ᴄᴏɴꜱɪᴅᴇʀɪɴɢ ᴛᴇᴀᴍ"},{"text":" GREEN","color":"green","bold":true}]
        # execute if entity @s[nbt={SelectedItem:{id:"minecraft:white_dye",count:1,components:{"minecraft:custom_model_data":{strings:["blue-chosen"]}}}}] run return run title @s[team=Blue-Consider] actionbar ["",{"text":"ʏᴏᴜ'ʀᴇ ᴀʟʀᴇᴀᴅʏ ᴄᴏɴꜱɪᴅᴇʀɪɴɢ ᴛᴇᴀᴍ"},{"text":" BLUE","color":"blue","bold":true}]
        # execute if entity @s[nbt={SelectedItem:{id:"minecraft:white_dye",count:1,components:{"minecraft:custom_model_data":{strings:["purple-chosen"]}}}}] run return run title @s[team=Purple-Consider] actionbar ["",{"text":"ʏᴏᴜ'ʀᴇ ᴀʟʀᴇᴀᴅʏ ᴄᴏɴꜱɪᴅᴇʀɪɴɢ ᴛᴇᴀᴍ"},{"text":" PURPLE","color":"light_purple","bold":true}]
        # execute if entity @s[nbt={SelectedItem:{id:"minecraft:white_dye",count:1,components:{"minecraft:custom_model_data":{strings:["spectators-chosen"]}}}}] run return run title @s[team=Spectators-Consider] actionbar ["",{"text":"ʏᴏᴜ'ʀᴇ ᴀʟʀᴇᴀᴅʏ ᴄᴏɴꜱɪᴅᴇʀɪɴɢ ᴛᴇᴀᴍ"},{"text":" SPECTATORS","color":"gray","bold":true}]

    # # Team Is Full
        # execute if entity @s[nbt={SelectedItem:{id:"minecraft:white_dye",count:1,components:{"minecraft:custom_model_data":{strings:["red-blocked"]}}}}] run return run title @s actionbar [{"text":"RED","color":"red","bold":true},{"text":" ᴛᴇᴀᴍ ɪꜱ ꜰᴜʟʟ","color":"white","bold":false}]
        # execute if entity @s[nbt={SelectedItem:{id:"minecraft:white_dye",count:1,components:{"minecraft:custom_model_data":{strings:["orange-blocked"]}}}}] run return run title @s actionbar [{"text":"ORANGE","color":"gold","bold":true},{"text":" ᴛᴇᴀᴍ ɪꜱ ꜰᴜʟʟ","color":"white","bold":false}]
        # execute if entity @s[nbt={SelectedItem:{id:"minecraft:white_dye",count:1,components:{"minecraft:custom_model_data":{strings:["yellow-blocked"]}}}}] run return run title @s actionbar [{"text":"YELLOW","color":"yellow","bold":true},{"text":" ᴛᴇᴀᴍ ɪꜱ ꜰᴜʟʟ","color":"white","bold":false}]
        # execute if entity @s[nbt={SelectedItem:{id:"minecraft:white_dye",count:1,components:{"minecraft:custom_model_data":{strings:["green-blocked"]}}}}] run return run title @s actionbar [{"text":"GREEN","color":"green","bold":true},{"text":" ᴛᴇᴀᴍ ɪꜱ ꜰᴜʟʟ","color":"white","bold":false}]
        # execute if entity @s[nbt={SelectedItem:{id:"minecraft:white_dye",count:1,components:{"minecraft:custom_model_data":{strings:["blue-blocked"]}}}}] run return run title @s actionbar [{"text":"BLUE","color":"blue","bold":true},{"text":" ᴛᴇᴀᴍ ɪꜱ ꜰᴜʟʟ","color":"white","bold":false}]
        # execute if entity @s[nbt={SelectedItem:{id:"minecraft:white_dye",count:1,components:{"minecraft:custom_model_data":{strings:["purple-blocked"]}}}}] run return run title @s actionbar [{"text":"PURPLE","color":"light_purple","bold":true},{"text":" ᴛᴇᴀᴍ ɪꜱ ꜰᴜʟʟ","color":"white","bold":false}]

function shriek:gamehandler/hub/teams/updater