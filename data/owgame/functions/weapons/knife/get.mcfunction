#入手コマンド
#ドロップ時の処理を兼ねる
give @s iron_sword{knife:1b,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:4,Operation:0,UUID:[I;1486144296,-749059616,-1921787441,642927478],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-2,Operation:0,UUID:[I;157740760,2022459048,-1214297666,1983598341],Slot:"mainhand"}],display:{Name:'[{"text":"ナイフ","color":"red"}]',Lore:['{"text":"Body:40 使用待機時間:3秒","color":"gray"}','{"text":"「サバイバルの相棒」","color":"gray","italic":true}','{"text":"様々なことに応用できるサバイバルナイフ。"}','{"text":"近接武器として使うには3秒間持ち続けなければならない。"}']},Unbreakable:1b,CanDestroy:["minecraft:glass","minecraft:glass_pane"]}
scoreboard players set @s knife_drop 0
kill @e[type=item,nbt={Item:{id:"minecraft:iron_sword"}}]