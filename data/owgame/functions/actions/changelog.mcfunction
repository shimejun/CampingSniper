
#変更履歴
tellraw @s [{"text":"<前回の変更 v0.2.1→ v0.3.0-Alpha>","color":"green"}]
tellraw @s [{"text":"----修正----","color":"gold"}]
tellraw @s [{"text":"・弾道のサウンドが意図したものよりも大きく聞こえる問題を修正しました。","color":"red"}]

tellraw @s [{"text":"----変更・追加----","color":"gold"}]
tellraw @s [{"text":"・ナイフの攻撃力を強化しました。(40→60)","color":"yellow"}]
tellraw @s [{"text":"・弾が残っている状態でリロードを開始したとき、残弾数に応じてリロード時間を短縮するようになりました。","color":"yellow"}]
tellraw @s [{"text":"・チーム戦モードを追加しました！","color":"green"}]

#雑多なあれこれ
scoreboard players reset @s changelog
execute at @s run playsound minecraft:ui.button.click block @s ~ ~ ~