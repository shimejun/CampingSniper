#伏せている間実行
effect give @a[scores={sneak=10}] slowness 1 10 true

#伏せている時に上に遮光ガラスがなければ強制解除
execute as @a[scores={sneak=10}] at @s unless block ~ ~1 ~ tinted_glass run scoreboard players set @s jump 1

#ジャンプで解除
execute as @a[scores={jump=1..,sneak=10}] at @s run fill ~-1 ~2 ~-1 ~1 ~ ~1 air replace tinted_glass
scoreboard players set @s[scores={jump=1..}] sneak 0
tag @s[scores={jump=1..}] remove downed
effect clear @s[scores={jump=1..}] slowness
scoreboard players reset @s jump
