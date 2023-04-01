tellraw @a [{"text":"拳モードになりました！！！！！！","color":"red"}]
tellraw @a [{"text":"戦士たちよ、近接戦闘の時間だ！！！！","color":"red"}]
scoreboard players set #punch id 1
execute as @a at @s run playsound minecraft:entity.ender_dragon.growl block @s ~ ~ ~ 1 1