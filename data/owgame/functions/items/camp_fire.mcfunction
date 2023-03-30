setblock ~ ~ ~ campfire[lit=true]
tag @s add lit_campfire
scoreboard players add @s camp_timeleft 40
kill @e[type=item,distance=..0.7,nbt={Item:{id:"minecraft:oak_slab"}}]
playsound minecraft:block.fire.ambient block @a ~ ~ ~ 4 1