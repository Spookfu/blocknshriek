# Debug
execute if score .functionDebug debug matches 1 run tellraw @a [{"text":"[DEBUG]","color":"blue","bold":true},{"text":" Running function hub/teams/shared/join.mcfunction","color":"white","bold":false}]

$title @s actionbar [{"text":"ʏᴏᴜ'ᴠᴇ ᴊᴏɪɴᴇᴅ ᴛᴇᴀᴍ "},{"text":"$(text)","color":"$(color)","bold":true}]
$team join $(team) @s
playsound entity.villager.yes master @s ~ ~ ~ 1 1 1
function shriek:gamehandler/hub/teams/shared/exit

