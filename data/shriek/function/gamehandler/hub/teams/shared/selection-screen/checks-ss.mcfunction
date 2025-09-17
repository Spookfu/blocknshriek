# Already: If in the team already, shown by the corresponding team tag.
# Considering: If in corresponding considering team
# Default: If not have tag, AND not in the team
# Blocked: If team was full.
# Chosen Already: If held 


    # $item replace entity @s hotbar.4 with minecraft:white_dye[item_name="",consumable={consume_seconds:0,sound:"entity.villager.yes",has_consume_particles:0b},use_cooldown={seconds:0.5},minecraft:enchantment_glint_override=false,minecraft:custom_data={$(score):1b,team:1b},custom_model_data={strings:["$(score)"]}]
    # $execute if entity @s[tag=$(team)] run function shriek:gamehandler/hub/teams/shared/selection-screen/already {"team":"$(team)","color":"$(color)","text":"$(text)","score":"$(score)"}
    # $execute if score $(score) teams matches 1 run function shriek:gamehandler/hub/teams/shared/selection-screen/blocked {"color":"$(color)","text":"$(text)","score":"$(score)"}
    # $execute if entity @s[team=$(team)-Consider,tag=!$(team)] run function shriek:gamehandler/hub/teams/shared/selection-screen/considering {"team":"$(team)","color":"$(color)","text":"$(text)","score":"$(score)"}

