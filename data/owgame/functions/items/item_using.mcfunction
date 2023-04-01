
experience set @a 129 levels
experience set @a[nbt=!{SelectedItem:{tag:{comsumable:1b}}}] 0 points

execute if score #punch id matches 0 unless block ~ ~ ~ water run scoreboard players add @s[predicate=owgame:sneak,scores={health=..299},nbt={SelectedItem:{id:"minecraft:red_dye",tag:{bantage:1b}}}] syringe_time 1
execute if score #punch id matches 0 unless block ~ ~ ~ water if block ~ ~1 ~ tinted_glass run scoreboard players add @s[scores={health=..299},nbt={SelectedItem:{id:"minecraft:red_dye",tag:{bantage:1b}}}] syringe_time 1
execute if score #punch id matches 1 unless block ~ ~ ~ water run scoreboard players add @s[predicate=owgame:sneak,scores={health=..299},nbt={SelectedItem:{id:"minecraft:red_dye",tag:{bantage:1b}}}] syringe_time 2
execute if score #punch id matches 1 unless block ~ ~ ~ water if block ~ ~1 ~ tinted_glass run scoreboard players add @s[scores={health=..299},nbt={SelectedItem:{id:"minecraft:red_dye",tag:{bantage:1b}}}] syringe_time 2

execute if entity @s[scores={syringe_time=1},nbt={SelectedItem:{id:"minecraft:red_dye",tag:{bantage:1b}}}] run playsound minecraft:item.armor.equip_leather block @a ~ ~ ~ 3 1
execute if entity @s[scores={syringe_time=1},nbt={SelectedItem:{id:"minecraft:red_dye",tag:{bantage:1b}}}] run tellraw @s [{"text":"包帯を使用中…","color":"aqua"}]
execute if score #punch id matches 1 if entity @s[scores={syringe_time=2},nbt={SelectedItem:{id:"minecraft:red_dye",tag:{bantage:1b}}}] run playsound minecraft:item.armor.equip_leather block @a ~ ~ ~ 3 1
execute if score #punch id matches 1 if entity @s[scores={syringe_time=2},nbt={SelectedItem:{id:"minecraft:red_dye",tag:{bantage:1b}}}] run tellraw @s [{"text":"包帯を使用中…","color":"aqua"}]

execute if entity @s[scores={syringe_time=1},nbt={SelectedItem:{id:"minecraft:red_dye",tag:{bantage:1b}}}] run scoreboard players set @s syringe_time 2
execute if entity @s[scores={syringe_time=1..},nbt=!{SelectedItem:{id:"minecraft:red_dye",tag:{bantage:1b}}}] run scoreboard players set @s syringe_time 0
execute if score #punch id matches 0 if entity @s[scores={syringe_time=1..},nbt={SelectedItem:{id:"minecraft:red_dye",tag:{bantage:1b}}},predicate=owgame:sneak] run experience add @s 10 points
execute if score #punch id matches 0 if entity @s[scores={syringe_time=1..,sneak=10},nbt={SelectedItem:{id:"minecraft:red_dye",tag:{bantage:1b}}}] run experience add @s 10 points
execute if score #punch id matches 1 if entity @s[scores={syringe_time=1..},nbt={SelectedItem:{id:"minecraft:red_dye",tag:{bantage:1b}}},predicate=owgame:sneak] run experience add @s 20 points
execute if score #punch id matches 1 if entity @s[scores={syringe_time=1..,sneak=10},nbt={SelectedItem:{id:"minecraft:red_dye",tag:{bantage:1b}}}] run experience add @s 20 points

execute if entity @s[scores={syringe_time=1..},nbt=!{SelectedItem:{id:"minecraft:red_dye",tag:{bantage:1b}}}] run experience set @s 0 points

execute if entity @s[scores={syringe_time=100},nbt={SelectedItem:{id:"minecraft:red_dye",tag:{bantage:1b}}}] run function owgame:items/bantage_use

execute unless block ~ ~ ~ campfire run scoreboard players add @s[predicate=owgame:sneak,nbt={SelectedItem:{id:"minecraft:campfire"},OnGround:1b}] camp_time 1
execute if entity @s[scores={camp_time=1},nbt={SelectedItem:{id:"minecraft:campfire"}}] run tellraw @s [{"text":"焚き火を設置中…","color":"aqua"}]
execute if entity @s[scores={camp_time=1},nbt={SelectedItem:{id:"minecraft:campfire"}}] run scoreboard players set @s camp_time 2
execute if entity @s[scores={camp_time=1..},nbt=!{SelectedItem:{id:"minecraft:campfire"}}] run scoreboard players set @s camp_time 0
execute if entity @s[scores={camp_time=1..},nbt={SelectedItem:{id:"minecraft:campfire"},OnGround:1b},predicate=owgame:sneak] run experience add @s 7 points
execute if entity @s[scores={camp_time=1..},nbt=!{SelectedItem:{id:"minecraft:campfire"}}] run experience set @s 0 points

execute if entity @s[scores={camp_time=140},nbt={SelectedItem:{id:"minecraft:campfire"}}] run function owgame:items/camp_make

experience set @a 0 levels
