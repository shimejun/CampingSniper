tag @a remove player
scoreboard players set #gametype id 2
schedule function owgame:count/5 4s
scoreboard players reset @a changelog
scoreboard players reset @a playercount
execute as @a[gamemode=adventure] at @s run scoreboard players add @a playercount 1

scoreboard players add @a[gamemode=adventure] play_total 1

worldborder set 400 0

execute as @e[tag=border_center] at @s run spreadplayers ~ ~ 120 140 false @a[gamemode=adventure]

effect give @a invisibility 20 0 true
effect give @a slowness 9 20 true
effect give @a jump_boost 9 234 true

execute as @a[gamemode=adventure] at @s run function owgame:actions/join

scoreboard players set @a immunity 1

advancement grant @a[scores={play_total=1}] only owgame:badges/play
advancement grant @a[scores={play_total=10}] only owgame:badges/10play
advancement grant @a[scores={play_total=50}] only owgame:badges/50play
advancement grant @a[scores={play_total=300}] only owgame:badges/300play
advancement grant @a[scores={play_total=1000}] only owgame:badges/1000play
advancement grant @a[scores={play_total=2000}] only owgame:badges/2000play

tellraw @a [{"text":"ゲームを開始します！","color":"green"}]

time set night
weather clear

execute if entity @e[tag=!team] run team join solo @a
