#リロード中のプレイヤーが常時実行
#システム的な意味はない
scoreboard players remove @s[nbt={SelectedItem:{id:"minecraft:stick"}}] reload_sr 1


execute if entity @s[scores={reload_sr=90},nbt={SelectedItem:{id:"minecraft:stick"}}] run playsound minecraft:block.anvil.place block @s ~ ~ ~ 0.3 2
execute if entity @s[scores={reload_sr=90},nbt=!{SelectedItem:{id:"minecraft:stick"}}] run scoreboard players set @s reload_sr 89

execute if entity @s[scores={reload_sr=80},nbt={SelectedItem:{id:"minecraft:stick"}}] run playsound minecraft:block.dispenser.fail block @s ~ ~ ~ 1 0.7
execute if entity @s[scores={reload_sr=80},nbt=!{SelectedItem:{id:"minecraft:stick"}}] run scoreboard players set @s reload_sr 79
execute if entity @s[scores={reload_sr=78},nbt={SelectedItem:{id:"minecraft:stick"}}] run playsound minecraft:block.wooden_door.open block @s ~ ~ ~ 1 2
execute if entity @s[scores={reload_sr=78},nbt=!{SelectedItem:{id:"minecraft:stick"}}] run scoreboard players set @s reload_sr 77

execute if entity @s[scores={reload_sr=65},nbt={SelectedItem:{id:"minecraft:stick"}}] run playsound minecraft:block.dispenser.fail block @s ~ ~ ~ 1 0.7
execute if entity @s[scores={reload_sr=65},nbt=!{SelectedItem:{id:"minecraft:stick"}}] run scoreboard players set @s reload_sr 64
execute if entity @s[scores={reload_sr=63},nbt={SelectedItem:{id:"minecraft:stick"}}] run playsound minecraft:block.wooden_door.open block @s ~ ~ ~ 1 2
execute if entity @s[scores={reload_sr=63},nbt=!{SelectedItem:{id:"minecraft:stick"}}] run scoreboard players set @s reload_sr 62

execute if entity @s[scores={reload_sr=50},nbt={SelectedItem:{id:"minecraft:stick"}}] run playsound minecraft:block.dispenser.fail block @s ~ ~ ~ 1 0.7
execute if entity @s[scores={reload_sr=50},nbt=!{SelectedItem:{id:"minecraft:stick"}}] run scoreboard players set @s reload_sr 49
execute if entity @s[scores={reload_sr=48},nbt={SelectedItem:{id:"minecraft:stick"}}] run playsound minecraft:block.wooden_door.open block @s ~ ~ ~ 1 2
execute if entity @s[scores={reload_sr=48},nbt=!{SelectedItem:{id:"minecraft:stick"}}] run scoreboard players set @s reload_sr 47

execute if entity @s[scores={reload_sr=35},nbt={SelectedItem:{id:"minecraft:stick"}}] run playsound minecraft:block.dispenser.fail block @s ~ ~ ~ 1 0.7
execute if entity @s[scores={reload_sr=35},nbt=!{SelectedItem:{id:"minecraft:stick"}}] run scoreboard players set @s reload_sr 34
execute if entity @s[scores={reload_sr=33},nbt={SelectedItem:{id:"minecraft:stick"}}] run playsound minecraft:block.wooden_door.open block @s ~ ~ ~ 1 2
execute if entity @s[scores={reload_sr=33},nbt=!{SelectedItem:{id:"minecraft:stick"}}] run scoreboard players set @s reload_sr 32

execute if entity @s[scores={reload_sr=15},nbt={SelectedItem:{id:"minecraft:stick"}}] run playsound minecraft:block.iron_door.close block @s ~ ~ ~ 1 2
execute if entity @s[scores={reload_sr=15},nbt=!{SelectedItem:{id:"minecraft:stick"}}] run scoreboard players set @s reload_sr 14
execute if entity @s[scores={reload_sr=10},nbt={SelectedItem:{id:"minecraft:stick"}}] run playsound minecraft:block.chest.close block @s ~ ~ ~ 1 2
execute if entity @s[scores={reload_sr=10},nbt=!{SelectedItem:{id:"minecraft:stick"}}] run scoreboard players set @s reload_sr 9


execute if entity @s[scores={reload_sr=1},nbt={SelectedItem:{id:"minecraft:stick"}}] run scoreboard players set @s ammo_sr 4

execute if entity @s[scores={reload_sr=1},nbt={SelectedItem:{id:"minecraft:stick"}}] run playsound minecraft:item.armor.equip_generic block @a[distance=..15] ~ ~ ~ 4 1

#アイテム置換
item replace entity @s[scores={reload_sr=33},nbt={SelectedItem:{id:"minecraft:stick"}}] weapon.mainhand with stick{sr_r:1b,comsumable:1b,display:{Name:'[{"text":"スナイパーライフル","color":"gray"},{"text":" | ","color":"dark_gray"},{"text":"4/4","color":"gray"}]',Lore:['{"text":"Clip:4 Body:180 Head:450 Range:300m Reload:5s","color":"gray"}','{"text":"「火力(パワー)は全てを解決する！」","color":"gray","italic":true}','{"text":"圧倒的な攻撃力を誇るスナイパーライフル。"}','{"text":"右クリックでスコープを展開する。オフハンドに持ち替えることで射撃する。"}','{"text":"一定時間スニークすると伏せることもできる。伏せ状態はジャンプすると解除される。"}']},AttributeModifiers:[{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:-0.3,Operation:1,UUID:[I;1486144296,-749059616,-1921787441,642927478],Slot:"mainhand"}]}
item replace entity @s[scores={reload_sr=48},nbt={SelectedItem:{id:"minecraft:stick"}}] weapon.mainhand with stick{sr_r:1b,comsumable:1b,display:{Name:'[{"text":"スナイパーライフル","color":"gray"},{"text":" | ","color":"dark_gray"},{"text":"3/4","color":"gray"}]',Lore:['{"text":"Clip:4 Body:180 Head:450 Range:300m Reload:5s","color":"gray"}','{"text":"「火力(パワー)は全てを解決する！」","color":"gray","italic":true}','{"text":"圧倒的な攻撃力を誇るスナイパーライフル。"}','{"text":"右クリックでスコープを展開する。オフハンドに持ち替えることで射撃する。"}','{"text":"一定時間スニークすると伏せることもできる。伏せ状態はジャンプすると解除される。"}']},AttributeModifiers:[{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:-0.3,Operation:1,UUID:[I;1486144296,-749059616,-1921787441,642927478],Slot:"mainhand"}]}
item replace entity @s[scores={reload_sr=63},nbt={SelectedItem:{id:"minecraft:stick"}}] weapon.mainhand with stick{sr_r:1b,comsumable:1b,display:{Name:'[{"text":"スナイパーライフル","color":"gray"},{"text":" | ","color":"dark_gray"},{"text":"2/4","color":"gray"}]',Lore:['{"text":"Clip:4 Body:180 Head:450 Range:300m Reload:5s","color":"gray"}','{"text":"「火力(パワー)は全てを解決する！」","color":"gray","italic":true}','{"text":"圧倒的な攻撃力を誇るスナイパーライフル。"}','{"text":"右クリックでスコープを展開する。オフハンドに持ち替えることで射撃する。"}','{"text":"一定時間スニークすると伏せることもできる。伏せ状態はジャンプすると解除される。"}']},AttributeModifiers:[{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:-0.3,Operation:1,UUID:[I;1486144296,-749059616,-1921787441,642927478],Slot:"mainhand"}]}
item replace entity @s[scores={reload_sr=78},nbt={SelectedItem:{id:"minecraft:stick"}}] weapon.mainhand with stick{sr_r:1b,comsumable:1b,display:{Name:'[{"text":"スナイパーライフル","color":"gray"},{"text":" | ","color":"dark_gray"},{"text":"1/4","color":"gray"}]',Lore:['{"text":"Clip:4 Body:180 Head:450 Range:300m Reload:5s","color":"gray"}','{"text":"「火力(パワー)は全てを解決する！」","color":"gray","italic":true}','{"text":"圧倒的な攻撃力を誇るスナイパーライフル。"}','{"text":"右クリックでスコープを展開する。オフハンドに持ち替えることで射撃する。"}','{"text":"一定時間スニークすると伏せることもできる。伏せ状態はジャンプすると解除される。"}']},AttributeModifiers:[{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:-0.3,Operation:1,UUID:[I;1486144296,-749059616,-1921787441,642927478],Slot:"mainhand"}]}
