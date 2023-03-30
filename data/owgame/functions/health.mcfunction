#ダメージを受けた人が実行

#見た目の部分
effect give @s instant_damage 1 29 true
execute as @s at @s run particle minecraft:block redstone_block ~ ~ ~ 0 0 0 0 15

#アーマー値が設定されている場合、ダメージから減算
scoreboard players operation @s damage -= @s armor

#減算結果マイナスになった場合はdamageを0に設定
execute if entity @s[scores={damage=..-1}] run scoreboard players set @s damage 0

#無敵状態でなければ体力を減算
scoreboard players operation @s[scores={immunity=0}] health -= @s[scores={immunity=0}] damage

#ダメージの数値を0に戻す
scoreboard players set @s damage 0
