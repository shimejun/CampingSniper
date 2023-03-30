#スモーク
particle minecraft:campfire_signal_smoke ~ ~1 ~ 1.4 1.4 1.4 0 1600 force @a
playsound minecraft:entity.firework_rocket.blast_far block @a[distance=..60] ~ ~ ~ 4 2 0.1
kill @s