# Kills Decorated Pot Fillers
kill @e[type=item,name="Barrier"]
kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{slots:1}}}}]

# Sets the players score of "looting" to 1 if they break either a Flower Pot or Decorated Pot
scoreboard players set @s[scores={flower_potsBreak-loot=1..}] looting 1
scoreboard players set @s[scores={potsBreak-loot=1..}] looting 1

# If any player has a score of 1 for "looting" run this function.
execute as @s[scores={looting=1}] run function shriek:gamehandler/runes/looter

# Spell Handler Checks


execute as @s[scores={slot1=0}] run clear @s[nbt=!{Inventory:[{count:1,Slot:0b, components:{"minecraft:custom_data":{slots:1}}}]},tag=Players] #c:glass_panes
execute as @s[scores={slot2=0}] run clear @s[nbt=!{Inventory:[{count:1,Slot:1b, components:{"minecraft:custom_data":{slots:1}}}]},tag=Players] #c:glass_panes
execute as @s[scores={slot3=0}] run clear @s[nbt=!{Inventory:[{count:1,Slot:2b, components:{"minecraft:custom_data":{slots:1}}}]},tag=Players] #c:glass_panes

execute as @s[scores={slot1=0}] run item replace entity @s hotbar.0 with minecraft:glass_pane[can_break={predicates:[{blocks:"decorated_pot"},{blocks:"flower_pot"}],show_in_tooltip:false},item_name='[{"color":"gray","text":"[ "},{"color":"dark_green","text":"ʀᴜɴᴇ ꜱʟᴏᴛ "},{"bold":true,"color":"dark_green","text":"1","underlined":true}," ]"]',custom_data={slot:1, slots:1}] 1
execute as @s[scores={slot2=0}] run item replace entity @s hotbar.1 with minecraft:glass_pane[can_break={predicates:[{blocks:"decorated_pot"},{blocks:"flower_pot"}],show_in_tooltip:false},item_name='[{"color":"gray","text":"[ "},{"color":"yellow","text":"ʀᴜɴᴇ ꜱʟᴏᴛ "},{"bold":true,"color":"yellow","text":"2","underlined":true}," ]"]',custom_data={slot:1, slots:1}] 1
execute as @s[scores={slot3=0}] run item replace entity @s hotbar.2 with minecraft:glass_pane[can_break={predicates:[{blocks:"decorated_pot"},{blocks:"flower_pot"}],show_in_tooltip:false},item_name='[{"color":"gray","text":"[ "},{"color":"red","text":"ʀᴜɴᴇ ꜱʟᴏᴛ "},{"bold":true,"color":"red","text":"3","underlined":true}," ]"]',custom_data={slot:1, slots:1}] 1


