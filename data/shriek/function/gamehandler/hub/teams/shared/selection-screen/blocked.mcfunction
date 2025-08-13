$item replace entity @s hotbar.4 with minecraft:white_dye[item_name="",consumable={consume_seconds:0,sound:"entity.villager.no",has_consume_particles:0b},use_cooldown={seconds:0.5},minecraft:enchantment_glint_override=false,minecraft:custom_data={$(score):1b,team:1b},custom_model_data={strings:["$(score)-blocked"]}]
$title @s actionbar [{"text":"$(text)","color":"$(color)","bold":true},{"text":" ᴛᴇᴀᴍ ɪꜱ ꜰᴜʟʟ","color":"white","bold":false}]

function shriek:gamehandler/hub/teams/updater