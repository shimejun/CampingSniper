#復活したプレイヤーが実行
clear @s
function owgame:weapons/kraber/get
function owgame:weapons/knife/get
function owgame:items/bantage_get
function owgame:items/bantage_get
function owgame:items/bantage_get
function owgame:items/smokeluncher_get
give @s bread 2
execute if score #gametype id matches 1 run tag @s add player
execute if score #gametype id matches 1 run scoreboard players add @a playercount 1
scoreboard players set @s health 300
gamemode adventure @s
