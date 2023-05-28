#ゲームリセット
tag @a remove player
scoreboard players set @a health 300
scoreboard players set @a damage_total 0
scoreboard players set @s damage_total2 0
scoreboard players set @a health_max 300
scoreboard players set @a kill 0
scoreboard players reset @a kill_limit
scoreboard objectives setdisplay sidebar

execute as @a at @s run function owgame:actions/leave
kill @e[tag=hit_body]
kill @e[tag=hit_head]
kill @e[tag=package]
kill @e[tag=supply]

tag @a remove playing
execute as @a at @s run playsound minecraft:ui.toast.challenge_complete block @s ~ ~ ~ 1 1
kill @e[type=chest_minecart]
kill @e[type=item]
execute as @e[tag=campfire] at @s run setblock ~ ~ ~ air replace
execute as @e[tag=campfire] at @s run kill @s

schedule clear owgame:actions/sec
schedule clear owgame:phases/cp_spawn

gamemode adventure @a
schedule clear owgame:phases/showdown
schedule clear owgame:phases/endgame
schedule clear owgame:phases/endgame2
team leave @a
scoreboard players set @a head_total_1game 0
scoreboard players reset @a id