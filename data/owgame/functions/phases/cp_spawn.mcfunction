tellraw @a [{"text":"--補給物資投下--","color":"gold"}]
execute at @e[tag=package] run summon chest_minecart ~ ~200 ~ {Tags:["supply"],LootTable:"owgame:package",Invulnerable:1b,CustomName:'"補給物資"'}
