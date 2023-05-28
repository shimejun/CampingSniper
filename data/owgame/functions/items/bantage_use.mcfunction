clear @s red_dye{bantage:1b} 1
scoreboard players set @s[scores={health=200..}] health 300
scoreboard players add @s[scores={health=..199}] health 100
scoreboard players set @s syringe_time 0
playsound minecraft:item.armor.equip_elytra block @a ~ ~ ~ 2 2
particle minecraft:heart ~ ~ ~ 1 1 1 0 25 force @s
experience set @s 0 points