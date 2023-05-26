#銃以外のダメージ

#剣でぶん殴られてない場合は10ダメージ固定
execute as @a[scores={resistance=10..}] at @s if entity @s[scores={immunity=0}] unless entity @a[distance=0.1..4,nbt={SelectedItem:{id:"minecraft:iron_sword"}}] run scoreboard players remove @s health 10

#体力0になった場合は死亡
execute as @a[scores={health=..0,resistance=1..}] at @s run function owgame:actions/death

#ナイフを持っていれば移動速度上昇
effect give @a[scores={health=1..,resistance=1..},nbt={SelectedItem:{id:"minecraft:iron_sword"}}] speed 2 1 true

#被弾スコアをリセット
execute as @a[scores={resistance=10..}] at @s run scoreboard players set @s resistance 0
