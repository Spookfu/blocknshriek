# Game Timer Handler
scoreboard players remove gameTimer gameHandler 1
execute store result bossbar minecraft:game_timer value run scoreboard players get gameTimer gameHandler
execute unless score gameTimer gameHandler matches ..0 run schedule function shriek:gamehandler/gametime/timer 1t
execute if score gameTimer gameHandler matches ..0 run function shriek:gamehandler/end/endanim

scoreboard players operation tick gameTimer = gameTimer gameHandler
scoreboard players operation seconds2 gameTimer = seconds gameTimer
scoreboard players operation minuteSeconds gameTimer = minutes gameTimer
scoreboard players operation minutes gameHandler = minutes gameTimer
scoreboard players operation minuteSeconds gameHandler = minuteSeconds gameTimer
scoreboard players operation seconds gameHandler = seconds gameTimer

execute store result score minutes gameTimer run scoreboard players operation seconds2 gameTimer /= secondDivider gameTimer
execute store result score seconds gameTimer run scoreboard players operation tick gameTimer /= tickDivider gameTimer
scoreboard players operation minuteSeconds gameTimer *= secondDivider gameTimer

scoreboard players operation seconds gameHandler -= minuteSeconds gameTimer

bossbar set minecraft:game_timer name ["",{"text":"Game Time","color":"gold","bold":true},{"text":" - ","color":"gray"},{"score":{"name":"minutes","objective":"gameHandler"}},{"text":"ᴍ"},{"text":" : ","color":"gray"},{"score":{"name":"seconds","objective":"gameHandler"}},{"text":"ꜱ"}]

execute if score timeSegments gameHandler > minutes gameHandler run function shriek:gamehandler/gametime/segmenters

# execute if score minutes gameHandler matches 0 run function shriek:gamehandler/start/rusher
