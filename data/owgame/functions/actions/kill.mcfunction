#キルで実行

#キルスコア取得
scoreboard players add @s kill 1
scoreboard players add @s kill_total 1
execute if score #gametype id matches 2 run scoreboard players remove @s kill_limit 1
tag @s add killer
playsound minecraft:item.trident.throw block @s ~ ~ ~ 1 2
#報酬アイテム付与
give @s red_dye{bantage:1b,comsumable:1b,display:{Name:'[{"text":"包帯","color":"aqua"}]',Lore:['{"text":"効果:+100❤ 所要時間:5秒","color":"gray"}','{"text":"「応急手当の強い味方」","color":"gray","italic":true}','{"text":"体力を回復する間に合わせの包帯。"}','{"text":"スニーク長押し、または伏せた状態で持ち使用する。"}']}} 2
execute if score #gametype id matches 2 run give @s red_dye{bantage:1b,comsumable:1b,display:{Name:'[{"text":"包帯","color":"aqua"}]',Lore:['{"text":"効果:+100❤ 所要時間:5秒","color":"gray"}','{"text":"「応急手当の強い味方」","color":"gray","italic":true}','{"text":"体力を回復する間に合わせの包帯。"}','{"text":"スニーク長押し、または伏せた状態で持ち使用する。"}']}} 1

#メッセージ
tellraw @s [{"selector":"@a[scores={health=..0}]","color":"red"},{"text":"を倒した！","color":"aqua"}]

#実績
advancement grant @s[scores={kill=3..}] only owgame:badges/3kill_1game
advancement grant @s[scores={kill=5..}] only owgame:badges/5kill_1game
advancement grant @s[scores={kill=10..}] only owgame:badges/10kill_1game
advancement grant @s[scores={kill=20..}] only owgame:badges/20kill_1game

advancement grant @s[scores={kill_total=1..}] only owgame:badges/1kill
advancement grant @s[scores={kill_total=10..}] only owgame:badges/10kill
advancement grant @s[scores={kill_total=100..}] only owgame:badges/100kill
advancement grant @s[scores={kill_total=500..}] only owgame:badges/500kill
advancement grant @s[scores={kill_total=1000..}] only owgame:badges/1000kill

advancement grant @s[nbt={SelectedItem:{id:"minecraft:iron_sword"}}] only owgame:badges/knife

execute as @a[scores={health=..0}] at @s run function owgame:actions/death

#デスマッチで表示
execute if score #gametype id matches 2 if entity @s[scores={kill_limit=10}] run tellraw @a [{"selector":"@s","color":"green"},{"text":"が残り10キル！","color":"gold"}]
execute if score #gametype id matches 2 if entity @s[scores={kill_limit=5}] run tellraw @a [{"selector":"@s","color":"green"},{"text":"が残り5キル！","color":"gold"}]
execute if score #gametype id matches 2 if entity @s[scores={kill_limit=1}] run tellraw @a [{"selector":"@s","color":"green"},{"text":"が残り1キル！","color":"gold"}]
execute if score #gametype id matches 2 if entity @s[scores={kill_limit=0}] run function owgame:phases/end_2