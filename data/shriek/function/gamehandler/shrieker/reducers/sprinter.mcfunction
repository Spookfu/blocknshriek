# scoreboard players set @s shrieker-reducer 1
# scoreboard players remove @s shrieker-timer 2
# title @s[tag=!sneaking] actionbar ["",{"text":" Sprinting","color":"red","bold": true},{"text":":","color":"gray"},{"text":" -2s ᴄᴏᴏʟᴅᴏᴡɴ ","color":"white"},{"text":"(","color":"white"},{"text":"⏳ ","color":"gray"},{"score":{"name":"@s","objective":"shrieker-timer"}},{"text":"s)"}]
# execute if entity @s run playsound minecraft:entity.experience_orb.pickup master @s[tag=!sneaking] ~ ~ ~ 1 1.5 1
# execute as @s run schedule function shriek:gamehandler/shrieker/reducerhandler 1s