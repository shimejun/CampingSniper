#伏せる
execute if entity @s[scores={sneak=..9},tag=!downed] if block ~ ~ ~ #owgame:noblock_forsnk run scoreboard players add @s[scores={sneak=..9}] sneak 1
execute if entity @s[scores={sneak=..9},tag=!downed] unless block ~ ~ ~ #owgame:noblock_forsnk run scoreboard players add @s sneak 0

execute if entity @s[scores={sneak=10},tag=!downed] if block ~ ~ ~ #owgame:noblock_forsnk run fill ~ ~1 ~ ~ ~1 ~ tinted_glass keep
execute if entity @s[scores={sneak=10}] run tag @s add downed