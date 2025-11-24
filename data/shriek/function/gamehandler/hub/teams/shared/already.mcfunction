execute if score functionDebug debug matches 1 run tellraw @a [{"text":"[DEBUG]","color":"blue","bold":true},{"text":" Running function hub/teams/shared/already.mcfunction","color":"white","bold":false}]
$title @s actionbar [{"text":"ʏᴏᴜ'ʀᴇ ᴀʟʀᴇᴀᴅʏ ᴏɴ ᴛᴇᴀᴍ"},{"text":" $(text)","color":"$(color)","bold":true}]
playsound entity.villager.trade master @s ~ ~ ~ 1 1 1
function shriek:gamehandler/hub/teams/shared/exit