#赤チーム勝利
title @a times 20 60 20
title @a title [{"text":"GAME OVER","color":"red","bold":true,"italic":true}]
tellraw @a [{"text":"勝者なし","color":"gray"}]

worldborder set 1800 0
scoreboard objectives setdisplay list kill
scoreboard players reset @a playercount
clear @a

execute as @a at @s run function owgame:actions/leave
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
scoreboard players set @a head_total_1game 0
scoreboard players reset @a id
execute as @a[tag=op] run function owgame:operator/book
scoreboard players reset #redteam id
scoreboard players reset #blueteam id
scoreboard players reset #yellowteam id
scoreboard players reset #greenteam id
scoreboard players reset #purpleteam id
scoreboard players reset #orangeteam id
