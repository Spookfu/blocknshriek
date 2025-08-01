execute if entity @s[nbt={SelectedItem:{id:"minecraft:nether_star",count:1,components:{"minecraft:custom_data":{left:1b}}}}] run tag @s add left
execute if entity @s[nbt={SelectedItem:{id:"minecraft:nether_star",count:1,components:{"minecraft:custom_data":{right:1b}}}}] run tag @s add right
execute as @s[nbt={SelectedItem:{id:"minecraft:white_dye",count:1}}] run function shriek:gamehandler/hub/team_selected
