# Debug
execute if score .functionDebug debug matches 1 run tellraw @a [{"text":"[DEBUG]","color":"blue","bold":true},{"text":" Running function /hub/colors/shared/already.mcfunction","color":"white","bold":false}]

$title @s actionbar [{"text":"ᴀʟʀᴇᴀᴅʏ ᴄʜᴏꜱᴇɴ"},{"text":" $(text)","color":"$(color)","bold":true}]
playsound entity.villager.trade master @s ~ ~ ~ 1 1 1
function shriek:gamehandler/hub/colors/shared/exit