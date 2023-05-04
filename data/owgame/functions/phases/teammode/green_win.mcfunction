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
advancement grant @a[scores={kill=0}] only owgame:badges/win_withoutkill

execute as @a at @s run function owgame:actions/leave
kill @e[tag=hit_body]
kill @e[tag=hit_head]
tag @a remove playing
execute as @a at @s run playsound minecraft:ui.toast.challenge_complete block @s ~ ~ ~ 1 1
kill @e[type=chest_minecart]
kill @e[type=item]
execute as @e[tag=campfire] at @s run setblock ~ ~ ~ air replace
execute as @e[tag=campfire] at @s run kill @s

schedule clear owgame:actions/campfire_actions
gamemode adventure @a
schedule clear owgame:phases/showdown
schedule clear owgame:phases/endgame
schedule clear owgame:phases/endgame2
team leave @a
scoreboard players set @a head_total_1game 0
scoreboard players reset @a id
execute as @a[tag=op] run function owgame:operator/book