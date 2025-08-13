# Already: If in the team already, shown by the corresponding team tag.
# Considering: If in corresponding considering team
# Default: If not have tag, AND not in the team
# Blocked: If team was full.
# Chosen Already: If held 

    # $execute if score $(score) teams matches 1 run return run function shriek:gamehandler/hub/teams/shared/selection-screen/blocked {"team":"$(team)","color":"$(color)","text":"$(text)","score":"$(score)"}
    # $execute if entity @s[team=$(team)-Consider,tag=!$(team)] run function shriek:gamehandler/hub/teams/shared/selection-screen/considering {"team":"$(team)","color":"$(color)","text":"$(text)","score":"$(score)"}
    # $execute if entity @s[tag=$(team),team=!$(team)-Consider] run function shriek:gamehandler/hub/teams/shared/selection-screen/already {"team":"$(team)","color":"$(color)","text":"$(text)","score":"$(score)"}
    function shriek:gamehandler/hub/teams/shared/selection-screen/default {"score":"$(score)"}
