worldborder set 1 60
tellraw @a [{"text":"警告：エリアがさらに収縮します…","color":"red"}]
execute as @a at @s run playsound minecraft:entity.wither.spawn block @s ~ ~ ~ 1 0.5
schedule function owgame:phases/endgame 61s