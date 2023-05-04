tellraw @a [{"text":"--補給物資投下--","color":"gold"}]
execute at @e[tag=package] run summon chest_minecart ~ ~200 ~ {Tags:["supply"],LootTable:"owgame:package",Invulnerable:1b,CustomName:'"補給物資"'}
spreadplayers ~ ~ 60 100 false @e[tag=package]
execute if score #gametype id matches 1 run schedule function owgame:phases/cp_spawn 60s