execute at @a run playsound minecraft:entity.warden.sonic_boom master @a ~ ~ ~ 1 1 1
title @a title {"selector":"@a[tag=win]","color":"gold","bold":true}

effect give @a resistance 255 10 true
summon firework_rocket -7.5 -57 55.5 {Glowing:1b,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"star",has_trail:true,colors:[I;3887386, 2437522, 11743532, 15435844],fade_colors:[I;4408131, 15790320]}]}}}}
summon firework_rocket -8.5 -56 47.5 {Glowing:1b,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"star",has_trail:true,colors:[I;3887386, 2437522, 11743532, 15435844],fade_colors:[I;4408131, 15790320]}]}}}}
summon firework_rocket -12.5 -58 51.5 {Glowing:1b,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"star",has_trail:true,colors:[I;3887386, 2437522, 11743532, 15435844],fade_colors:[I;4408131, 15790320]}]}}}}
summon firework_rocket -19.5 -55 56.5 {Glowing:1b,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"star",has_trail:true,colors:[I;3887386, 2437522, 11743532, 15435844],fade_colors:[I;4408131, 15790320]}]}}}}
summon firework_rocket -17.5 -58.5 48.5 {Glowing:1b,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"star",has_trail:true,colors:[I;3887386, 2437522, 11743532, 15435844],fade_colors:[I;4408131, 15790320]}]}}}}

effect give @a[tag=win] glowing infinite 1 true
team join win @a[tag=win]

schedule clear shriek:gamehandler/end/endwinanim