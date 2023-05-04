#スナイパー射撃
#射撃者タグを追加
tag @s add shoot

#頭上のブロックがハーフ・階段ブロックでない場合はそのまま射出
execute as @s[scores={ammo_sr=1..}] at @s if score #punch id matches 0 unless block ~ ~1 ~ #minecraft:slabs unless block ~ ~1 ~ #minecraft:stairs run function owgame:weapons/kraber/shoot
execute as @s[scores={ammo_sr=1..}] at @s if score #punch id matches 0 unless block ~ ~ ~ #minecraft:slabs unless block ~ ~ ~ #minecraft:stairs run function owgame:weapons/kraber/shoot
#頭上のブロックがハーフ・階段ブロックの場合は1ブロック先から射出
execute as @s[scores={ammo_sr=1..}] at @s if score #punch id matches 0 if block ~ ~1 ~ #minecraft:slabs run execute positioned ^ ^ ^1 run function owgame:weapons/kraber/shoot
execute as @s[scores={ammo_sr=1..}] at @s if score #punch id matches 0 if block ~ ~1 ~ #minecraft:stairs run execute positioned ^ ^ ^1 run function owgame:weapons/kraber/shoot

#拳モード有効の場合は専用の射撃function実行
execute as @s[scores={ammo_sr=1..}] at @s if score #punch id matches 1 unless block ~ ~1 ~ #minecraft:slabs unless block ~ ~1 ~ #minecraft:stairs run function owgame:weapons/kraber/shoot_punchmode
execute as @s[scores={ammo_sr=1..}] at @s if score #punch id matches 1 unless block ~ ~ ~ #minecraft:slabs unless block ~ ~ ~ #minecraft:stairs run function owgame:weapons/kraber/shoot_punchmode

execute as @s[scores={ammo_sr=1..}] at @s if score #punch id matches 1 if block ~ ~1 ~ #minecraft:slabs run execute positioned ^ ^ ^1 run function owgame:weapons/kraber/shoot_punchmode
execute as @s[scores={ammo_sr=1..}] at @s if score #punch id matches 1 if block ~ ~1 ~ #minecraft:stairs run execute positioned ^ ^ ^1 run function owgame:weapons/kraber/shoot_punchmode

#射撃時のあれこれ
execute if score #punch id matches 0 run scoreboard players set @s shootcounts 20
execute if score #punch id matches 1 run scoreboard players set @s shootcounts 15
scoreboard players remove @s[scores={ammo_sr=1..}] ammo_sr 1
playsound minecraft:entity.firework_rocket.large_blast block @a[distance=..150] ~ ~ ~ 4 1 0.1

attribute @s generic.movement_speed base set 0.06

#射撃によるアイテム置換
item replace entity @s weapon.offhand with air
execute unless entity @s[nbt={SelectedItem:{id:"minecraft:air"}}] run item replace entity @s weapon.offhand from entity @s weapon.mainhand
item replace entity @s[scores={ammo_sr=4}] weapon.mainhand with stick{sr_r:1b,reloading:0b,comsumable:1b,display:{Name:'[{"text":"スナイパーライフル","color":"red"},{"text":" | ","color":"dark_gray"},{"text":"4/4","color":"gray"}]',Lore:['{"text":"Clip:4 Body:180 Head:450 Range:300m Reload:5s","color":"gray"}','{"text":"「火力(パワー)は全てを解決する！」","color":"gray","italic":true}','{"text":"圧倒的な攻撃力を誇るスナイパーライフル。"}','{"text":"右クリックでスコープを展開する。オフハンドに持ち替えることで射撃する。"}','{"text":"一定時間スニークすると伏せることもできる。伏せ状態はジャンプすると解除される。"}']},AttributeModifiers:[{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:-0.3,Operation:1,UUID:[I;1486144296,-749059616,-1921787441,642927478],Slot:"mainhand"}]}
item replace entity @s[scores={ammo_sr=3}] weapon.mainhand with stick{sr_r:1b,reloading:0b,comsumable:1b,display:{Name:'[{"text":"スナイパーライフル","color":"red"},{"text":" | ","color":"dark_gray"},{"text":"3/4","color":"gray"}]',Lore:['{"text":"Clip:4 Body:180 Head:450 Range:300m Reload:5s","color":"gray"}','{"text":"「火力(パワー)は全てを解決する！」","color":"gray","italic":true}','{"text":"圧倒的な攻撃力を誇るスナイパーライフル。"}','{"text":"右クリックでスコープを展開する。オフハンドに持ち替えることで射撃する。"}','{"text":"一定時間スニークすると伏せることもできる。伏せ状態はジャンプすると解除される。"}']},AttributeModifiers:[{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:-0.3,Operation:1,UUID:[I;1486144296,-749059616,-1921787441,642927478],Slot:"mainhand"}]}
item replace entity @s[scores={ammo_sr=2}] weapon.mainhand with stick{sr_r:1b,reloading:0b,comsumable:1b,display:{Name:'[{"text":"スナイパーライフル","color":"red"},{"text":" | ","color":"dark_gray"},{"text":"2/4","color":"gray"}]',Lore:['{"text":"Clip:4 Body:180 Head:450 Range:300m Reload:5s","color":"gray"}','{"text":"「火力(パワー)は全てを解決する！」","color":"gray","italic":true}','{"text":"圧倒的な攻撃力を誇るスナイパーライフル。"}','{"text":"右クリックでスコープを展開する。オフハンドに持ち替えることで射撃する。"}','{"text":"一定時間スニークすると伏せることもできる。伏せ状態はジャンプすると解除される。"}']},AttributeModifiers:[{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:-0.3,Operation:1,UUID:[I;1486144296,-749059616,-1921787441,642927478],Slot:"mainhand"}]}
item replace entity @s[scores={ammo_sr=1}] weapon.mainhand with stick{sr_r:1b,reloading:0b,comsumable:1b,display:{Name:'[{"text":"スナイパーライフル","color":"red"},{"text":" | ","color":"dark_gray"},{"text":"1/4","color":"gray"}]',Lore:['{"text":"Clip:4 Body:180 Head:450 Range:300m Reload:5s","color":"gray"}','{"text":"「火力(パワー)は全てを解決する！」","color":"gray","italic":true}','{"text":"圧倒的な攻撃力を誇るスナイパーライフル。"}','{"text":"右クリックでスコープを展開する。オフハンドに持ち替えることで射撃する。"}','{"text":"一定時間スニークすると伏せることもできる。伏せ状態はジャンプすると解除される。"}']},AttributeModifiers:[{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:-0.3,Operation:1,UUID:[I;1486144296,-749059616,-1921787441,642927478],Slot:"mainhand"}]}
item replace entity @s[scores={ammo_sr=0}] weapon.mainhand with stick{sr_r:1b,reloading:0b,comsumable:1b,display:{Name:'[{"text":"スナイパーライフル","color":"red"},{"text":" | ","color":"dark_gray"},{"text":"0/4","color":"gray"}]',Lore:['{"text":"Clip:4 Body:180 Head:450 Range:300m Reload:5s","color":"gray"}','{"text":"「火力(パワー)は全てを解決する！」","color":"gray","italic":true}','{"text":"圧倒的な攻撃力を誇るスナイパーライフル。"}','{"text":"右クリックでスコープを展開する。オフハンドに持ち替えることで射撃する。"}','{"text":"一定時間スニークすると伏せることもできる。伏せ状態はジャンプすると解除される。"}']},AttributeModifiers:[{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:-0.3,Operation:1,UUID:[I;1486144296,-749059616,-1921787441,642927478],Slot:"mainhand"}]}

#的中者の処理
execute if score #punch id matches 0 run scoreboard players set @a[tag=damaged_body,tag=!shoot] damage 180
execute if score #punch id matches 1 run scoreboard players set @a[tag=damaged_body,tag=!shoot] damage 120
scoreboard players set @a[tag=damaged_head,tag=!shoot,nbt=!{Inventory:[{Slot:103b,id:"minecraft:leather_helmet"}]}] damage 450
scoreboard players set @a[tag=damaged_head,tag=!shoot,nbt={Inventory:[{Slot:103b,id:"minecraft:leather_helmet"}]}] damage 225

execute as @a[tag=damaged_body] at @s run playsound minecraft:entity.generic.explode block @s ~ ~ ~ 0.5 1
execute as @a[tag=damaged_head] at @s run playsound minecraft:entity.generic.explode block @s ~ ~ ~ 0.5 1

#ダメージとログ
execute if entity @a[tag=damaged_body,scores={immunity=0}] if score #punch id matches 0 run scoreboard players add @s damage_total 180
execute if entity @a[tag=damaged_body,scores={immunity=0}] if score #punch id matches 1 run scoreboard players add @s damage_total 120
execute if entity @a[tag=damaged_head,scores={immunity=0},nbt=!{Inventory:[{Slot:103b,id:"minecraft:leather_helmet"}]}] run scoreboard players add @s damage_total 450
execute if entity @a[tag=damaged_head,scores={immunity=0},nbt={Inventory:[{Slot:103b,id:"minecraft:leather_helmet"}]}] run scoreboard players add @s damage_total 225
execute if entity @a[tag=damaged_body,scores={immunity=0}] if score #punch id matches 0 run scoreboard players add @s damage_total2 180
execute if entity @a[tag=damaged_body,scores={immunity=0}] if score #punch id matches 1 run scoreboard players add @s damage_total2 120
execute if entity @a[tag=damaged_head,scores={immunity=0},nbt=!{Inventory:[{Slot:103b,id:"minecraft:leather_helmet"}]}] run scoreboard players add @s damage_total2 450
execute if entity @a[tag=damaged_head,scores={immunity=0},nbt={Inventory:[{Slot:103b,id:"minecraft:leather_helmet"}]}] run scoreboard players add @s damage_total2 225
execute if entity @a[tag=damaged_body,scores={immunity=0}] if score #teammode id matches 0 run tellraw @a [{"text":"❄ HIT!   ","color":"gold","bold":true},{"selector":"@s","color":"aqua"},{"text":" >>> ","color":"white"},{"selector":"@e[tag=damaged_body,tag=!shoot]","color":"red"},{"text":"  (","color":"yellow"},{"score":{"name":"@s","objective":"shoot_range"},"color":"yellow"},{"text":"m)","color":"yellow"}]
execute if entity @a[tag=damaged_head,scores={immunity=0}] if score #teammode id matches 0 run tellraw @a [{"text":"☠ HEAD SHOT!   ","color":"dark_red","bold":true},{"selector":"@s","color":"aqua"},{"text":" >>> ","color":"white"},{"selector":"@e[tag=damaged_head,tag=!shoot]","color":"red"},{"text":"  (","color":"yellow"},{"score":{"name":"@s","objective":"shoot_range"},"color":"yellow"},{"text":"m)","color":"yellow"}]
execute if entity @a[tag=damaged_body,scores={immunity=0}] if score #teammode id matches 1 run tellraw @a [{"text":"❄ HIT!   ","color":"gold","bold":true},{"selector":"@s","color":"reset"},{"text":" >>> ","color":"white"},{"selector":"@e[tag=damaged_body,tag=!shoot]"},{"text":"  (","color":"yellow"},{"score":{"name":"@s","objective":"shoot_range"},"color":"yellow"},{"text":"m)","color":"yellow"}]
execute if entity @a[tag=damaged_head,scores={immunity=0}] if score #teammode id matches 1 run tellraw @a [{"text":"☠ HEAD SHOT!   ","color":"dark_red","bold":true},{"selector":"@s","color":"reset"},{"text":" >>> ","color":"white"},{"selector":"@e[tag=damaged_head,tag=!shoot]"},{"text":"  (","color":"yellow"},{"score":{"name":"@s","objective":"shoot_range"},"color":"yellow"},{"text":"m)","color":"yellow"}]

execute as @a[tag=damaged_head,nbt={Inventory:[{id:"minecraft:leather_helmet",Slot:103b}]}] at @s run playsound minecraft:entity.item.break block @s ~ ~ ~ 2 1 1
item replace entity @a[tag=damaged_head] armor.head with air

#当たった相手が無敵の場合
execute if entity @a[tag=damaged_body,scores={immunity=1..}] run tellraw @a [{"text":"❄ HIT!   ","color":"gold","bold":true},{"selector":"@s","color":"aqua"},{"text":" >✘> ","color":"dark_gray"},{"selector":"@e[tag=damaged_body]","color":"red"},{"text":"  (","color":"yellow"},{"score":{"name":"@s","objective":"shoot_range"},"color":"yellow"},{"text":"m)","color":"yellow"}]
execute if entity @a[tag=damaged_head,scores={immunity=1..}] run tellraw @a [{"text":"☠ HEAD SHOT!   ","color":"dark_red","bold":true},{"selector":"@s","color":"aqua"},{"text":" >✘> ","color":"dark_gray"},{"selector":"@e[tag=damaged_head]","color":"red"},{"text":"  (","color":"yellow"},{"score":{"name":"@s","objective":"shoot_range"},"color":"yellow"},{"text":"m)","color":"yellow"}]
execute if entity @a[tag=damaged_head,scores={immunity=1..}] run advancement grant @s only owgame:badges/immunity
execute if entity @a[tag=damaged_body,scores={immunity=1..}] run advancement grant @s only owgame:badges/immunity

#的中SE
execute if entity @a[tag=damaged_body] run playsound minecraft:entity.arrow.hit_player block @s ~ ~ ~ 1 0.5
execute if entity @a[tag=damaged_head] run playsound minecraft:entity.arrow.hit_player block @s ~ ~ ~ 1 1

#実績系
execute if entity @a[tag=damaged_head] run advancement grant @s only owgame:badges/head
execute if entity @a[tag=damaged_head,nbt={OnGround:0b}] run advancement grant @s only owgame:badges/tosky
execute if entity @a[tag=damaged_head] if entity @s[nbt={OnGround:0b}] run advancement grant @s only owgame:badges/fromsky

execute if entity @a[tag=damaged_head] if entity @a[scores={shoot_range=100..}] run advancement grant @s only owgame:badges/long_shortshot
execute if entity @a[tag=damaged_body] if entity @a[scores={shoot_range=100..}] run advancement grant @s only owgame:badges/long_shortshot

execute if entity @a[tag=damaged_head] if entity @a[scores={shoot_range=150..}] run advancement grant @s only owgame:badges/long_head
execute if entity @a[tag=damaged_head] if entity @a[scores={shoot_range=150..}] run advancement grant @s only owgame:badges/longshot
execute if entity @a[tag=damaged_body] if entity @a[scores={shoot_range=150..}] run advancement grant @s only owgame:badges/longshot

execute if entity @a[tag=damaged_body] if entity @a[scores={shoot_range=200..}] run advancement grant @s only owgame:badges/longshot_2
execute if entity @a[tag=damaged_head] if entity @a[scores={shoot_range=200..}] run advancement grant @s only owgame:badges/longshot_2
execute if entity @a[tag=damaged_head] if entity @a[scores={shoot_range=200..}] run advancement grant @s only owgame:badges/long_head2

execute if entity @a[tag=damaged_body] if entity @a[scores={shoot_range=250..}] run advancement grant @s only owgame:badges/ultra_longshot
execute if entity @a[tag=damaged_head] if entity @a[scores={shoot_range=250..}] run advancement grant @s only owgame:badges/ultra_longshot

execute if entity @a[tag=damaged_head] if entity @a[scores={shoot_range=..5}] run advancement grant @s only owgame:badges/shotgun

execute if entity @a[tag=damaged_head,nbt={SelectedItem:{id:"minecraft:iron_sword"}}] if entity @a[scores={shoot_range=..15}] run advancement grant @s only owgame:badges/knife_bad
execute if entity @a[tag=damaged_body,nbt={SelectedItem:{id:"minecraft:iron_sword"}}] if entity @a[scores={shoot_range=..15}] run advancement grant @s only owgame:badges/knife_bad

execute if entity @a[tag=damaged_head] run scoreboard players add @s head_total_1game 1
execute if entity @s[scores={head_total_1game=3}] run advancement grant @s only owgame:badges/headhunter

execute if score @s damage_total matches 700.. run advancement grant @s only owgame:badges/precision
execute if score @s damage_total matches 1100.. run advancement grant @s only owgame:badges/precision_2

#的中タグを削除
tag @a remove damaged_body
tag @a remove damaged_head
scoreboard players reset @s shoot_range

#的中先の体力減少、キル判定
execute as @a[scores={damage=1..}] run function owgame:health
execute if entity @e[scores={health=..0}] run function owgame:actions/kill

#下を向いてたらちょっと浮かび上がる
execute if score #punch id matches 1 if score @s looking matches 60.. run effect give @s levitation 1 50 true

#視点をぶれさせる
execute if score #punch id matches 0 run tp @s ~ ~ ~ ~6.5 ~-10
execute if score #punch id matches 1 run tp @s ~ ~ ~ ~8.5 ~-14

#射撃者タグを削除
tag @s remove shoot