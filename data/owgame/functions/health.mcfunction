
effect give @s instant_damage 1 29 true

execute as @s at @s run particle minecraft:block redstone_block ~ ~ ~ 0 0 0 0 15

scoreboard players operation @s damage -= @s armor
execute if entity @s[scores={damage=..-1}] run scoreboard players set @s damage 0

scoreboard players operation @s[scores={immunity=0}] health -= @s[scores={immunity=0}] damage

scoreboard players set @s damage 0
