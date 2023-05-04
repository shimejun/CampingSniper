#healthスコア0で実行
#不用品削除
execute if score #gametype id matches 1 run clear @s iron_sword
execute if score #gametype id matches 1 run clear @s stick
execute if score #gametype id matches 1 run clear @s compass
execute if score #gametype id matches 1 run clear @s spyglass
execute if score #gametype id matches 1 run clear @s written_book
#残骸収納チェストトロッコ召喚
execute if score #gametype id matches 1 run summon chest_minecart ~ ~ ~ {Tags:["deadbody"],CustomName:'[{"text":"残骸"}]'}
execute if score #gametype id matches 1 if entity @s[nbt={Inventory:[{id:"minecraft:leather_helmet",Slot:103b}]}] run loot spawn ~ ~ ~ loot owgame:helmet

#インベントリをチェストトロッコに代入
execute if score #gametype id matches 1 run data modify entity @e[sort=nearest,limit=1,type=chest_minecart] Items set from entity @s Inventory
loot spawn ~ ~ ~ loot owgame:head

#ゲームモード変更
gamemode spectator @s
#キルログ
execute if entity @e[tag=killer] run tellraw @a [{"text":"🏹 KILL!      ","color":"dark_aqua","bold":true},{"selector":"@a[tag=killer]","bold":true,"color":"aqua"},{"text":" >>> ","color":"white"},{"selector":"@s","color":"red","bold":true}]
execute unless entity @e[tag=killer] run tellraw @a [{"text":"⚠ Death      ","color":"dark_aqua"},{"text":" >>> ","color":"white"},{"selector":"@s","color":"red","bold":true}]
tellraw @s [{"text":"死んでしまった…","color":"red"}]
title @s times 2 80 20
execute if score #gametype id matches 1 run title @s subtitle [{"text":"あなたの順位：","color":"gray"},{"score":{"name": "@s","objective": "playercount"},"color": "gold"},{"text":"位","color":"gray"}]
execute if score #gametype id matches 1 run title @s title [{"text":"YOU DIED","color":"red"}]
#生存プレイヤーから削除
execute if score #gametype id matches 1 run tag @s remove player
execute if score #gametype id matches 1 run scoreboard players remove @a playercount 1


#SEとか色々
scoreboard players set @s health 300
playsound minecraft:entity.skeleton.death master @a ~ ~ ~
execute as @s at @s run particle minecraft:block redstone_block ~ ~ ~ 0 0 0 0 15

#自分を倒した人のキルタグを削除
tag @a remove killer
#残り生存プレイヤー1名の場合、ゲーム終了
execute if score #gametype id matches 1 if entity @a[scores={playercount=1}] run execute as @a[tag=player] at @s run function owgame:phases/end
#デスマッチの場合、リスポーン待機
execute if score #gametype id matches 2 run scoreboard players set @s respawn_count 81
