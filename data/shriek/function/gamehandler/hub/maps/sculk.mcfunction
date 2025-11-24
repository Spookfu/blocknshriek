# Debug
execute if score functionDebug debug matches 1 run tellraw @a [{"text":"[DEBUG]","color":"blue","bold":true},{"text":" Running function hub/maps/sculk.mcfunction","color":"white","bold":false}]

playsound minecraft:entity.warden.listening_angry master @s[tag=!map] ~ ~ ~ 1 0.1 1
tag @s add map_sculk
execute if entity @s[tag=!map] run function shriek:gamehandler/hub/maps/base
title @s title {"text":"SCULKED INSTITUTE","color":"aqua","bold":true}
title @s subtitle "ʀɪɢʜᴛ ᴄʟɪᴄᴋ \ue007 ᴛᴏ ᴠᴏᴛᴇ ꜰᴏʀ"

item replace entity @s hotbar.4 with minecraft:white_dye[item_name="",minecraft:enchantment_glint_override=false,minecraft:custom_data={shriek:1b,map:1b},custom_model_data={strings:["select"]},consumable={consume_seconds:0,sound:"item.spyglass.use",has_consume_particles:0b},use_cooldown={seconds:0.5}]
execute at @s run kill @e[distance=1..4,type=item,nbt={Item:{components:{"minecraft:custom_data":{map:1b}}}}]
