scoreboard players remove $dm_goal id 1
execute if score $dm_goal id matches ..0 run scoreboard players set $dm_goal id 1
execute as @a at @s run playsound minecraft:ui.button.click block @s ~ ~ ~ 1 1
tellraw @a [{"text":"[SETTING] デスマッチ目標キル数：","color":"green"},{"score":{"name":"$dm_goal","objective":"id"},"color":"gold"}]
