tellraw @a [{"text":"[DEBUG] ゲームを強制終了します…","color":"green"}]
title @a times 20 60 20

title @a title [{"text":"GAME END","color":"gray","bold":true,"italic":true}]

clear @a

worldborder set 1800 0
scoreboard objectives setdisplay list kill
scoreboard players reset @a playercount
scoreboard objectives setdisplay sidebar
scoreboard players set @s damage_total2 0
scoreboard players set @s health 300
scoreboard players set @a head_total_1game 0
scoreboard players reset @a kill_limit
scoreboard players reset @a id

tag @a remove player
kill @e[tag=hit_body]
kill @e[tag=hit_head]
tag @a remove playing
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
execute as @a[tag=op] run function owgame:operator/book