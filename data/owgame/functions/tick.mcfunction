#毎tick実行(可能な限り減らしたい)
#当たり判定
execute as @a at @s if score @s id = @e[tag=hit_body,sort=nearest,limit=1] id run tp @e[sort=nearest,limit=1,tag=hit_body] ~ ~1 ~
execute as @e[tag=hit_body] at @s unless score @p id = @s id run tp @s @r[gamemode=!spectator]
execute as @e[tag=hit_head] at @s unless score @p id = @s id run tp @s @r[gamemode=!spectator]

execute as @a[predicate=!owgame:sneak,scores={sneak=..9}] at @s if score @s id = @e[tag=hit_head,sort=nearest,limit=1] id run tp @e[sort=nearest,limit=1,tag=hit_head] ~ ~1.8 ~
execute as @a[predicate=owgame:sneak,scores={sneak=..9}] at @s if score @s id = @e[tag=hit_head,sort=nearest,limit=1] id run tp @e[sort=nearest,limit=1,tag=hit_head] ~ ~1.5 ~
execute as @a[predicate=!owgame:sneak,scores={sneak=..9}] at @s unless score @s id = @e[tag=hit_head,sort=nearest,limit=1] id run tp @e[sort=nearest,limit=1,tag=hit_head] @a[sort=random,distance=1..,limit=1,gamemode=!spectator]
execute as @a[predicate=owgame:sneak,scores={sneak=..9}] at @s unless score @s id = @e[tag=hit_head,sort=nearest,limit=1] id run tp @e[sort=nearest,limit=1,tag=hit_head] @a[sort=random,distance=1..,limit=1,gamemode=!spectator]

execute as @a[scores={sneak=10}] at @s if score @s id = @e[tag=hit_body,sort=nearest,limit=1] id run tp @e[sort=nearest,limit=1,tag=hit_body] ~ ~0.45 ~
execute as @a[scores={sneak=10}] at @s if score @s id = @e[tag=hit_head,sort=nearest,limit=1] id positioned ~ ~0.65 ~ run tp @e[sort=nearest,limit=1,tag=hit_head] ^ ^ ^0.35
execute as @a[scores={sneak=10}] at @s unless score @s id = @e[tag=hit_body,sort=nearest,limit=1] id run tp @e[sort=nearest,limit=1,tag=hit_body] @a[sort=random,distance=1..,limit=1]
execute as @a[scores={sneak=10}] at @s unless score @s id = @e[tag=hit_head,sort=nearest,limit=1] id positioned ~ ~0.65 ~ run tp @e[sort=nearest,limit=1,tag=hit_head] @a[sort=random,distance=1..,limit=1]

#ナイフ
effect give @a[nbt=!{SelectedItem:{id:"minecraft:iron_sword",tag:{knife:1b}}}] weakness 3 5 true
execute as @a[nbt={SelectedItem:{id:"minecraft:iron_sword",tag:{knife:1b}},ActiveEffects:[{Id:18,Duration:2}]}] at @s run function owgame:weapons/knife/time

#雑多な奴
function owgame:actions/ammoes
function owgame:phases/area_damage
execute as @a at @s run function owgame:items/item_using
execute as @a at @s store result score @s looking run data get entity @s Rotation[1]

#伏せ
execute as @a[predicate=owgame:sneak,nbt={SelectedItem:{id:"minecraft:spyglass"},OnGround:1b}] at @s unless block ~ ~-1 ~ air unless block ~ ~1 ~ #minecraft:slabs if block ~ ~ ~ #owgame:noblock unless block ~ ~-1 ~ #minecraft:walls run function owgame:actions/down
execute as @a[predicate=owgame:sneak,nbt={SelectedItem:{id:"minecraft:stick"},OnGround:1b}] at @s unless block ~ ~-1 ~ air unless block ~ ~1 ~ #minecraft:slabs if block ~ ~ ~ #owgame:noblock unless block ~ ~-1 ~ #minecraft:walls run function owgame:actions/down
execute as @a[scores={sneak=10}] at @s run function owgame:actions/lay

#空腹度の制御
execute as @a[scores={hunger=19..20}] at @s run effect give @s speed 1 0 true
execute as @a[scores={hunger=..10}] at @s run effect give @s slowness 1 0 true
effect give @a[scores={hunger=..19},tag=!playing] saturation 1 1 true

#スナイパーライフル
execute as @a[nbt={Inventory:[{id:"minecraft:spyglass",Slot:-106b,tag:{sr:1b}}]}] at @s run function owgame:weapons/kraber/trigger
execute as @a[scores={shootcounts=10,ammo_sr=1..},nbt={SelectedItem:{id:"minecraft:stick",tag:{sr_r:1b,reloading:0b}}}] at @s run playsound minecraft:block.iron_door.close block @s ~ ~ ~ 1 2
execute as @a[scores={shootcounts=13}] at @s run effect clear @s levitation
item replace entity @a[scores={shootcounts=0,ammo_sr=4},nbt={SelectedItem:{id:"minecraft:stick",tag:{sr_r:1b,reloading:0b}}}] weapon.mainhand with spyglass{sr:1b,display:{Name:'[{"text":"スナイパーライフル ","color":"red"},{"text":"| ","color":"dark_gray"},{"text":"4/4","color":"gray"}]',Lore:['{"text":"Clip:4 Body:180 Head:450 Range:300m Reload:5s","color":"gray"}','{"text":"「火力(パワー)は全てを解決する！」","color":"gray","italic":true}','{"text":"圧倒的な攻撃力を誇るスナイパーライフル。"}','{"text":"右クリックでスコープを展開する。オフハンドに持ち替えることで射撃する。"}','{"text":"一定時間スニークすると伏せることもできる。伏せ状態はジャンプすると解除される。"}']},AttributeModifiers:[{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:-0.3,Operation:1,Slot:"mainhand",UUID:[I;1486144296,-749059616,-1921787441,642927478]}]}
item replace entity @a[scores={shootcounts=0,ammo_sr=3},nbt={SelectedItem:{id:"minecraft:stick",tag:{sr_r:1b,reloading:0b}}}] weapon.mainhand with spyglass{sr:1b,display:{Name:'[{"text":"スナイパーライフル ","color":"red"},{"text":"| ","color":"dark_gray"},{"text":"3/4","color":"gray"}]',Lore:['{"text":"Clip:4 Body:180 Head:450 Range:300m Reload:5s","color":"gray"}','{"text":"「火力(パワー)は全てを解決する！」","color":"gray","italic":true}','{"text":"圧倒的な攻撃力を誇るスナイパーライフル。"}','{"text":"右クリックでスコープを展開する。オフハンドに持ち替えることで射撃する。"}','{"text":"一定時間スニークすると伏せることもできる。伏せ状態はジャンプすると解除される。"}']},AttributeModifiers:[{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:-0.3,Operation:1,Slot:"mainhand",UUID:[I;1486144296,-749059616,-1921787441,642927478]}]}
item replace entity @a[scores={shootcounts=0,ammo_sr=2},nbt={SelectedItem:{id:"minecraft:stick",tag:{sr_r:1b,reloading:0b}}}] weapon.mainhand with spyglass{sr:1b,display:{Name:'[{"text":"スナイパーライフル ","color":"red"},{"text":"| ","color":"dark_gray"},{"text":"2/4","color":"gray"}]',Lore:['{"text":"Clip:4 Body:180 Head:450 Range:300m Reload:5s","color":"gray"}','{"text":"「火力(パワー)は全てを解決する！」","color":"gray","italic":true}','{"text":"圧倒的な攻撃力を誇るスナイパーライフル。"}','{"text":"右クリックでスコープを展開する。オフハンドに持ち替えることで射撃する。"}','{"text":"一定時間スニークすると伏せることもできる。伏せ状態はジャンプすると解除される。"}']},AttributeModifiers:[{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:-0.3,Operation:1,Slot:"mainhand",UUID:[I;1486144296,-749059616,-1921787441,642927478]}]}
item replace entity @a[scores={shootcounts=0,ammo_sr=1},nbt={SelectedItem:{id:"minecraft:stick",tag:{sr_r:1b,reloading:0b}}}] weapon.mainhand with spyglass{sr:1b,display:{Name:'[{"text":"スナイパーライフル ","color":"red"},{"text":"| ","color":"dark_gray"},{"text":"1/4","color":"gray"}]',Lore:['{"text":"Clip:4 Body:180 Head:450 Range:300m Reload:5s","color":"gray"}','{"text":"「火力(パワー)は全てを解決する！」","color":"gray","italic":true}','{"text":"圧倒的な攻撃力を誇るスナイパーライフル。"}','{"text":"右クリックでスコープを展開する。オフハンドに持ち替えることで射撃する。"}','{"text":"一定時間スニークすると伏せることもできる。伏せ状態はジャンプすると解除される。"}']},AttributeModifiers:[{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:-0.3,Operation:1,Slot:"mainhand",UUID:[I;1486144296,-749059616,-1921787441,642927478]}]}
execute as @a[nbt={Inventory:[{id:"minecraft:stick",tag:{sr_r:1b,reloading:0b,},Slot:-106b}]}] at @s run function owgame:weapons/kraber/shoot_while_cd
execute as @a[scores={shootcounts=1..,ammo_sr=1..},nbt={Inventory:[{id:"minecraft:spyglass",tag:{sr:1b},Slot:-106b}]}] at @s run function owgame:weapons/kraber/shoot_while_cd

#体力の表示
execute as @a[scores={health=300..,immunity=0},gamemode=!spectator] at @s run function owgame:healthbar/green
execute as @a[scores={health=201..299,immunity=0},gamemode=!spectator] at @s run function owgame:healthbar/yellow
execute as @a[scores={health=..200,immunity=0},gamemode=!spectator] at @s run function owgame:healthbar/red
execute as @a[scores={immunity=1..},gamemode=!spectator] at @s run function owgame:healthbar/white
execute as @a[gamemode=spectator] at @s run function owgame:healthbar/spectator

#武器リロード
execute as @a[scores={shootcounts=1..}] at @s run scoreboard players remove @s shootcounts 1
execute as @a[scores={shootcounts=1}] run attribute @s generic.movement_speed base set 0.1

execute as @a[scores={reload_stick=1..}] at @s run function owgame:actions/stick

execute as @a[scores={reload_spyglass=1..}] at @s run function owgame:weapons/kraber/reload
execute as @a[scores={reload_sr=1..}] at @s run function owgame:weapons/kraber/reloading

execute as @a[scores={knife_drop=1..}] at @s run function owgame:weapons/knife/get

#スモーク
execute as @e[type=arrow,nbt={inGround:1b}] at @s run function owgame:weapons/smoke

#インベントリ制限
execute as @a at @s store result score @s inventory run clear @s barrier 0
execute as @a at @s run function owgame:inventory

#ログイン
execute as @a at @s unless entity @s[scores={first_login=1}] run function owgame:actions/firstlogin
execute as @a at @s if entity @s[scores={login=1}] run function owgame:actions/login
execute as @a[scores={changelog=1}] run function owgame:actions/changelog

#アイテム関連
execute as @e[tag=campfire] at @s if entity @e[type=item,distance=..0.7,nbt={Item:{id:"minecraft:oak_slab"}}] run function owgame:items/camp_fire
execute as @e[type=item,nbt={Item:{id:"minecraft:glass"},Age:30s}] at @s run function owgame:items/glass
kill @e[type=item,nbt={Item:{id:"minecraft:barrier"}}]

#デスマッチ
scoreboard players remove @a[scores={respawn_count=1..}] respawn_count 1
execute as @a[scores={respawn_count=61}] run function owgame:count/3_dm
execute as @a[scores={respawn_count=41}] run function owgame:count/2_dm
execute as @a[scores={respawn_count=21}] run function owgame:count/1_dm
execute as @a[scores={respawn_count=1}] run function owgame:phases/dm_respawn

execute if score #gametype id matches 2 run effect give @a saturation 1 0 true