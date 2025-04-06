# Gives a Loaded Crossbow Back
item replace entity @s hotbar.4 with crossbow[custom_name='["",{"text":"Shrieker","italic":false,"color":"red","bold":true}]',lore=['["",{"text":"|","italic":false,"color":"dark_red","bold":true},{"text":" Scare Count: []","italic":false,"color":"dark_red"}]','["",{"text":"=======================","italic":false,"bold":true,"color":"dark_gray"}]','[""]','["",{"text":" Channel your inner strength","italic":false,"color":"#a08d8d"}]','["",{"text":" and fear to pierce your","italic":false,"color":"#a08d8d"}]','["",{"text":" enemies with a chilling scare.","italic":false,"color":"#a08d8d"}]','[""]','["",{"text":" ","italic":false},{"text":"⌚","italic":false,"color":"#00ff00"},{"text":" ","italic":false,"color":"dark_green"},{"text":"Cooldown:","italic":false,"color":"#408040"},{"text":" ","italic":false},{"text":"120","italic":false,"color":"#00ff00"},{"text":"s","italic":false,"color":"#00bf00"}]','["",{"text":" ","italic":false},{"text":"☠","italic":false,"color":"#ffd500"},{"text":" ","italic":false},{"text":"Points:","italic":false,"color":"#807540"},{"text":" ","italic":false},{"text":"1000","italic":false,"color":"#ffd500"},{"text":"pts","italic":false,"color":"#bfaf60"}]','[""]','["",{"text":" ","italic":false,"color":"#a08d8d"},{"text":"※ ","italic":false,"color":"#e6b8b8"},{"text":"After ","italic":false,"color":"#a08d8d"},{"text":"Shrieking","italic":false,"color":"#e6b8b8"},{"text":", you\'ll be","italic":false,"color":"#a08d8d"}]','["",{"text":" ","italic":false,"color":"#a08d8d"},{"text":"Slowed Down ","italic":false,"color":"#e6b8b8"},{"text":"by ","italic":false,"color":"#a08d8d"},{"text":"50%","italic":false,"color":"#e6b8b8"},{"text":" for","italic":false,"color":"#a08d8d"}]','["",{"text":" ","italic":false,"color":"#a08d8d"},{"text":"5 Seconds","italic":false,"color":"#e6b8b8"},{"text":".","italic":false,"color":"#a08d8d"}]','[""]','["",{"text":" ","italic":false,"color":"#a08d8d"},{"text":"※","italic":false,"color":"#e6b8b8"},{"text":" ","italic":false},{"text":"Cooldown","italic":false,"color":"#e6b8b8"},{"text":" can be reduced","italic":false,"color":"#a08d8d"}]','["",{"text":" by taking ","italic":false,"color":"#a08d8d"},{"text":"certain actions","italic":false,"color":"#e6b8b8"},{"text":".","italic":false,"color":"#a08d8d"}]','[""]','["",{"text":"=======================","italic":false,"bold":true,"color":"dark_gray"}]'],enchantment_glint_override=true,custom_data={shrieker:1},minecraft:max_damage=120,charged_projectiles=[{id:"minecraft:spectral_arrow",count:1,components:{"minecraft:intangible_projectile":{}}}],minecraft:damage=0,minecraft:hide_additional_tooltip={}]

scoreboard players set @s shrieker-cd 0

tag @s remove shrieked

# Plays Audio Feedback, heard only by the player
execute at @s run playsound block.amethyst_block.resonate master @s ~ ~ ~ 1 0.1 0.1
execute at @s run playsound entity.item.pickup master @s ~ ~ ~ 1 0.1 0.1






