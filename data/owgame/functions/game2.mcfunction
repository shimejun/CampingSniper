#デスマッチ開始
#諸々の処理
tag @a remove player
scoreboard players set #gametype id 2
schedule function owgame:count/5 4s
scoreboard players reset @a changelog
scoreboard players reset @a playercount

#store result使え
execute as @a[gamemode=adventure] at @s run scoreboard players add @a playercount 1

#ワールドボーダーは固定、中心地点は前回のゲームから変更しない
worldborder set 400 0

#プレイヤー分散
execute as @e[tag=border_center] at @s run spreadplayers ~ ~ 120 140 false @a[gamemode=adventure]

#エフェクトとか
effect give @a[gamemode=adventure] invisibility 20 0 true
effect give @a[gamemode=adventure] slowness 9 20 true
effect give @a[gamemode=adventure] jump_boost 9 234 true

#全員をゲーム参加状態にする
execute as @a[gamemode=adventure] at @s run function owgame:actions/join

#進捗関連
scoreboard players add @a[gamemode=adventure] play_total 1
advancement grant @a[scores={play_total=1}] only owgame:badges/play
advancement grant @a[scores={play_total=10}] only owgame:badges/10play
advancement grant @a[scores={play_total=50}] only owgame:badges/50play
advancement grant @a[scores={play_total=300}] only owgame:badges/300play
advancement grant @a[scores={play_total=1000}] only owgame:badges/1000play
advancement grant @a[scores={play_total=2000}] only owgame:badges/2000play

#メッセージ
tellraw @a [{"text":"ゲームを開始します！","color":"green"}]

#見た目の部分
time set night
weather clear

#soloチームに入れる
team join solo @a[gamemode=adventure]
