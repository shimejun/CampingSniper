#ゲーム中0.5秒毎に実行

#キャンプファイア関連
#燃えている場合の回復効果
execute as @e[tag=lit_campfire] at @s run scoreboard players set @a[distance=..5,scores={health=297..299}] health 300
execute as @e[tag=lit_campfire] at @s run scoreboard players add @a[distance=..5,scores={health=..297}] health 3
#燃える残り時間スコアを減少
scoreboard players remove @e[tag=lit_campfire] camp_timeleft 1
#燃えていない場合の回復効果
execute as @e[tag=!lit_campfire,tag=campfire] at @s run scoreboard players add @a[distance=..2.5,scores={health=..299}] health 1
#燃える残り時間スコアが0になった場合の処理
execute as @e[tag=lit_campfire] at @s if entity @s[scores={camp_timeleft=..0}] if block ~ ~ ~ campfire run setblock ~ ~ ~ campfire[lit=false]
execute as @e[tag=lit_campfire] at @s if entity @s[scores={camp_timeleft=..0}] run tag @s remove lit_campfire
execute as @e[tag=campfire,tag=!lit_campfire] at @s run particle minecraft:small_flame ~ ~ ~ 0 0 0 0 1

#無敵時間の減少
scoreboard players remove @a[scores={immunity=1..}] immunity 1
#ゲーム開始時の空腹はコレ
effect give @a[scores={immunity=29,hunger=19..}] hunger 4 100
effect clear @a[scores={immunity=1..,hunger=..17}] hunger

#再生エフェクトで体力自然回復
execute as @a[nbt={ActiveEffects:[{Id:10}]},scores={health=297..299}] at @s run scoreboard players set @s health 300
execute as @a[nbt={ActiveEffects:[{Id:10}]},scores={health=..296}] at @s run scoreboard players add @s health 4

#補給物資
execute if entity @e[tag=supply] at @e[tag=package] run particle minecraft:end_rod ~ ~ ~ 0 40 0 0 80 force @a[distance=10..200]
execute as @e[tag=supply] at @s if data entity @s {Items:[]} run kill @s
execute as @e[tag=supply] at @s if block ~ ~-1 ~ air run data merge entity @s {Motion:[0.0,-0.1,0.0]}

#0.5秒毎に実行
schedule function owgame:actions/campfire_actions 10t