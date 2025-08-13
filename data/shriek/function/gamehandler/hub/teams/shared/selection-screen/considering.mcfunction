$item replace entity @s hotbar.4 with minecraft:white_dye[item_name="",consumable={consume_seconds:0,sound:"entity.villager.trade",has_consume_particles:0b},use_cooldown={seconds:0.5},minecraft:enchantment_glint_override=false,minecraft:custom_data={$(score):1b,team:1b},custom_model_data={strings:["$(score)-chosen"]}]
$title @s actionbar [{"text":"ʏᴏᴜ'ʀᴇ ᴀʀᴇ ᴄᴏɴꜱɪᴅᴇʀɪɴɢ ᴛᴇᴀᴍ"},{"text":" $(text)","color":"$(color)","bold":true}]
tag @s add considering
$team join $(team)-Consider
function shriek:gamehandler/hub/teams/updater