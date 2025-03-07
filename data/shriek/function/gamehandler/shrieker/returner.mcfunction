# Gives a Loaded Crossbow Back
item replace entity @s hotbar.4 with crossbow[custom_name='["",{"text":"Shrieker","italic":false,"bold":true,"color":"red"}]',lore=['["",{"text":"A way to victory. Shriek your","italic":false,"color":"gray"}]','["",{"text":"opponents, but be ","italic":false,"color":"gray"},{"text":"precise","italic":false,"color":"dark_green"},{"text":".","italic":false,"color":"gray"}]','[""]','["",{"text":"⏳","italic":false,"color":"gold"},{"text":" ","italic":false},{"text":"Cooldown:","italic":false,"bold":true,"color":"gold"},{"text":" ","italic":false},{"text":"120s","italic":false,"color":"white"}]','["",{"text":"a","italic":false,"color":"dark_green","obfuscated":true},{"italic":false,"color":"dark_green","text":" "},{"italic":false,"color":"dark_green","text":"Points Applicable:","bold":true},{"italic":false,"text":" "},{"italic":false,"text":"1000","color":"white"}]','["",{"italic":false,"text":" "}]'],minecraft:damage=0,hide_additional_tooltip={},minecraft:enchantment_glint_override=true,minecraft:max_damage=120,charged_projectiles=[{id:"minecraft:spectral_arrow",count:1,components:{"minecraft:intangible_projectile":{}}}],minecraft:custom_data={shrieker:1}]

# Plays Audio Feedback, heard only by the player
execute at @s run playsound block.amethyst_block.resonate master @s ~ ~ ~ 1 0.1 0.1
execute at @s run playsound entity.item.pickup master @s ~ ~ ~ 1 0.1 0.1

# Resets Scoreboards
scoreboard players set @s shrieker-on 0