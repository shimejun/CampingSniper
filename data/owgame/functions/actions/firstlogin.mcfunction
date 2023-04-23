#初参加のスコア編集&ウェルカムメッセージ
scoreboard players set @s first_login 1

tellraw @a [{"text":"First Login!","color":"green","bold":true}]
tellraw @a [{"selector":"@s","color":"aqua","bold":true},{"text":"さんが初めてサーバーに参加しました！","color":"green","bold":false}]
tellraw @s [{"text":" "}]

tellraw @s [{"text":"WELCOME TO CAMPING SNIPER!","color":"light_purple","italic":true,"bold":true}]
tellraw @s [{"text":"注意：本ゲームには","color":"gold"},{"text":"暴力的・流血表現および残酷な描写","color":"red"},{"text":"が含まれます。","color":"gold"}]
tellraw @s [{"text":"気分を悪くされた場合はただちにゲームを中断し、休憩をとってください。","color":"gold"}]

tellraw @s [{"text":"銃声や各種SEが大きい/小さい場合は、サウンド設定からブロックの音量で調整してください。","color":"yellow"}]
tellraw @s [{"text":" "}]
tellraw @s [{"text":"ゲームのバージョン：ver 0.2.1","color":"yellow"}]

execute as @a[tag=!playing] at @s run playsound minecraft:entity.player.levelup block @s ~ ~ ~ 1 1

scoreboard players set @s health 300
scoreboard players set @s damage_total 0
scoreboard players set @s damage_total2 0
scoreboard players set @s ammoes 0
scoreboard players set @s health_max 300

execute unless entity @s[tag=playing] if entity @a[scores={playercount=2..}] run gamemode spectator
execute unless entity @s[tag=playing] if entity @a[scores={playercount=2..}] run tellraw @s [{"text":"ゲームが進行中の為、一時的に観戦モードになります…","color":"gray"}]
advancement grant @s only owgame:badges/root