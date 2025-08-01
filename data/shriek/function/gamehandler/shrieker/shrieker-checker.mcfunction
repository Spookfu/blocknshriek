# # Shrieker Inventory Preventors
kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{shrieker:1}}}}]
clear @s[nbt=!{Inventory:[{count:1,Slot:4b, components:{"minecraft:custom_data":{shrieker:1}}}]},tag=Players] crossbow
kill @e[type=minecraft:spectral_arrow,nbt={inGround:1b}]

# Shrieker Cooldown Visual Updater
execute store result score @s shrieker-dura run scoreboard players operation BASE shrieker-dura -= @s shrieker-cd
item modify entity @s hotbar.4 shriek:durability-shrieker
execute unless score BASE shrieker-dura matches 120 run scoreboard players set BASE shrieker-dura 120

# # Sets a 1 or 0 if a player has a Loaded Crossbow or not
scoreboard players set @s[nbt={Inventory:[{id:"minecraft:crossbow",Slot:4b,components:{"minecraft:charged_projectiles":[{id:"minecraft:spectral_arrow",count:1,components:{"minecraft:intangible_projectile":{}}}]}}]}] shrieker-status 1
scoreboard players set @s[nbt=!{Inventory:[{id:"minecraft:crossbow",Slot:4b,components:{"minecraft:charged_projectiles":[{id:"minecraft:spectral_arrow",count:1,components:{"minecraft:intangible_projectile":{}}}]}}]}] shrieker-status 0

execute if entity @s[nbt=!{Inventory:[{id:"minecraft:crossbow",Slot:4b}]}] run return run item replace entity @s hotbar.4 with crossbow[minecraft:item_name=["",{"text":"Shrieker","italic":false,"color":"red","bold":true}],lore=[["",{"text":"|","italic":false,"color":"dark_red","bold":true},{"text":" Scare Count: []","italic":false,"color":"dark_red"}],["",{"text":"=======================","italic":false,"bold":true,"color":"dark_gray"}],[""],["",{"text":" Channel your inner strength","italic":false,"color":"#a08d8d"}],["",{"text":" and fear to pierce your","italic":false,"color":"#a08d8d"}],["",{"text":" enemies with a chilling scare.","italic":false,"color":"#a08d8d"}],[""],["",{"text":" ","italic":false},{"text":"⌚","italic":false,"color":"#00ff00"},{"text":" ","italic":false,"color":"dark_green"},{"text":"Cooldown:","italic":false,"color":"#408040"},{"text":" ","italic":false},{"text":"120","italic":false,"color":"#00ff00"},{"text":"s","italic":false,"color":"#00bf00"}],["",{"text":" ","italic":false},{"text":"☠","italic":false,"color":"#ffd500"},{"text":" ","italic":false},{"text":"Points:","italic":false,"color":"#807540"},{"text":" ","italic":false},{"text":"1000","italic":false,"color":"#ffd500"},{"text":"pts","italic":false,"color":"#bfaf60"}],[""],["",{"text":" ","italic":false,"color":"#a08d8d"},{"text":"※ ","italic":false,"color":"#e6b8b8"},{"text":"After ","italic":false,"color":"#a08d8d"},{"text":"Shrieking","italic":false,"color":"#e6b8b8"},{"text":", you'll be","italic":false,"color":"#a08d8d"}],["",{"text":" ","italic":false,"color":"#a08d8d"},{"text":"Slowed Down ","italic":false,"color":"#e6b8b8"},{"text":"by ","italic":false,"color":"#a08d8d"},{"text":"50%","italic":false,"color":"#e6b8b8"},{"text":" for","italic":false,"color":"#a08d8d"}],["",{"text":" ","italic":false,"color":"#a08d8d"},{"text":"5 Seconds","italic":false,"color":"#e6b8b8"},{"text":".","italic":false,"color":"#a08d8d"}],[""],["",{"text":" ","italic":false,"color":"#a08d8d"},{"text":"※","italic":false,"color":"#e6b8b8"},{"text":" ","italic":false},{"text":"Cooldown","italic":false,"color":"#e6b8b8"},{"text":" can be reduced","italic":false,"color":"#a08d8d"}],["",{"text":" by taking ","italic":false,"color":"#a08d8d"},{"text":"certain actions","italic":false,"color":"#e6b8b8"},{"text":".","italic":false,"color":"#a08d8d"}],[""],["",{"text":"=======================","italic":false,"bold":true,"color":"dark_gray"}]],enchantment_glint_override=true,custom_data={shrieker:1},minecraft:max_damage=120,charged_projectiles=[{id:"minecraft:spectral_arrow",count:1,components:{"minecraft:intangible_projectile":{}}}],minecraft:damage=0, tooltip_display={hidden_components:["tool","weapon"]}]

# Runs the CD Functions
execute at @s[scores={shrieker-status=0},tag=!shrieked] run playsound minecraft:block.bell.resonate master @a ~ ~ ~ 1 1.2 1
execute at @s[scores={shrieker-status=0},tag=!shrieked] run playsound minecraft:entity.firework_rocket.large_blast_far master @a ~ ~ ~ 1 1.2 1
execute at @s[scores={shrieker-status=0},tag=!shrieked] run particle poof ~ ~ ~ 0 1 0 0 100 normal

execute if entity @s[scores={shrieker-status=0},tag=!shrieked] run function shriek:gamehandler/shrieker/timing

# # Visual HUD of Shrieker Cooldown Timer/Status
title @s[nbt={SelectedItem:{id:"minecraft:crossbow"}},scores={shrieker-status=0,shrieker-reduce=0}] actionbar ["ꜱʜʀɪᴇᴋᴇʀ ᴏɴ ", {"text":"Cooldown","color":"red","bold":true},{"text":" - ⏳ ","color":"gray"},{"score":{"name":"@s","objective":"shrieker-cd"}},{"text":"s"}]