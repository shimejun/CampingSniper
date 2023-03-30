clear @s red_dye{bantage:1b} 1
scoreboard players set @s[scores={health=200..}] health 300
scoreboard players add @s[scores={health=..199}] health 100
scoreboard players set @s syringe_time 0
playsound minecraft:item.armor.equip_elytra block @a ~ ~ ~ 2 2
particle minecraft:heart ~ ~ ~ 1 1 1 0 25 force @s
experience set @s 0 points
scoreboard players add @s bantage_total 1
execute if score @s bantage_total matches 50.. run advancement grant @s only owgame:badges/heal_50
execute if score @s bantage_total matches 200.. run advancement grant @s only owgame:badges/heal_200
execute if score @s bantage_total matches 1000.. run advancement grant @s only owgame:badges/heal_1000
execute if score @s bantage_total matches 5000.. run advancement grant @s only owgame:badges/heal_5000