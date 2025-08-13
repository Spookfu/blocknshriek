$execute if entity @s[team=$(team)] run function shriek:gamehandler/hub/teams/shared/already {"text":"$(text)","color":"$(color)"}
$execute if score $(score) teams matches 0 run function shriek:gamehandler/hub/teams/shared/join {"text":"$(text)","color":"$(color)","team":"$(team)"}
$execute if score $(score) teams matches 1 run function shriek:gamehandler/hub/teams/shared/full {"text":"$(text)","color":"$(color)"}
