
#変更履歴
tellraw @s [{"text":"<前回の変更 v0.1.3→ v0.1.4>","color":"green"}]
tellraw @s [{"text":"----修正----","color":"gold"}]
tellraw @s [{"text":"・跳弾バグへの対策を行いました。","color":"red"}]
tellraw @s [{"text":"・伏せ状態の時、ブロックに密着した状態で射撃すると弾丸が貫通する問題を修正しました。","color":"red"}]
tellraw @s [{"text":"・デスマッチモードで、満腹度が通常通り減少する問題を修正しました。","color":"red"}]

tellraw @s [{"text":"----変更・追加----","color":"gold"}]
tellraw @s [{"text":"・水に潜ることによるペナルティダメージを削除しました。","color":"yellow"}]
tellraw @s [{"text":"・包帯の使用完了音をより適切なものに変更し、周囲に聞こえるように変更しました。","color":"yellow"}]
tellraw @s [{"text":"・射撃時の移動速度低下を強くしました。","color":"yellow"}]
tellraw @s [{"text":"・弾の音が聞こえる範囲を最適化しました。 (着弾点、弾道付近のプレイヤーにのみ聞こえるようになりました。これにより、サウンド上限超過によって重要なサウンドが聞こえなくなる問題を対策しました。)","color":"yellow"}]
tellraw @s [{"text":"・ヘッドショットの判定を改善しました。","color":"yellow"}]

tellraw @s [{"text":"・デスマッチモードで、復活する可能性のある範囲を拡大しました。","color":"yellow"}]
tellraw @s [{"text":"・デスマッチモードで、キルした時に獲得する包帯を増やしました。","color":"yellow"}]
tellraw @s [{"text":"・デスマッチモードで、リスポーン時の表示を変更しました。","color":"yellow"}]

tellraw @s [{"text":"・実績を複数追加しました。","color":"green"}]

#雑多なあれこれ
scoreboard players reset @s changelog
execute at @s run playsound minecraft:ui.button.click block @s ~ ~ ~