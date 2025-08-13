# $tellraw @a {"text":"$(team) $(score)"}
$execute if entity @s[tag=$(team)] run return run item replace entity @s[tag=$(team)] hotbar.4 with minecraft:white_dye[item_name="",consumable={consume_seconds:0,sound:"entity.villager.trade",has_consume_particles:0b},use_cooldown={seconds:0.5},minecraft:enchantment_glint_override=false,minecraft:custom_data={red:1b,team:1b},custom_model_data={strings:["$(score)-already"]}]
$execute if entity @s[team=$(team)-Consider] run return run item replace entity @s hotbar.4 with minecraft:white_dye[item_name="",consumable={consume_seconds:0,sound:"entity.villager.trade",has_consume_particles:0b},use_cooldown={seconds:0.5},minecraft:enchantment_glint_override=false,minecraft:custom_data={$(score):1b,team:1b},custom_model_data={strings:["$(score)-chosen"]}]
$execute if score $(team) item replace entity @s hotbar.4 with minecraft:white_dye[item_name="",consumable={consume_seconds:0,sound:"entity.villager.no",has_consume_particles:0b},use_cooldown={seconds:0.5},minecraft:enchantment_glint_override=false,minecraft:custom_data={$(score):1b,team:1b},custom_model_data={strings:["$(score)-blocked"]}]
$execute if entity @s[team=!$(team)-Consider,tag=!$(team)] run return run item replace entity @s hotbar.4 with minecraft:white_dye[item_name="",consumable={consume_seconds:0,sound:"entity.villager.yes",has_consume_particles:0b},use_cooldown={seconds:0.5},minecraft:enchantment_glint_override=false,minecraft:custom_data={$(score):1b,team:1b},custom_model_data={strings:["$(score)"]}]




# Already: If in the team already, shown by the corresponding team tag.
# Considering: If in corresponding considering team
# Default: If not have tag, AND not in the team
# Blocked: If team was full.
