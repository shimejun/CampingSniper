clear @s paper{revive:1b} 1
scoreboard players set @s revive_time 0
playsound minecraft:item.armor.equip_elytra block @a ~ ~ ~ 2 2
playsound minecraft:block.bell.resonate block @a ~ ~ ~ 1 1 1
experience set @s 0 points
advancement grant @s only owgame:badges/revive

execute if entity @s[team=red] run function owgame:actions/revive/red
execute if entity @s[team=blue] run function owgame:actions/revive/blue
execute if entity @s[team=yellow] run function owgame:actions/revive/yellow
execute if entity @s[team=green] run function owgame:actions/revive/green
execute if entity @s[team=purple] run function owgame:actions/revive/purple
execute if entity @s[team=orange] run function owgame:actions/revive/orange