tag @r[gamemode=spectator,team=purple,limit=1] add revived
tp @p[tag=revived,team=purple] @s
tellraw @a [{"text":"♰ REVIVE   ","color":"green","bold":true},{"selector":"@a[tag=revived]"}]
title @a[tag=revived] title [{"text":"復活した！","color":"aqua"}]
execute as @a[tag=revived] at @s run function owgame:actions/revive/rivived
tag @a remove revived