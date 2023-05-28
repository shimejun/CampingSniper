#弾丸の挙動
#ブロックの有無を確認
scoreboard players set @s _ 0
execute if block ~0.1 ~0.1 ~0.1 #owgame:noblock if block ~0.1 ~0.1 ~-0.1 #owgame:noblock if block ~-0.1 ~0.1 ~0.1 #owgame:noblock if block ~0.1 ~0.1 ~-0.1 #owgame:noblock if block ~-0.1 ~0.1 ~-0.1 #owgame:noblock if block ~0.1 ~ ~0.1 #owgame:noblock if block ~-0.1 ~ ~0.1 #owgame:noblock if block ~0.1 ~ ~-0.1 #owgame:noblock if block ~-0.1 ~ ~-0.1 #owgame:noblock unless entity @a[tag=damaged_head,distance=..3] unless entity @a[tag=damaged_body,distance=..3] positioned ^ ^ ^1 if entity @s[distance=..300] run scoreboard players set @s _ 1

#実行回数分スコアを追加(=的中先との距離)
execute if score @s _ matches 1 run scoreboard players add @s shoot_range 1

#当たり判定が付近にある場合、ダメージタグを対象に付与
execute if score @s _ matches 1 if entity @e[tag=hit_head,distance=..0.35] unless score @e[tag=hit_head,sort=nearest,limit=1] id = @s id run tag @a[sort=nearest,tag=player,limit=1,distance=..3,tag=!damaged_head,tag=!damaged_body] add damaged_head
execute if score @s _ matches 1 if entity @e[tag=hit_body,distance=..0.65] unless score @e[tag=hit_body,sort=nearest,limit=1] id = @s id unless entity @e[tag=hit_head,distance=..0.35] run tag @a[sort=nearest,tag=player,limit=1,distance=..3,tag=!damaged_body,tag=!damaged_head] add damaged_body

#飾り
execute if score @s _ matches 1 run particle minecraft:cloud ~ ~ ~ 0 0 0 0 1 force @a[distance=2..300]
execute if score @s _ matches 0 run playsound minecraft:entity.generic.explode block @a[distance=..50] ~ ~ ~ 1 1 0.3
execute if score @s _ matches 0 unless entity @a[tag=hit_head] unless entity @a[tag=hit_body] run particle block stone ~ ~ ~ 0.4 0.4 0.4 0 60 force @a[distance=..100]

execute if score @s _ matches 1 as @a[distance=..12,tag=!shoot] at @s run playsound minecraft:entity.iron_golem.attack block @s ~ ~ ~ 0.01 2 1

#ブロック破壊
execute if score @s _ matches 1 if block ~ ~ ~ glass run playsound minecraft:block.glass.break block @a ~ ~ ~ 4 0.5
execute if score @s _ matches 1 if block ~ ~ ~ glass run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 air replace glass
execute if score @s _ matches 1 if block ~ ~ ~ glass_pane run playsound minecraft:block.glass.break block @a ~ ~ ~ 4 0.5
execute if score @s _ matches 1 if block ~ ~ ~ glass_pane run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 air replace glass_pane
execute if score @s _ matches 1 if block ~ ~ ~ #minecraft:wooden_doors run playsound minecraft:block.wood.break block @a ~ ~ ~ 5 0.5
execute if score @s _ matches 1 if block ~ ~ ~ #minecraft:wooden_doors run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 air replace #minecraft:wooden_doors
execute if score @s _ matches 1 if block ~ ~ ~ minecraft:campfire run playsound minecraft:block.wood.break block @a ~ ~ ~ 5 0.5
execute if score @s _ matches 1 if block ~ ~ ~ minecraft:campfire run kill @e[type=marker,distance=..2,tag=campfire]
execute if score @s _ matches 1 if block ~ ~ ~ minecraft:campfire run advancement grant @s only owgame:badges/break_camp
execute if score @s _ matches 1 if block ~ ~ ~ minecraft:campfire run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 air replace minecraft:campfire

#命中した人がいる場合、または#owgame:noblockのブロック以外に当たるまで0.5ブロック正面で繰り返し
execute if score @s _ matches 1 positioned ^ ^ ^0.5 run function owgame:weapons/kraber/shoot