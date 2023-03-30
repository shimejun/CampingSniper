#参加状態から離脱
tag @s remove player

tellraw @s [{"text":"参加状態から離脱しました。","color":"green"}]
kill @e[tag=hit_body,sort=nearest,limit=1]
kill @e[tag=hit_head,sort=nearest,limit=1]
scoreboard players set @s damage_total2 0
scoreboard players set @s health 300
