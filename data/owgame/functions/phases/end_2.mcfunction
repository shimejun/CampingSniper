#デスマッチ終了(勝者が実行)

#見た目の部分
title @a times 20 60 20
title @a subtitle [{"text":"Winner:","color":"gold","bold":true},{"selector":"@s","color":"aqua"}]
title @a title [{"text":"GAME SET!","color":"gold","bold":true,"italic":true}]
tellraw @a [{"text":"Winner: ","color":"gold"},{"selector":"@s","color":"aqua"}]
execute as @a at @s run playsound minecraft:ui.toast.challenge_complete block @s ~ ~ ~ 1 1

function owgame:reset
execute as @a[team=op] run function owgame:operator/book
