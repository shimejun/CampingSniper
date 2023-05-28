#バトロワ終了
title @a times 20 60 20
execute if entity @e[tag=!team] run title @a subtitle [{"text":"Winner:","color":"gold","bold":true},{"selector":"@s","color":"aqua"}]

title @a title [{"text":"GAME SET!","color":"gold","bold":true,"italic":true}]

worldborder set 1800 0
scoreboard objectives setdisplay list kill
scoreboard players reset @a playercount
clear @a
tellraw @a [{"text":"Winner: ","color":"gold"},{"selector":"@s","color":"aqua"}]
scoreboard players add @s win_total 1
advancement grant @s[scores={win_total=1..}] only owgame:badges/1win
advancement grant @s[scores={win_total=3..}] only owgame:badges/3win
advancement grant @s[scores={win_total=5..}] only owgame:badges/5win
advancement grant @s[scores={win_total=10..}] only owgame:badges/10win
advancement grant @s[scores={win_total=100..}] only owgame:badges/100win
advancement grant @s[scores={win_total=300..}] only owgame:badges/300win
advancement grant @s[scores={kill=0}] only owgame:badges/win_withoutkill

function owgame:reset
execute as @a[team=op] run function owgame:operator/book
