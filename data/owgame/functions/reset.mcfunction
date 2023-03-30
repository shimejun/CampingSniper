tag @a remove player
scoreboard players set @a health 300
scoreboard players set @a damage_total 0
scoreboard players set @s damage_total2 0
scoreboard players set @a health_max 300
scoreboard players set @a kill 0
scoreboard players reset @a kill_limit

kill @e[tag=hit_body]
kill @e[tag=hit_head]
