# Debug
execute if score .functionDebug debug matches 1 run tellraw @a [{"text":"[DEBUG]","color":"blue","bold":true},{"text":" Running function hub/teams/shared/full.mcfunction","color":"white","bold":false}]

$title @s actionbar [{"text":"$(text)","color":"$(color)","bold":true},{"text":" ᴛᴇᴀᴍ ɪꜱ ꜰᴜʟʟ","color":"white","bold":false}]
playsound minecraft:entity.villager.no master @s ~ ~ ~ 1 1 1
function shriek:gamehandler/hub/teams/shared/exit
