
#変更履歴
tellraw @s [{"text":"<前回の変更 v0.1.4→ v0.2.0>","color":"green"}]
tellraw @s [{"text":"----修正----","color":"gold"}]
tellraw @s [{"text":"・石柵の上で伏せることができる問題を修正しました。","color":"red"}]

tellraw @s [{"text":"----変更・追加----","color":"gold"}]
tellraw @s [{"text":"・潜水ペナルティを削除しました。(水中でのアイテム使用は今まで通りできません)","color":"yellow"}]

tellraw @s [{"text":"・実績を複数追加しました。","color":"green"}]
tellraw @s [{"text":"・バトルロワイヤルモードで、死亡時のタイトル表示を追加しました。","color":"green"}]
tellraw @s [{"text":"・ちょっと特殊なルールを追加しました。エイプリルフールだけど平日も楽しめるようにはした…と思う。","color":"green"}]

#雑多なあれこれ
scoreboard players reset @s changelog
execute at @s run playsound minecraft:ui.button.click block @s ~ ~ ~