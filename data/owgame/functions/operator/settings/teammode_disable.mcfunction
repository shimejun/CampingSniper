scoreboard players set #teammode id 0
tellraw @a [{"text":"チーム戦モードが無効になりました。","color":"red"}]
execute if score #teammode id matches 1 if entity @a[team=red] run scoreboard players set #redteam id 0
execute if score #teammode id matches 1 if entity @a[team=blue] run scoreboard players set #blueteam id 0
execute if score #teammode id matches 1 if entity @a[team=yellow] run scoreboard players set #yellowteam id 0
execute if score #teammode id matches 1 if entity @a[team=green] run scoreboard players set #greenteam id 0
execute if score #teammode id matches 1 if entity @a[team=purple] run scoreboard players set #purpleteam id 0
execute if score #teammode id matches 1 if entity @a[team=orange] run scoreboard players set #orangeteam id 0
team leave @a