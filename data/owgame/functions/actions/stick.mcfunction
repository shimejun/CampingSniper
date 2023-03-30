#リロードアイテムをぶん投げるんじゃない！！！
function owgame:weapons/kraber/reload

kill @e[type=item,nbt={Item:{id:"minecraft:stick",tag:{sr_r:1b}}}]
scoreboard players set @s reload_stick 0
