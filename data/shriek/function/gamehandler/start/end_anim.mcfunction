tp @a -13.50 -60.00 53.50 facing -13.50 -60 64.00
stopsound @a * minecraft:ui.toast.challenge_complete
execute unless score endInitial_anim gameHandler matches 13.. run scoreboard players add endInitial_anim gameHandler 1
title @a times 0t 1t 4t
execute if score endInitial_anim gameHandler matches 2.. run scoreboard players add endInitial2_anim gameHandler 1

execute if score endInitial2_anim gameHandler matches 1 run title @a subtitle ["",{"text":"+","color":"blue"}]
execute if score endInitial2_anim gameHandler matches 2 run title @a subtitle ["",{"text":"+","color":"blue"},{"text":"+","color":"red"}]
execute if score endInitial2_anim gameHandler matches 3 run title @a subtitle ["",{"text":"+-","color":"blue"},{"text":"+","color":"red"}]
execute if score endInitial2_anim gameHandler matches 4 run title @a subtitle ["",{"text":"+-","color":"blue"},{"text":"-+","color":"red"}]
execute if score endInitial2_anim gameHandler matches 5 run title @a subtitle ["",{"text":"+--","color":"blue"},{"text":"-+","color":"red"}]
execute if score endInitial2_anim gameHandler matches 6 run title @a subtitle ["",{"text":"+--","color":"blue"},{"text":"--+","color":"red"}]
execute if score endInitial2_anim gameHandler matches 7 run title @a subtitle ["",{"text":"+-- ","color":"blue"},{"text":"--+","color":"red"}]
execute if score endInitial2_anim gameHandler matches 8 run title @a subtitle ["",{"text":"+-- ","color":"blue"},{"text":" --+","color":"red"}]
execute if score endInitial2_anim gameHandler matches 9 run title @a subtitle ["",{"text":"+-- ","color":"blue"},{"text":"ᴛ","color":"gray"},{"text":" --+","color":"red"}]
execute if score endInitial2_anim gameHandler matches 10 run title @a subtitle ["",{"text":"+-- ","color":"blue"},{"text":"ᴛᴘ","color":"gray"},{"text":" --+","color":"red"}]
execute if score endInitial2_anim gameHandler matches 11 run title @a subtitle ["",{"text":"+-- ","color":"blue"},{"text":"ᴛɪᴘ","color":"gray"},{"text":" --+","color":"red"}]
execute if score endInitial2_anim gameHandler matches 12 run title @a subtitle ["",{"text":"+-- ","color":"blue"},{"text":"ᴛɪᴜᴘ","color":"gray"},{"text":" --+","color":"red"}]
execute if score endInitial2_anim gameHandler matches 13 run title @a subtitle ["",{"text":"+-- ","color":"blue"},{"text":"ᴛɪᴍᴜᴘ","color":"gray"},{"text":" --+","color":"red"}]
execute if score endInitial2_anim gameHandler matches 14 run title @a subtitle ["",{"text":"+-- ","color":"blue"},{"text":"ᴛɪᴍ ᴜᴘ","color":"gray"},{"text":" --+","color":"red"}]
execute if score endInitial2_anim gameHandler matches 15 run title @a subtitle ["",{"text":"+-- ","color":"blue"},{"text":"ᴛɪᴍᴇ ᴜᴘ","color":"gray"},{"text":" --+","color":"red"}]
execute if score endInitial2_anim gameHandler matches 16 run title @a subtitle ["",{"text":"+-- ","color":"blue"},{"text":"ᴛɪᴍᴇꜱ ᴜᴘ","color":"gray"},{"text":" --+","color":"red"}]
execute if score endInitial2_anim gameHandler matches 17 run title @a subtitle ["",{"text":"+-- ","color":"blue"},{"text":"ᴛɪᴍᴇ'ꜱ ᴜᴘ","color":"gray"},{"text":" --+","color":"red"}]



execute if score endInitial_anim gameHandler matches 1 run title @a title {"text":"G","color":"gold","bold":true}
execute if score endInitial_anim gameHandler matches 2 run title @a title {"text":"GE","color":"gold","bold":true}
execute if score endInitial_anim gameHandler matches 3 run title @a title {"text":"GAE","color":"gold","bold":true}
execute if score endInitial_anim gameHandler matches 4 run title @a title {"text":"GATE","color":"gold","bold":true}
execute if score endInitial_anim gameHandler matches 5 run title @a title {"text":"GAMTE","color":"gold","bold":true}
execute if score endInitial_anim gameHandler matches 6 run title @a title {"text":"GAMETE","color":"gold","bold":true}
execute if score endInitial_anim gameHandler matches 7 run title @a title {"text":"GAMEETE","color":"gold","bold":true}
execute if score endInitial_anim gameHandler matches 8 run title @a title {"text":"GAMELETE","color":"gold","bold":true}
execute if score endInitial_anim gameHandler matches 9 run title @a title {"text":"GAME LETE","color":"gold","bold":true}
execute if score endInitial_anim gameHandler matches 10 run title @a title {"text":"GAME PLETE","color":"gold","bold":true}
execute if score endInitial_anim gameHandler matches 11 run title @a title {"text":"GAME CPLETE","color":"gold","bold":true}
execute if score endInitial_anim gameHandler matches 12 run title @a title {"text":"GAME CMPLETE","color":"gold","bold":true}
execute if score endInitial_anim gameHandler matches 13 run title @a title {"text":"GAME COMPLETE","color":"gold","bold":true}

execute at @a run playsound minecraft:block.piston.contract master @a ~ ~ ~ 1 2 1

execute unless score endInitial2_anim gameHandler matches 17.. run schedule function shriek:gamehandler/start/end_anim 2t
execute if score endInitial2_anim gameHandler matches 17.. run function shriek:gamehandler/start/end
