#ログインメッセージ
scoreboard players set @s login 0
tellraw @s [{"text":"     WELCOME TO CAMPING SNIPER!     ","color":"light_purple","italic":true}]
tellraw @s [{"text":"注意：本ゲームには","color":"gold"},{"text":"暴力的表現","color":"red"},{"text":"が含まれます。","color":"gold"}]
tellraw @s [{"text":"気分を悪くされた場合はただちにゲームを中断し、休憩をとってください。","color":"gold"}]

tellraw @s [{"text":" "}]

tellraw @a [{"selector":"@s","color":"yellow"},{"text":"さんがサーバーに参加しました！","color":"green"}]

execute as @a[tag=!playing] at @s run playsound minecraft:entity.player.levelup block @s ~ ~ ~ 1 1

scoreboard players enable @s changelog
tellraw @s [{"text":"ゲームのバージョン：ver 0.3.2  ","color":"yellow"},{"text":"[クリックして前回の変更を閲覧]","color":"light_purple","clickEvent":{"action":"run_command","value":"/trigger changelog"}}]
effect give @s resistance infinite 4 true

execute if entity @a[scores={playercount=2..}] unless entity @s[tag=playing] run gamemode spectator
execute if entity @a[scores={playercount=2..}] unless entity @s[tag=playing] run tellraw @s [{"text":"ゲームが進行中の為、一時的に観戦モードになります…","color":"gray"}]