#ゲーム参加コマンド
scoreboard players set @s health 300
scoreboard players set @s damage_total 0
scoreboard players set @s damage_total2 0
scoreboard players set @s ammoes 0
scoreboard players set @s health_max 300
scoreboard players set @s reload_sr 0
scoreboard players set @s sneak 0


execute if entity @s[tag=!player] run summon minecraft:marker ~ ~1.1 ~ {Invulnerable:1b,Tags:["hit_body"]}
execute if score #punch id matches 0 if entity @s[tag=!player] run summon minecraft:marker ~ ~1.7 ~ {Invulnerable:1b,Tags:["hit_head"]}

execute store result score @e[type=marker,sort=nearest,tag=hit_body,limit=1] id run data get entity @s UUID[1]
execute store result score @e[type=marker,sort=nearest,tag=hit_head,limit=1] id run data get entity @s UUID[1]

execute store result score @s id run data get entity @s UUID[1]
effect give @s resistance infinite 4 true

tag @s add player