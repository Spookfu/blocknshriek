execute if score functionDebug debug matches 1 run tellraw @a [{"text":"[DEBUG]","color":"blue","bold":true},{"text":" Running function shared/right-clickers.mcfunction","color":"white"}]
execute at @s run playsound item.spyglass.use master @s ~ ~ ~ 1 1 1
execute if entity @s[nbt={SelectedItem:{id:"minecraft:white_dye",count:1,components:{"minecraft:custom_data":{shriek:1b}}}}] run function shriek:gamehandler/hub/maps/choose-sculk
execute if entity @s[nbt={SelectedItem:{id:"minecraft:white_dye",count:1,components:{"minecraft:custom_data":{infest:1b}}}}] run function shriek:gamehandler/hub/maps/choose-stalking
execute if entity @s[nbt={SelectedItem:{id:"minecraft:white_dye",count:1,components:{"minecraft:custom_data":{crypt:1b}}}}] run function shriek:gamehandler/hub/maps/choose-dungeon
advancement revoke @s only shriek:item-rightc-detect

