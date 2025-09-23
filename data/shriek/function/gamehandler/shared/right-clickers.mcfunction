execute at @s run playsound item.spyglass.use master @s ~ ~ ~ 1 1 1
execute if entity @s[nbt={SelectedItem:{id:"minecraft:white_dye",count:1,components:{"minecraft:custom_data":{shriek:1b}}}}] run function shriek:gamehandler/hub/maps/choose-map1
execute if entity @s[nbt={SelectedItem:{id:"minecraft:white_dye",count:1,components:{"minecraft:custom_data":{infest:1b}}}}] run function shriek:gamehandler/hub/maps/choose-map2
execute if entity @s[nbt={SelectedItem:{id:"minecraft:white_dye",count:1,components:{"minecraft:custom_data":{crypt:1b}}}}] run function shriek:gamehandler/hub/maps/choose-map3
advancement revoke @s only shriek:item-rightc-detect

