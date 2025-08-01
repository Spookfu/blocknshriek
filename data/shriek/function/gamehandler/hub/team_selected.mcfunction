# Visual and Auditory Effects
playsound minecraft:ui.cartography_table.take_result master @s ~ ~ ~ 0.5 0.1 0.5
execute at @s run particle minecraft:poof ~ ~ ~ 0 1 0 1 50 normal

effect give @s glowing infinite 1 true

# Joining Team
execute if entity @s[nbt={SelectedItem:{id:"minecraft:white_dye",count:1,components:{"minecraft:custom_model_data":{strings:["red"]}}}}] run title @s actionbar ["",{"text":"ʏᴏᴜ'ᴠᴇ ᴊᴏɪɴᴇᴅ ᴛᴇᴀᴍ"},{"text":" RED","color":"red","bold":true}]
execute if entity @s[nbt={SelectedItem:{id:"minecraft:white_dye",count:1,components:{"minecraft:custom_model_data":{strings:["orange"]}}}}] run title @s actionbar ["",{"text":"ʏᴏᴜ'ᴠᴇ ᴊᴏɪɴᴇᴅ ᴛᴇᴀᴍ"},{"text":" ORANGE","color":"gold","bold":true}]
execute if entity @s[nbt={SelectedItem:{id:"minecraft:white_dye",count:1,components:{"minecraft:custom_model_data":{strings:["yellow"]}}}}] run title @s actionbar ["",{"text":"ʏᴏᴜ'ᴠᴇ ᴊᴏɪɴᴇᴅ ᴛᴇᴀᴍ"},{"text":" YELLOW","color":"yellow","bold":true}]
execute if entity @s[nbt={SelectedItem:{id:"minecraft:white_dye",count:1,components:{"minecraft:custom_model_data":{strings:["green"]}}}}] run title @s actionbar ["",{"text":"ʏᴏᴜ'ᴠᴇ ᴊᴏɪɴᴇᴅ ᴛᴇᴀᴍ"},{"text":" GREEN","color":"green","bold":true}]
execute if entity @s[nbt={SelectedItem:{id:"minecraft:white_dye",count:1,components:{"minecraft:custom_model_data":{strings:["blue"]}}}}] run title @s actionbar ["",{"text":"ʏᴏᴜ'ᴠᴇ ᴊᴏɪɴᴇᴅ ᴛᴇᴀᴍ"},{"text":" BLUE","color":"blue","bold":true}]
execute if entity @s[nbt={SelectedItem:{id:"minecraft:white_dye",count:1,components:{"minecraft:custom_model_data":{strings:["purple"]}}}}] run title @s actionbar ["",{"text":"ʏᴏᴜ'ᴠᴇ ᴊᴏɪɴᴇᴅ ᴛᴇᴀᴍ"},{"text":" PURPLE","color":"light_purple","bold":true}]
execute if entity @s[nbt={SelectedItem:{id:"minecraft:white_dye",count:1,components:{"minecraft:custom_model_data":{strings:["spectator"]}}}}] run title @s actionbar ["",{"text":"ʏᴏᴜ'ᴠᴇ ᴊᴏɪɴᴇᴅ ᴛᴇᴀᴍ"},{"text":" SPECTATORS","color":"gray","bold":true}]
execute if entity @s[nbt={SelectedItem:{id:"minecraft:white_dye",count:1,components:{"minecraft:custom_model_data":{strings:["red"]}}}}] run team join Red @s
execute if entity @s[nbt={SelectedItem:{id:"minecraft:white_dye",count:1,components:{"minecraft:custom_model_data":{strings:["orange"]}}}}] run team join Orange @s
execute if entity @s[nbt={SelectedItem:{id:"minecraft:white_dye",count:1,components:{"minecraft:custom_model_data":{strings:["yellow"]}}}}] run team join Yellow @s
execute if entity @s[nbt={SelectedItem:{id:"minecraft:white_dye",count:1,components:{"minecraft:custom_model_data":{strings:["green"]}}}}] run team join Green @s
execute if entity @s[nbt={SelectedItem:{id:"minecraft:white_dye",count:1,components:{"minecraft:custom_model_data":{strings:["blue"]}}}}] run team join Blue @s
execute if entity @s[nbt={SelectedItem:{id:"minecraft:white_dye",count:1,components:{"minecraft:custom_model_data":{strings:["purple"]}}}}] run team join Purple @s
execute if entity @s[nbt={SelectedItem:{id:"minecraft:white_dye",count:1,components:{"minecraft:custom_model_data":{strings:["spectator"]}}}}] run team join Spectators @s
execute if entity @s[nbt={SelectedItem:{id:"minecraft:white_dye",count:1,components:{"minecraft:custom_model_data":{strings:["red"]}}}}] run playsound entity.villager.yes master @s ~ ~ ~ 1 1 1
execute if entity @s[nbt={SelectedItem:{id:"minecraft:white_dye",count:1,components:{"minecraft:custom_model_data":{strings:["orange"]}}}}] run playsound entity.villager.yes master @s ~ ~ ~ 1 1 1
execute if entity @s[nbt={SelectedItem:{id:"minecraft:white_dye",count:1,components:{"minecraft:custom_model_data":{strings:["yellow"]}}}}] run playsound entity.villager.yes master @s ~ ~ ~ 1 1 1
execute if entity @s[nbt={SelectedItem:{id:"minecraft:white_dye",count:1,components:{"minecraft:custom_model_data":{strings:["green"]}}}}] run playsound entity.villager.yes master @s ~ ~ ~ 1 1 1
execute if entity @s[nbt={SelectedItem:{id:"minecraft:white_dye",count:1,components:{"minecraft:custom_model_data":{strings:["blue"]}}}}] run playsound entity.villager.yes master @s ~ ~ ~ 1 1 1
execute if entity @s[nbt={SelectedItem:{id:"minecraft:white_dye",count:1,components:{"minecraft:custom_model_data":{strings:["purple"]}}}}] run playsound entity.villager.yes master @s ~ ~ ~ 1 1 1
execute if entity @s[nbt={SelectedItem:{id:"minecraft:white_dye",count:1,components:{"minecraft:custom_model_data":{strings:["spectator"]}}}}] run playsound entity.villager.yes master @s ~ ~ ~ 1 1 1


# Already On Team
execute if entity @s[nbt={SelectedItem:{id:"minecraft:white_dye",count:1,components:{"minecraft:custom_model_data":{strings:["red-chosen"]}}}}] run title @s[team=Red] actionbar ["",{"text":"ʏᴏᴜ'ʀᴇ ᴀʟʀᴇᴀᴅʏ ᴏɴ ᴛᴇᴀᴍ"},{"text":" RED","color":"red","bold":true}]
execute if entity @s[nbt={SelectedItem:{id:"minecraft:white_dye",count:1,components:{"minecraft:custom_model_data":{strings:["orange-chosen"]}}}}] run title @s[team=Orange] actionbar ["",{"text":"ʏᴏᴜ'ʀᴇ ᴀʟʀᴇᴀᴅʏ ᴏɴ ᴛᴇᴀᴍ"},{"text":" ORANGE","color":"gold","bold":true}]
execute if entity @s[nbt={SelectedItem:{id:"minecraft:white_dye",count:1,components:{"minecraft:custom_model_data":{strings:["yellow-chosen"]}}}}] run title @s[team=Yellow] actionbar ["",{"text":"ʏᴏᴜ'ʀᴇ ᴀʟʀᴇᴀᴅʏ ᴏɴ ᴛᴇᴀᴍ"},{"text":" YELLOW","color":"yellow","bold":true}]
execute if entity @s[nbt={SelectedItem:{id:"minecraft:white_dye",count:1,components:{"minecraft:custom_model_data":{strings:["green-chosen"]}}}}] run title @s[team=Green] actionbar ["",{"text":"ʏᴏᴜ'ʀᴇ ᴀʟʀᴇᴀᴅʏ ᴏɴ ᴛᴇᴀᴍ"},{"text":" GREEN","color":"green","bold":true}]
execute if entity @s[nbt={SelectedItem:{id:"minecraft:white_dye",count:1,components:{"minecraft:custom_model_data":{strings:["blue-chosen"]}}}}] run title @s[team=Blue] actionbar ["",{"text":"ʏᴏᴜ'ʀᴇ ᴀʟʀᴇᴀᴅʏ ᴏɴ ᴛᴇᴀᴍ"},{"text":" BLUE","color":"blue","bold":true}]
execute if entity @s[nbt={SelectedItem:{id:"minecraft:white_dye",count:1,components:{"minecraft:custom_model_data":{strings:["purple-chosen"]}}}}] run title @s[team=Purple] actionbar ["",{"text":"ʏᴏᴜ'ʀᴇ ᴀʟʀᴇᴀᴅʏ ᴏɴ ᴛᴇᴀᴍ"},{"text":" PURPLE","color":"light_purple","bold":true}]
execute if entity @s[nbt={SelectedItem:{id:"minecraft:white_dye",count:1,components:{"minecraft:custom_model_data":{strings:["spectator-chosen"]}}}}] run title @s[team=Spectators] actionbar ["",{"text":"ʏᴏᴜ'ʀᴇ ᴀʟʀᴇᴀᴅʏ ᴏɴ ᴛᴇᴀᴍ"},{"text":" SPECTATORS","color":"gray","bold":true}]
execute if entity @s[nbt={SelectedItem:{id:"minecraft:white_dye",count:1,components:{"minecraft:custom_model_data":{strings:["red-chosen"]}}}}] run playsound entity.villager.trade master @s ~ ~ ~ 1 1 1
execute if entity @s[nbt={SelectedItem:{id:"minecraft:white_dye",count:1,components:{"minecraft:custom_model_data":{strings:["orange-chosen"]}}}}] run playsound entity.villager.trade master @s ~ ~ ~ 1 1 1
execute if entity @s[nbt={SelectedItem:{id:"minecraft:white_dye",count:1,components:{"minecraft:custom_model_data":{strings:["yellow-chosen"]}}}}] run playsound entity.villager.trade master @s ~ ~ ~ 1 1 1
execute if entity @s[nbt={SelectedItem:{id:"minecraft:white_dye",count:1,components:{"minecraft:custom_model_data":{strings:["green-chosen"]}}}}] run playsound entity.villager.trade master @s ~ ~ ~ 1 1 1
execute if entity @s[nbt={SelectedItem:{id:"minecraft:white_dye",count:1,components:{"minecraft:custom_model_data":{strings:["blue-chosen"]}}}}] run playsound entity.villager.trade master @s ~ ~ ~ 1 1 1
execute if entity @s[nbt={SelectedItem:{id:"minecraft:white_dye",count:1,components:{"minecraft:custom_model_data":{strings:["purple-chosen"]}}}}] run playsound entity.villager.trade master @s ~ ~ ~ 1 1 1
execute if entity @s[nbt={SelectedItem:{id:"minecraft:white_dye",count:1,components:{"minecraft:custom_model_data":{strings:["spectator-chosen"]}}}}] run playsound entity.villager.trade master @s ~ ~ ~ 1 1 1

# Team Is Full
execute if entity @s[nbt={SelectedItem:{id:"minecraft:white_dye",count:1,components:{"minecraft:custom_model_data":{strings:["red-blocked"]}}}}] run title @s actionbar [{"text":"RED","color":"red","bold":true},{"text":" ᴛᴇᴀᴍ ɪꜱ ꜰᴜʟʟ","color":"white","bold":false}]
execute if entity @s[nbt={SelectedItem:{id:"minecraft:white_dye",count:1,components:{"minecraft:custom_model_data":{strings:["orange-blocked"]}}}}] run title @s actionbar [{"text":"ORANGE","color":"gold","bold":true},{"text":" ᴛᴇᴀᴍ ɪꜱ ꜰᴜʟʟ","color":"white","bold":false}]
execute if entity @s[nbt={SelectedItem:{id:"minecraft:white_dye",count:1,components:{"minecraft:custom_model_data":{strings:["yellow-blocked"]}}}}] run title @s actionbar [{"text":"YELLOW","color":"yellow","bold":true},{"text":" ᴛᴇᴀᴍ ɪꜱ ꜰᴜʟʟ","color":"white","bold":false}]
execute if entity @s[nbt={SelectedItem:{id:"minecraft:white_dye",count:1,components:{"minecraft:custom_model_data":{strings:["green-blocked"]}}}}] run title @s actionbar [{"text":"GREEN","color":"green","bold":true},{"text":" ᴛᴇᴀᴍ ɪꜱ ꜰᴜʟʟ","color":"white","bold":false}]
execute if entity @s[nbt={SelectedItem:{id:"minecraft:white_dye",count:1,components:{"minecraft:custom_model_data":{strings:["blue-blocked"]}}}}] run title @s actionbar [{"text":"BLUE","color":"blue","bold":true},{"text":" ᴛᴇᴀᴍ ɪꜱ ꜰᴜʟʟ","color":"white","bold":false}]
execute if entity @s[nbt={SelectedItem:{id:"minecraft:white_dye",count:1,components:{"minecraft:custom_model_data":{strings:["purple-blocked"]}}}}] run title @s actionbar [{"text":"PURPLE","color":"light_purple","bold":true},{"text":" ᴛᴇᴀᴍ ɪꜱ ꜰᴜʟʟ","color":"white","bold":false}]
execute if entity @s[nbt={SelectedItem:{id:"minecraft:white_dye",count:1,components:{"minecraft:custom_model_data":{strings:["red-blocked"]}}}}] run playsound minecraft:entity.villager.no master @s ~ ~ ~ 1 1 1
execute if entity @s[nbt={SelectedItem:{id:"minecraft:white_dye",count:1,components:{"minecraft:custom_model_data":{strings:["orange-blocked"]}}}}] run playsound minecraft:entity.villager.no master @s ~ ~ ~ 1 1 1
execute if entity @s[nbt={SelectedItem:{id:"minecraft:white_dye",count:1,components:{"minecraft:custom_model_data":{strings:["yellow-blocked"]}}}}] run playsound minecraft:entity.villager.no master @s ~ ~ ~ 1 1 1
execute if entity @s[nbt={SelectedItem:{id:"minecraft:white_dye",count:1,components:{"minecraft:custom_model_data":{strings:["green-blocked"]}}}}] run playsound minecraft:entity.villager.no master @s ~ ~ ~ 1 1 1
execute if entity @s[nbt={SelectedItem:{id:"minecraft:white_dye",count:1,components:{"minecraft:custom_model_data":{strings:["blue-blocked"]}}}}] run playsound minecraft:entity.villager.no master @s ~ ~ ~ 1 1 1
execute if entity @s[nbt={SelectedItem:{id:"minecraft:white_dye",count:1,components:{"minecraft:custom_model_data":{strings:["purple-blocked"]}}}}] run playsound minecraft:entity.villager.no master @s ~ ~ ~ 1 1 1