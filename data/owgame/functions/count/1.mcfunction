title @a title [{"text":"---1---","color":"red","bold":true}]
execute as @a at @s run playsound minecraft:entity.experience_orb.pickup block @s ~ ~ ~ 1 1
execute if score #gametype id matches 1 run schedule function owgame:phases/start 1s
execute if score #gametype id matches 2 run schedule function owgame:phases/start_deathmatch 1s

