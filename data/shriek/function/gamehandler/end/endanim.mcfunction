tp @a -13.50 -60.00 53.50 facing -13.50 -60 64.00
stopsound @a * minecraft:ui.toast.challenge_complete
scoreboard players add endAnim animate 1
title @a times 0t 1t 4t

execute if score endAnim animate matches 2 run title @a subtitle ["",{"text":"+","color":"blue"}]
execute if score endAnim animate matches 3 run title @a subtitle ["",{"text":"+","color":"blue"},{"text":"+","color":"red"}]
execute if score endAnim animate matches 4 run title @a subtitle ["",{"text":"+-","color":"blue"},{"text":"+","color":"red"}]
execute if score endAnim animate matches 5 run title @a subtitle ["",{"text":"+-","color":"blue"},{"text":"-+","color":"red"}]
execute if score endAnim animate matches 6 run title @a subtitle ["",{"text":"+--","color":"blue"},{"text":"-+","color":"red"}]
execute if score endAnim animate matches 7 run title @a subtitle ["",{"text":"+--","color":"blue"},{"text":"--+","color":"red"}]
execute if score endAnim animate matches 8 run title @a subtitle ["",{"text":"+-- ","color":"blue"},{"text":"--+","color":"red"}]
execute if score endAnim animate matches 9 run title @a subtitle ["",{"text":"+-- ","color":"blue"},{"text":" --+","color":"red"}]
execute if score endAnim animate matches 10 run title @a subtitle ["",{"text":"+-- ","color":"blue"},{"text":"ᴛ","color":"gray"},{"text":" --+","color":"red"}]
execute if score endAnim animate matches 11 run title @a subtitle ["",{"text":"+-- ","color":"blue"},{"text":"ᴛᴘ","color":"gray"},{"text":" --+","color":"red"}]
execute if score endAnim animate matches 12 run title @a subtitle ["",{"text":"+-- ","color":"blue"},{"text":"ᴛɪᴘ","color":"gray"},{"text":" --+","color":"red"}]
execute if score endAnim animate matches 13 run title @a subtitle ["",{"text":"+-- ","color":"blue"},{"text":"ᴛɪᴜᴘ","color":"gray"},{"text":" --+","color":"red"}]
execute if score endAnim animate matches 14 run title @a subtitle ["",{"text":"+-- ","color":"blue"},{"text":"ᴛɪᴍᴜᴘ","color":"gray"},{"text":" --+","color":"red"}]
execute if score endAnim animate matches 15 run title @a subtitle ["",{"text":"+-- ","color":"blue"},{"text":"ᴛɪᴍ ᴜᴘ","color":"gray"},{"text":" --+","color":"red"}]
execute if score endAnim animate matches 16 run title @a subtitle ["",{"text":"+-- ","color":"blue"},{"text":"ᴛɪᴍᴇ ᴜᴘ","color":"gray"},{"text":" --+","color":"red"}]
execute if score endAnim animate matches 17 run title @a subtitle ["",{"text":"+-- ","color":"blue"},{"text":"ᴛɪᴍᴇꜱ ᴜᴘ","color":"gray"},{"text":" --+","color":"red"}]
execute if score endAnim animate matches 18 run title @a subtitle ["",{"text":"+-- ","color":"blue"},{"text":"ᴛɪᴍᴇ'ꜱ ᴜᴘ","color":"gray"},{"text":" --+","color":"red"}]



execute if score endAnim animate matches 1 run title @a title {"text":"G","color":"gold","bold":true}
execute if score endAnim animate matches 2 run title @a title {"text":"GE","color":"gold","bold":true}
execute if score endAnim animate matches 3 run title @a title {"text":"GAE","color":"gold","bold":true}
execute if score endAnim animate matches 4 run title @a title {"text":"GATE","color":"gold","bold":true}
execute if score endAnim animate matches 5 run title @a title {"text":"GAMTE","color":"gold","bold":true}
execute if score endAnim animate matches 6 run title @a title {"text":"GAMETE","color":"gold","bold":true}
execute if score endAnim animate matches 7 run title @a title {"text":"GAMEETE","color":"gold","bold":true}
execute if score endAnim animate matches 8 run title @a title {"text":"GAMELETE","color":"gold","bold":true}
execute if score endAnim animate matches 9 run title @a title {"text":"GAME LETE","color":"gold","bold":true}
execute if score endAnim animate matches 10 run title @a title {"text":"GAME PLETE","color":"gold","bold":true}
execute if score endAnim animate matches 11 run title @a title {"text":"GAME CPLETE","color":"gold","bold":true}
execute if score endAnim animate matches 12 run title @a title {"text":"GAME CMPLETE","color":"gold","bold":true}
execute if score endAnim animate matches 13 run title @a title {"text":"GAME COMPLETE","color":"gold","bold":true}

execute at @a run playsound minecraft:block.piston.contract master @a ~ ~ ~ 1 2 1

execute unless score endAnim animate matches 18.. run return run schedule function shriek:gamehandler/end/endanim 2t
function shriek:gamehandler/end/end
