clear @a

execute as @a at @s run function owgame:weapons/kraber/get
execute as @a at @s run function owgame:weapons/knife/get

give @a red_dye{bantage:1b,comsumable:1b,display:{Name:'[{"text":"包帯","color":"aqua"}]',Lore:['{"text":"効果:+100❤ 所要時間:5秒","color":"gray"}','{"text":"「応急手当の強い味方」","color":"gray","italic":true}','{"text":"体力を回復する間に合わせの包帯。"}','{"text":"スニーク長押し、または伏せた状態で持ち使用する。"}']}} 2

scoreboard players set @a damage_total 0
scoreboard players set @a damage_total2 0
scoreboard players set @a health 300
scoreboard players set @a kill 0
scoreboard players set @a ammo_sr 4
scoreboard players set @a ammoes_max 4
scoreboard players set @a immunity 0
tag @a add playing
kill @e[type=chest_minecart]
kill @e[type=item]

title @a title [{"text":"GAME START!","color":"aqua","bold":true,"italic":true}]
execute as @a at @s run playsound minecraft:entity.generic.explode block @s ~ ~ ~ 1 1
scoreboard players operation @a[gamemode=adventure] kill_limit = $dm_goal id
scoreboard objectives setdisplay sidebar kill_limit