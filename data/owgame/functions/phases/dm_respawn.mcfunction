#デスマッチのリスポーン

#復活地点へ分散
spreadplayers ~ ~ 100 200 true @s

#アイテム配布
clear @s
function owgame:weapons/kraber/get
function owgame:weapons/knife/get
give @s red_dye{bantage:1b,comsumable:1b,display:{Name:'[{"text":"包帯","color":"aqua"}]',Lore:['{"text":"効果:+100❤ 所要時間:5秒","color":"gray"}','{"text":"「応急手当の強い味方」","color":"gray","italic":true}','{"text":"体力を回復する間に合わせの包帯。"}','{"text":"スニーク長押し、または伏せた状態で持ち使用する。"}']}} 2

#スコアリセット
scoreboard players set @s health 300
scoreboard players set @s ammo_sr 4
scoreboard players set @s ammoes_max 4
tag @s add playing

#見た目の部分
title @s subtitle [{"text":" "}]
title @s title [{"text":"GO!","color":"green","bold":true}]
title @s times 0 20 5

#ゲームモードのリセット
gamemode adventure @s
