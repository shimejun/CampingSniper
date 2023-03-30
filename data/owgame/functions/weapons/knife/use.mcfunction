#攻撃後
playsound minecraft:entity.player.attack.sweep block @a ~ ~ ~ 1 1
scoreboard players remove @a[nbt={HurtTime:10s},sort=nearest,limit=1] health 40
scoreboard players add @s damage_total 40
scoreboard players add @s damage_total2 40
execute if entity @a[scores={health=..0}] run function owgame:actions/kill
advancement revoke @s only owgame:knife

effect give @s weakness 3 4 true