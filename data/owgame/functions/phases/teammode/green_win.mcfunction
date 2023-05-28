#緑チーム勝利
title @a times 20 60 20
execute if entity @e[tag=!team] run title @a subtitle [{"text":"Winner:","color":"gold","bold":true},{"text":"GREEN TEAM","color":"green"}]
title @a title [{"text":"GAME SET!","color":"gold","bold":true,"italic":true}]

worldborder set 1800 0
scoreboard objectives setdisplay list kill
scoreboard players reset @a playercount
clear @a
tellraw @a [{"text":"Winner: ","color":"gold"},{"selector":"@a[team=green]","color":"aqua"}]
scoreboard players add @a[team=green] win_total 1
advancement grant @a[scores={win_total=1..}] only owgame:badges/1win
advancement grant @a[scores={win_total=3..}] only owgame:badges/3win
advancement grant @a[scores={win_total=5..}] only owgame:badges/5win
advancement grant @a[scores={win_total=10..}] only owgame:badges/10win
advancement grant @a[scores={win_total=100..}] only owgame:badges/100win
advancement grant @a[scores={win_total=300..}] only owgame:badges/300win
advancement grant @a[scores={kill=0},gamemode=adventure] only owgame:badges/win_withoutkill
execute if score #teamtype id matches 2 run advancement grant @a[team=green] only owgame:badges/team_duowin
execute if score #teamtype id matches 3 run advancement grant @a[team=green] only owgame:badges/team_triowin
execute if score #teamtype id matches 4 run advancement grant @a[team=green] only owgame:badges/team_quintwin
execute if score #teamtype id matches 6 run advancement grant @a[team=green] only owgame:badges/team_hexawin
execute unless entity @a[team=green,gamemode=spectator] run advancement grant @s only owgame:badges/team_win
execute as @a[team=green,gamemode=adventure] at @s unless entity @a[team=green,gamemode=adventure,distance=0.1..] run advancement grant @s only owgame:badges/team_clutch
execute as @a[team=green,gamemode=adventure] at @s unless entity @a[team=green,distance=0.1..] run advancement grant @s only owgame:badges/team_solowin

function owgame:reset
execute as @a[team=op] run function owgame:operator/book
