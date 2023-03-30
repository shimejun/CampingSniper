worldborder set 1200 5
spreadplayers ~ ~ 60 60 false @e[tag=border_center]
execute as @e[tag=border_center] at @s run worldborder center ~ ~

schedule function owgame:phases/endgame2 2s
advancement grant @a[tag=player,gamemode=adventure] only owgame:badges/border