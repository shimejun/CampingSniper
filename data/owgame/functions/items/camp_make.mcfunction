execute if block ~ ~ ~ air unless block ~ ~-1 ~ air run clear @s campfire 1
execute unless block ~ ~ ~ air unless block ~ ~-1 ~ air run playsound minecraft:block.dispenser.fail block @a ~ ~ ~ 1 0.5
execute unless block ~ ~ ~ air unless block ~ ~-1 ~ air run tellraw @s [{"text":"焚き火の設置に失敗しました。 (設置場所に邪魔なブロックがあります！)","color":"red"}]

execute if block ~ ~ ~ air if block ~ ~-1 ~ #owgame:noblock run playsound minecraft:block.dispenser.fail block @a ~ ~ ~ 1 0.5
execute if block ~ ~ ~ air if block ~ ~-1 ~ #owgame:noblock run tellraw @s [{"text":"焚き火の設置に失敗しました。 (設置場所に適切なブロックがありません！)","color":"red"}]

scoreboard players set @s camp_time 0
execute if block ~ ~ ~ air unless block ~ ~-1 ~ air run playsound minecraft:item.armor.equip_chain block @a ~ ~ ~ 1 1
execute if block ~ ~ ~ air unless block ~ ~-1 ~ air run summon marker ~ ~0.4 ~ {Tags:["campfire"]}
execute if block ~ ~ ~ air unless block ~ ~-1 ~ air run tellraw @s [{"text":"焚き火を設置しました。","color":"aqua"}]
execute if block ~ ~ ~ air unless block ~ ~-1 ~ air run advancement grant @s only owgame:badges/camp
execute if block ~ ~ ~ air unless block ~ ~-1 ~ air run setblock ~ ~ ~ campfire[lit=false]

experience set @s 0 points