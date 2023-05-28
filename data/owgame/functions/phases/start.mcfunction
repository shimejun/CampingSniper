clear @a

execute as @a at @s run function owgame:weapons/kraber/get
execute as @a at @s run function owgame:weapons/knife/get

give @a red_dye{bantage:1b,comsumable:1b,display:{Name:'[{"text":"包帯","color":"aqua"}]',Lore:['{"text":"効果:+100❤ 所要時間:5秒","color":"gray"}','{"text":"「応急手当の強い味方」","color":"gray","italic":true}','{"text":"体力を回復する間に合わせの包帯。"}','{"text":"スニーク長押し、または伏せた状態で持ち使用する。"}']}} 4
give @a crossbow{display:{Name:'{"text":"スモークランチャー","color":"aqua"}',Lore:['{"text":"「燻製料理にもってこい」","color":"gray","italic":true}','{"text":"着弾点でスモークを発生させる。使い捨て。"}']},HideFlags:37,Unbreakable:0b,Damage:464,Enchantments:[{id:"minecraft:piercing",lvl:1s},{id:"minecraft:quick_charge",lvl:2s}],ChargedProjectiles:[{id:"minecraft:arrow",Count:1b}],Charged:1b} 2
give @a bread 4

give @a compass{display:{Name:'{"text":"エリアコンパス","color":"aqua"}',Lore:['{"text":"「気まぐれ」","color":"gray","italic":true}','{"text":"安全地帯の中心を示すコンパス。"}']}} 1

give @a campfire{comsumable:1b,display:{Name:'{"text":"焚き火","color":"aqua"}',Lore:['{"text":"効果:+2❤/s 所要時間:7秒","color":"gray"}','{"text":"「ファイヤー！」","color":"gray","italic":true}','{"text":"設置後、薪をくべることで周囲を暖める焚き火セット。"}']}} 1
give @a oak_slab{display:{Name:'{"text":"薪","color":"aqua"}',Lore:['{"text":"「マキマキしてきた」","color":"gray","italic":true}','{"text":"焚き火の火を強くする薪。複数個使用すると効果時間が長くなる。"}']}} 3

scoreboard players set @a damage_total 0
scoreboard players set @a damage_total2 0
scoreboard players set @a health 300
scoreboard players set @a kill 0
scoreboard players set @a ammo_sr 4
scoreboard players set @a ammoes_max 4
tag @a add playing
kill @e[type=chest_minecart]
kill @e[type=item]


schedule function owgame:actions/sec 10t
schedule function owgame:phases/showdown 420s

title @a title [{"text":"GAME START!","color":"aqua","bold":true,"italic":true}]
execute as @a at @s run playsound minecraft:entity.generic.explode block @s ~ ~ ~ 1 1
worldborder set 50 300
