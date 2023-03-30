execute as @a[scores={resistance=10..}] at @s if entity @s[scores={immunity=0}] unless entity @a[distance=0.4..4,nbt={SelectedItem:{id:"minecraft:iron_sword"}}] run scoreboard players remove @s health 10
execute as @a[scores={health=..0,resistance=1..}] at @s run function owgame:actions/death
effect give @a[scores={health=1..,resistance=1..},nbt={SelectedItem:{id:"minecraft:iron_sword"}}] speed 2 1 true
execute as @a[scores={resistance=10..}] at @s run scoreboard players set @s resistance 0
