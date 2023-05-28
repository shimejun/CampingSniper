
#変更履歴
tellraw @s [{"text":"<前回の変更 v0.3.1→ v0.3.2>","color":"green"}]
tellraw @s [{"text":"----修正----","color":"gold"}]
tellraw @s [{"text":"・弾がブロックの角を貫通する問題へ対策を行いました。","color":"red"}]

tellraw @s [{"text":"----変更・調整----","color":"gold"}]
tellraw @s [{"text":"・従来よりも正確な命中判定が行われるようになりました。 (弾の的中判定を1m→0.5mごとに行うようになりました。)","color":"yellow"}]
tellraw @s [{"text":"・弾が階段ブロックを貫通するようになりました。","color":"yellow"}]
tellraw @s [{"text":"・チーム振り分け時、自動でチーム戦モードに変更されるようになりました。","color":"yellow"}]
tellraw @s [{"text":"・ナイフの使用可能音を変更しました。","color":"yellow"}]
tellraw @s [{"text":"・復活チケットの説明文を変更しました。","color":"yellow"}]
tellraw @s [{"text":"・一部進捗の達成条件を変更しました。","color":"yellow"}]

tellraw @s [{"text":"----追加----","color":"gold"}]
tellraw @s [{"text":"・射撃時にフラッシュが発生するようになりました。","color":"green"}]
tellraw @s [{"text":"・変更履歴のレイアウトを一部変更しました。","color":"green"}]
tellraw @s [{"text":"・一部実績を追加しました。","color":"green"}]

#雑多なあれこれ
scoreboard players reset @s changelog
execute at @s run playsound minecraft:ui.button.click block @s ~ ~ ~