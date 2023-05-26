
#変更履歴
tellraw @s [{"text":"<前回の変更 v0.3.0→ v0.3.1>","color":"green"}]
tellraw @s [{"text":"----修正----","color":"gold"}]
tellraw @s [{"text":"・水中を泳いでいる間、当たり判定が正しい位置に発生しない問題を修正しました。","color":"red"}]
tellraw @s [{"text":"・勝利関連の実績の達成条件に関する問題を修正しました。","color":"red"}]
tellraw @s [{"text":"・救援物資が大量に落ちてくる問題を修正しました。","color":"red"}]
tellraw @s [{"text":"・ナイフでヘルメットを破壊できる問題を修正しました。","color":"red"}]

tellraw @s [{"text":"----変更・追加----","color":"gold"}]
tellraw @s [{"text":"・ヘッドショット判定を0.1ブロック下げました。","color":"yellow"}]
tellraw @s [{"text":"・水中でダメージを受けるようになりました。","color":"yellow"}]
tellraw @s [{"text":"・試験的に射撃パーティクルを変更しました。","color":"yellow"}]
tellraw @s [{"text":"・公式表現を変更しました。「補給物資」→『救援物資』","color":"yellow"}]

#雑多なあれこれ
scoreboard players reset @s changelog
execute at @s run playsound minecraft:ui.button.click block @s ~ ~ ~