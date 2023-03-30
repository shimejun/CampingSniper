title @a times 20 60 20
title @a subtitle [{"text":"Winner:","color":"gold","bold":true},{"selector":"@s","color":"aqua"}]
title @a title [{"text":"-GAME OVER-","color":"red","bold":true,"italic":true}]

worldborder set 1800 0
scoreboard objectives setdisplay list kill
scoreboard objectives setdisplay sidebar
scoreboard players reset @a kill_limit
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

execute as @a at @s run function owgame:actions/leave
kill @e[tag=hit_body]
kill @e[tag=hit_head]
tag @a remove playing
execute as @a at @s run playsound minecraft:ui.toast.challenge_complete block @s ~ ~ ~ 1 1
kill @e[type=item]

gamemode adventure @a
team leave @a
scoreboard players set @a head_total_1game 0
scoreboard players reset @a kill_limit
scoreboard players set @a respawn_count 0
gamemode adventure @a[gamemode=spectator]
scoreboard players reset @a id