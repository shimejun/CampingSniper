#弾丸の挙動
#実行回数分スコアを追加(=的中先との距離)
execute unless entity @a[tag=damaged_head,gamemode=adventure] unless entity @a[tag=damaged_body,gamemode=adventure] run scoreboard players add @s shoot_range 1

#当たり判定が付近にある場合、ダメージタグを対象に付与
execute if block ~ ~1.5 ~ #owgame:noblock anchored eyes positioned ^ ^ ^1 if entity @e[tag=hit_head,distance=..0.35] unless score @e[tag=hit_head,sort=nearest,limit=1] id = @s id run tag @a[sort=nearest,tag=player,limit=1,distance=..3,tag=!damaged_head,tag=!damaged_body] add damaged_head
execute if block ~ ~1.5 ~ #owgame:noblock anchored eyes positioned ^ ^ ^1 if entity @e[tag=hit_body,distance=..0.65] unless score @e[tag=hit_body,sort=nearest,limit=1] id = @s id unless entity @e[tag=hit_head,distance=..0.35] run tag @a[sort=nearest,tag=player,limit=1,distance=..3,tag=!damaged_body,tag=!damaged_head] add damaged_body

#命中した人がいる場合、または#owgame:noblockのブロック以外に当たるまで1ブロック正面で繰り返し
execute if score @s sneak matches ..9 if block ~ ~1.5 ~ #owgame:noblock unless entity @a[tag=damaged_head,distance=..3] unless entity @a[tag=damaged_body,distance=..3] positioned ^ ^ ^1 if entity @s[distance=..300] run function owgame:weapons/kraber/shoot
execute if score @s sneak matches 10.. if block ~ ~0.5 ~ #owgame:noblock unless entity @a[tag=damaged_head,distance=..3] unless entity @a[tag=damaged_body,distance=..3] positioned ^ ^ ^1 if entity @s[distance=..300] run function owgame:weapons/kraber/shoot

#飾り
execute if block ~ ~1.5 ~ #owgame:noblock anchored eyes positioned ^ ^ ^1 run particle minecraft:cloud ~ ~ ~ 0 0 0 0 1 force @a[distance=2..]
execute if score @s sneak matches ..9 unless block ~ ~1.5 ~ #owgame:noblock anchored eyes positioned ^ ^ ^1 run playsound minecraft:entity.generic.explode block @a[distance=..50] ~ ~ ~ 1 1 0.3
execute if score @s sneak matches 10.. unless block ~ ~0.5 ~ #owgame:noblock anchored eyes positioned ^ ^ ^1 run playsound minecraft:entity.generic.explode block @a[distance=..50] ~ ~ ~ 1 1 0.3

execute if block ~ ~1.5 ~ #owgame:noblock anchored eyes positioned ^ ^ ^1 as @a[distance=..7,tag=!shoot] at @s run playsound minecraft:entity.iron_golem.attack block @s ~ ~ ~ 4 2 1
execute if block ~ ~0.5 ~ #owgame:noblock anchored eyes positioned ^ ^ ^1 as @a[distance=..7,tag=!shoot] at @s run playsound minecraft:entity.iron_golem.attack block @s ~ ~ ~ 4 2 1

#ブロック破壊
execute if block ~ ~1.5 ~ #owgame:noblock anchored eyes positioned ^ ^ ^1 if block ~ ~ ~ glass run playsound minecraft:block.glass.break block @a ~ ~ ~ 4 0.5
execute if block ~ ~1.5 ~ #owgame:noblock anchored eyes positioned ^ ^ ^1 if block ~ ~ ~ glass run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 air replace glass
execute if block ~ ~1.5 ~ #owgame:noblock anchored eyes positioned ^ ^ ^1 if block ~ ~ ~ glass_pane run playsound minecraft:block.glass.break block @a ~ ~ ~ 4 0.5
execute if block ~ ~1.5 ~ #owgame:noblock anchored eyes positioned ^ ^ ^1 if block ~ ~ ~ glass_pane run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 air replace glass_pane
execute if block ~ ~1.5 ~ #owgame:noblock anchored eyes positioned ^ ^ ^1 if block ~ ~ ~ #minecraft:wooden_doors run playsound minecraft:block.wood.break block @a ~ ~ ~ 5 0.5
execute if block ~ ~1.5 ~ #owgame:noblock anchored eyes positioned ^ ^ ^1 if block ~ ~ ~ #minecraft:wooden_doors run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 air replace #minecraft:wooden_doors
execute if block ~ ~1.5 ~ #owgame:noblock anchored eyes positioned ^ ^ ^1 if block ~ ~ ~ minecraft:campfire run playsound minecraft:block.wood.break block @a ~ ~ ~ 5 0.5
execute if block ~ ~1.5 ~ #owgame:noblock anchored eyes positioned ^ ^ ^1 if block ~ ~ ~ minecraft:campfire run kill @e[type=marker,distance=..2,tag=camp]
execute if block ~ ~1.5 ~ #owgame:noblock anchored eyes positioned ^ ^ ^1 if block ~ ~ ~ minecraft:campfire run advancement grant @s only owgame:badges/break_camp
execute if block ~ ~1.5 ~ #owgame:noblock anchored eyes positioned ^ ^ ^1 if block ~ ~ ~ minecraft:campfire run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 air replace minecraft:campfire

