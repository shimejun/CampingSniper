#リロード開始

#各種スコアをリセット&変更
scoreboard players set @s reload_sr 100
attribute @s generic.movement_speed base set 0.1
scoreboard players set @s shootcounts 0
scoreboard players set @s damage_total 0
scoreboard players set @s reload_spyglass 0

#ドロップしたアイテムを削除
kill @e[type=item,sort=nearest,limit=1,nbt={Item:{id:"minecraft:spyglass"}}]

#SE
playsound minecraft:block.iron_door.close block @a[distance=..15] ~ ~ ~ 2 2

#リロードアイテムを付与
give @s[scores={ammo_sr=0}] stick{sr_r:1b,comsumable:1b,reloading:1b,display:{Name:'[{"text":"スナイパーライフル","color":"gray"},{"text":" | ","color":"dark_gray"},{"text":"0/4","color":"gray"}]',Lore:['{"text":"Clip:4 Body:180 Head:450 Range:300m Reload:5s","color":"gray"}','{"text":"「火力(パワー)は全てを解決する！」","color":"gray","italic":true}','{"text":"圧倒的な攻撃力を誇るスナイパーライフル。"}','{"text":"右クリックでスコープを展開する。オフハンドに持ち替えることで射撃する。"}','{"text":"一定時間スニークすると伏せることもできる。伏せ状態はジャンプすると解除される。"}']},AttributeModifiers:[{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:-0.3,Operation:1,UUID:[I;1486144296,-749059616,-1921787441,642927478],Slot:"mainhand"}]}
give @s[scores={ammo_sr=1}] stick{sr_r:1b,comsumable:1b,reloading:1b,display:{Name:'[{"text":"スナイパーライフル","color":"gray"},{"text":" | ","color":"dark_gray"},{"text":"1/4","color":"gray"}]',Lore:['{"text":"Clip:4 Body:180 Head:450 Range:300m Reload:5s","color":"gray"}','{"text":"「火力(パワー)は全てを解決する！」","color":"gray","italic":true}','{"text":"圧倒的な攻撃力を誇るスナイパーライフル。"}','{"text":"右クリックでスコープを展開する。オフハンドに持ち替えることで射撃する。"}','{"text":"一定時間スニークすると伏せることもできる。伏せ状態はジャンプすると解除される。"}']},AttributeModifiers:[{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:-0.3,Operation:1,UUID:[I;1486144296,-749059616,-1921787441,642927478],Slot:"mainhand"}]}
give @s[scores={ammo_sr=2}] stick{sr_r:1b,comsumable:1b,reloading:1b,display:{Name:'[{"text":"スナイパーライフル","color":"gray"},{"text":" | ","color":"dark_gray"},{"text":"2/4","color":"gray"}]',Lore:['{"text":"Clip:4 Body:180 Head:450 Range:300m Reload:5s","color":"gray"}','{"text":"「火力(パワー)は全てを解決する！」","color":"gray","italic":true}','{"text":"圧倒的な攻撃力を誇るスナイパーライフル。"}','{"text":"右クリックでスコープを展開する。オフハンドに持ち替えることで射撃する。"}','{"text":"一定時間スニークすると伏せることもできる。伏せ状態はジャンプすると解除される。"}']},AttributeModifiers:[{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:-0.3,Operation:1,UUID:[I;1486144296,-749059616,-1921787441,642927478],Slot:"mainhand"}]}
give @s[scores={ammo_sr=3}] stick{sr_r:1b,comsumable:1b,reloading:1b,display:{Name:'[{"text":"スナイパーライフル","color":"gray"},{"text":" | ","color":"dark_gray"},{"text":"3/4","color":"gray"}]',Lore:['{"text":"Clip:4 Body:180 Head:450 Range:300m Reload:5s","color":"gray"}','{"text":"「火力(パワー)は全てを解決する！」","color":"gray","italic":true}','{"text":"圧倒的な攻撃力を誇るスナイパーライフル。"}','{"text":"右クリックでスコープを展開する。オフハンドに持ち替えることで射撃する。"}','{"text":"一定時間スニークすると伏せることもできる。伏せ状態はジャンプすると解除される。"}']},AttributeModifiers:[{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:-0.3,Operation:1,UUID:[I;1486144296,-749059616,-1921787441,642927478],Slot:"mainhand"}]}
give @s[scores={ammo_sr=4}] stick{sr_r:1b,comsumable:1b,reloading:1b,display:{Name:'[{"text":"スナイパーライフル","color":"gray"},{"text":" | ","color":"dark_gray"},{"text":"4/4","color":"gray"}]',Lore:['{"text":"Clip:4 Body:180 Head:450 Range:300m Reload:5s","color":"gray"}','{"text":"「火力(パワー)は全てを解決する！」","color":"gray","italic":true}','{"text":"圧倒的な攻撃力を誇るスナイパーライフル。"}','{"text":"右クリックでスコープを展開する。オフハンドに持ち替えることで射撃する。"}','{"text":"一定時間スニークすると伏せることもできる。伏せ状態はジャンプすると解除される。"}']},AttributeModifiers:[{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:-0.3,Operation:1,UUID:[I;1486144296,-749059616,-1921787441,642927478],Slot:"mainhand"}]}
