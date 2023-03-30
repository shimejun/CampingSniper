#バトルロワイアル開始
#諸々の処理
tag @a remove player
scoreboard players set #gametype id 1
schedule function owgame:count/5 4s
scoreboard players reset @a changelog
scoreboard players reset @a playercount

#プレイヤー人数を計算(store使えばいいのは知ってるけど書き直すの面倒)
execute as @a[gamemode=adventure] at @s run scoreboard players add @a playercount 1

#spreadplayersを使ってワールドボーダーの中心を設定
execute as @e[tag=border_center] at @s unless entity @e[tag=world_center] run summon marker ~ ~ ~ {Tags:["world_center"]}
execute as @e[tag=border_center] at @e[tag=world_center,limit=1] run spreadplayers ~ ~ 0 100 false @s
execute as @e[tag=border_center] at @s run worldborder center ~ ~
execute as @e[tag=border_center] at @s run setworldspawn ~ ~ ~

#プレイヤー人数に応じてボーダー初期範囲を変更
execute if entity @a[scores={playercount=2}] run worldborder set 400 0
execute if entity @a[scores={playercount=3}] run worldborder set 500 0
execute if entity @a[scores={playercount=4}] run worldborder set 600 0
execute if entity @a[scores={playercount=5}] run worldborder set 700 0
execute if entity @a[scores={playercount=6}] run worldborder set 800 0
execute if entity @a[scores={playercount=7..}] run worldborder set 900 0

#ボーダーの中心からプレイヤー分散
execute as @e[tag=border_center] at @s run spreadplayers ~ ~ 100 120 false @a[gamemode=adventure]

#エフェクトとか無敵時間とか
effect give @a invisibility 20 0 true
effect give @a slowness 9 20 true
effect give @a jump_boost 9 234 true
scoreboard players set @a immunity 30

#全員をゲーム参加状態にする
execute as @a[gamemode=adventure] at @s run function owgame:actions/join

#ワールドボーダーの色々をいじる
worldborder damage buffer 0.5
worldborder damage amount 0.001
worldborder warning distance 60

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

#チーム戦でなければsoloチームに入れる
execute if entity @e[tag=!team] run team join solo @a
