tag @r[gamemode=spectator,team=yellow,limit=1] add revived
tp @p[tag=revived,team=yellow] @s
tellraw @a [{"text":"♰ REVIVE   ","color":"green","bold":true},{"selector":"@a[tag=revived]"}]
title @a[tag=revived] title [{"text":"REVIVED!","color":"aqua"}]
execute as @a[tag=revived] at @s run function owgame:actions/revive/rivived
tag @a remove revived