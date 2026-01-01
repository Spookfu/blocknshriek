# Debug
execute if score .functionDebug debug matches 1 run tellraw @a [{"text":"[DEBUG]","color":"blue","bold":true},{"text":" Running function /hub/colors/shared/checks.mcfunction","color":"white","bold":false}]

$execute if entity @s[team=$(team)] run function shriek:gamehandler/hub/colors/shared/already {"text":"$(text)","color":"$(color)"}
$execute if score $(score) teams matches 0 run function shriek:gamehandler/hub/colors/shared/join {"text":"$(text)","color":"$(color)","team":"$(team)"}
$execute if score $(score) teams matches 1 run function shriek:gamehandler/hub/colors/shared/full {"text":"$(text)","color":"$(color)"}
