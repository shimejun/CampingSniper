
#変更履歴
tellraw @s [{"text":"<前回の変更 v0.2.0→ v0.2.1>","color":"green"}]
tellraw @s [{"text":"----修正----","color":"gold"}]
tellraw @s [{"text":"・キャンプファイアを破壊しても火が残る問題を修正しました。","color":"red"}]
tellraw @s [{"text":"・キャンプファイア設置可能場所を厳密化しました。これ以降、ハーフブロックや梯子の上に設置できません。","color":"red"}]

tellraw @s [{"text":"----変更・追加----","color":"gold"}]
tellraw @s [{"text":"・射撃サウンド、ナイフ使用可能サウンドを変更しました。","color":"yellow"}]

tellraw @s [{"text":"・近接モードをエイプリルフールから通常ルールとして実装しました。","color":"green"}]

#雑多なあれこれ
scoreboard players reset @s changelog
execute at @s run playsound minecraft:ui.button.click block @s ~ ~ ~