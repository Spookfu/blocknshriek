execute if entity @s[nbt={SelectedItem:{id:"minecraft:nether_star",count:1,components:{"minecraft:custom_data":{left:1b}}}}] run tag @s add left
execute if entity @s[nbt={SelectedItem:{id:"minecraft:nether_star",count:1,components:{"minecraft:custom_data":{right:1b}}}}] run tag @s add right
execute if entity @s[nbt={SelectedItem:{id:"minecraft:nether_star",count:1,components:{"minecraft:custom_data":{left:1b}}}}] run function shriek:gamehandler/hub/teams/selection-screen/menu
execute if entity @s[nbt={SelectedItem:{id:"minecraft:nether_star",count:1,components:{"minecraft:custom_data":{right:1b}}}}] run function shriek:gamehandler/hub/teams/selection-screen/menu
say Right-Click_NOTIF
execute as @s[nbt={SelectedItem:{id:"minecraft:white_dye",count:1}}] run function shriek:gamehandler/hub/teams/selection-screen/team_selected
