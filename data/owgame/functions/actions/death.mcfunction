#healthスコア0で実行
#不用品削除
execute if score #gametype id matches 1 run clear @s iron_sword
execute if score #gametype id matches 1 run clear @s stick
execute if score #gametype id matches 1 run clear @s compass
execute if score #gametype id matches 1 run clear @s spyglass
execute if score #gametype id matches 1 run clear @s written_book
#残骸収納チェストトロッコ召喚
execute if score #gametype id matches 1 run summon chest_minecart ~ ~ ~ {Tags:["deadbody"],CustomName:'[{"text":"残骸"}]',Invulnerable:1b}
#ヘルメットを装備してる場合、ヘルメットを召喚
execute if score #gametype id matches 1 if entity @s[nbt={Inventory:[{id:"minecraft:leather_helmet",Slot:103b}]}] run loot spawn ~ ~ ~ loot owgame:helmet

#インベントリをチェストトロッコに代入
execute if score #gametype id matches 1 run data modify entity @e[sort=nearest,limit=1,type=chest_minecart] Items set from entity @s Inventory
loot spawn ~ ~ ~ loot owgame:head

#ゲームモード変更
gamemode spectator @s
#キルログ
execute if entity @e[tag=killer] if score #teammode id matches 0 run tellraw @a [{"text":"🏹 KILL!      ","color":"dark_aqua","bold":true},{"selector":"@a[tag=killer]","bold":true,"color":"aqua"},{"text":" >>> ","color":"white"},{"selector":"@s","color":"red","bold":true}]
execute unless entity @e[tag=killer] if score #teammode id matches 0 run tellraw @a [{"text":"⚠ Death      ","color":"dark_aqua"},{"text":" >>> ","color":"white"},{"selector":"@s","color":"red","bold":true}]
execute if entity @e[tag=killer] if score #teammode id matches 1 run tellraw @a [{"text":"🏹 KILL!      ","color":"dark_aqua","bold":true},{"selector":"@a[tag=killer]","bold":true,"color":"aqua"},{"text":" >>> ","color":"white"},{"selector":"@s","bold":true}]
execute unless entity @e[tag=killer] if score #teammode id matches 1 run tellraw @a [{"text":"⚠ Death      ","color":"dark_aqua"},{"text":" >>> ","color":"white"},{"selector":"@s","bold":true}]
tellraw @s [{"text":"死んでしまった…","color":"red"}]
title @s times 2 80 20
execute if score #gametype id matches 1 if score #teammode id matches 0 run title @s subtitle [{"text":"あなたの順位：","color":"gray"},{"score":{"name": "@s","objective": "playercount"},"color": "gold"},{"text":"位","color":"gray"}]
execute if score #gametype id matches 1 run title @s title [{"text":"YOU DIED","color":"red"}]
#生存プレイヤーから削除
execute if score #gametype id matches 1 run tag @s remove player
execute if score #gametype id matches 1 run scoreboard players remove @a playercount 1
#チームに通知
execute if entity @s[team=red] if entity @a[team=red,gamemode=adventure] run tellraw @a[team=red,distance=1..] [{"text":"味方が倒された！","color":"dark_red","bold":true}]
execute if entity @s[team=blue] if entity @a[team=blue,gamemode=adventure] run tellraw @a[team=blue,distance=1..] [{"text":"味方が倒された！","color":"dark_red","bold":true}]
execute if entity @s[team=yellow] if entity @a[team=yellow,gamemode=adventure] run tellraw @a[team=yellow,distance=1..] [{"text":"味方が倒された！","color":"dark_red","bold":true}]
execute if entity @s[team=green] if entity @a[team=green,gamemode=adventure] run tellraw @a[team=green,distance=1..] [{"text":"味方が倒された！","color":"dark_red","bold":true}]
execute if entity @s[team=purple] if entity @a[team=puprple,gamemode=adventure] run tellraw @a[team=purple,distance=1..] [{"text":"味方が倒された！","color":"dark_red","bold":true}]
execute if entity @s[team=orange] if entity @a[team=orange,gamemode=adventure] run tellraw @a[team=orange,distance=1..] [{"text":"味方が倒された！","color":"dark_red","bold":true}]

execute if entity @s[team=red] unless entity @a[team=red,gamemode=adventure] run title @a[team=red] title [{"text":"TEAM ELIMINATED","color":"red","bold":true}]
execute if entity @s[team=red] unless entity @a[team=red,gamemode=adventure] run scoreboard players set #redteam id 0
execute if entity @s[team=blue] unless entity @a[team=blue,gamemode=adventure] run title @a[team=blue] title [{"text":"TEAM ELIMINATED","color":"red","bold":true}]
execute if entity @s[team=blue] unless entity @a[team=blue,gamemode=adventure] run scoreboard players set #blueteam id 0

execute if entity @s[team=yellow] unless entity @a[team=yellow,gamemode=adventure] run title @a[team=yellow] title [{"text":"TEAM ELIMINATED","color":"red","bold":true}]
execute if entity @s[team=yellow] unless entity @a[team=yellow,gamemode=adventure] run scoreboard players set #yellowteam id 0

execute if entity @s[team=green] unless entity @a[team=green,gamemode=adventure] run title @a[team=green] title [{"text":"TEAM ELIMINATED","color":"red","bold":true}]
execute if entity @s[team=green] unless entity @a[team=green,gamemode=adventure] run scoreboard players set #greenteam id 0

execute if entity @s[team=purple] unless entity @a[team=puprple,gamemode=adventure] run title @a[team=purple] title [{"text":"TEAM ELIMINATED","color":"red","bold":true}]
execute if entity @s[team=purple] unless entity @a[team=purple,gamemode=adventure] run scoreboard players set #purpleteam id 0

execute if entity @s[team=orange] unless entity @a[team=orange,gamemode=adventure] run title @a[team=orange] title [{"text":"TEAM ELIMINATED","color":"red","bold":true}]
execute if entity @s[team=orange] unless entity @a[team=orange,gamemode=adventure] run scoreboard players set #orangeteam id 0

#SEとか色々
scoreboard players set @s health 300
playsound minecraft:entity.skeleton.death master @a ~ ~ ~
execute as @s at @s run particle minecraft:block redstone_block ~ ~ ~ 0 0 0 0 15

#自分を倒した人のキルタグを削除
tag @a remove killer
#残り生存プレイヤー1名の場合、ゲーム終了
execute if score #gametype id matches 1 if score #teammode id matches 0 if entity @a[scores={playercount=1}] run execute as @a[tag=player] at @s run function owgame:phases/end
#チーム戦の場合に終了するかの判定
execute if score #gametype id matches 1 if score #teammode id matches 1 run function owgame:phases/team_survivecheck

#デスマッチの場合、リスポーン待機
execute if score #gametype id matches 2 run scoreboard players set @s respawn_count 81
