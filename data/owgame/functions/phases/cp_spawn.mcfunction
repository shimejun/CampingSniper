tellraw @a [{"text":"--救援物資投下--","color":"gold"}]
execute at @e[tag=package] if score #teammode id matches 0 run summon chest_minecart ~ ~200 ~ {Tags:["supply"],LootTable:"owgame:package",Invulnerable:1b,CustomName:'"補給物資"'}
execute at @e[tag=package] if score #teammode id matches 1 run summon chest_minecart ~ ~200 ~ {Tags:["supply"],LootTable:"owgame:package_team",Invulnerable:1b,CustomName:'"補給物資"'}
