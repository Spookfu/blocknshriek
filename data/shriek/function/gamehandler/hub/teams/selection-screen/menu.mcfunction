advancement revoke @s only shriek:item-rightc-detect
# Menu Left & Right + Sound System & Title
    scoreboard players remove @s[tag=left,scores={teams-selection=1..}] teams-selection 1
    scoreboard players add @s[tag=right,scores={teams-selection=..7}] teams-selection 1

    execute at @s[tag=right,scores={teams-selection=8}] run playsound item.spyglass.use master @s ~ ~ ~ 1 1 1
    execute at @s[tag=left,scores={teams-selection=0}] run playsound item.spyglass.use master @s ~ ~ ~ 1 1 1

    scoreboard players set @s[tag=left,scores={teams-selection=0}] teams-selection 7
    scoreboard players set @s[tag=right,scores={teams-selection=8}] teams-selection 1

    tag @s remove left
    tag @s remove right 

    execute if entity @s[scores={teams-selection=1}] run title @s title {"text":"\ue013"}
    execute if entity @s[scores={teams-selection=2}] run title @s title {"text":"\ue012"}
    execute if entity @s[scores={teams-selection=3}] run title @s title {"text":"\ue010"}
    execute if entity @s[scores={teams-selection=4}] run title @s title {"text":"\ue014"}
    execute if entity @s[scores={teams-selection=5}] run title @s title {"text":"\ue009"}
    execute if entity @s[scores={teams-selection=6}] run title @s title {"text":"\ue008"}
    execute if entity @s[scores={teams-selection=7}] run title @s title {"text":"\ue011"}

    execute if score @s team-selection matches 1 run title @s title {"text":"\uE008"}
    execute if score @s team-selection matches 2 run title @s title {"text":"\uE009"}
    execute if score @s team-selection matches 3 run title @s title {"text":"\uE0010"}
    execute if score @s team-selection matches 4 run title @s title {"text":"\uE0011"}
    execute if score @s team-selection matches 5 run title @s title {"text":"\uE0012"}
    execute if score @s team-selection matches 6 run title @s title {"text":"\uE0013"}
    execute if score @s team-selection matches 7 run title @s title {"text":"\uE007"}
say Selection-Menu_NOTIF