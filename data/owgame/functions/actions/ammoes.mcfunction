#> owgame:tick
#全プレイヤーが常時実行
#弾数表示
execute as @a[scores={reload_sr=80}] at @s run scoreboard players set @s ammoes 1
execute as @a[scores={reload_sr=65}] at @s run scoreboard players set @s ammoes 2
execute as @a[scores={reload_sr=50}] at @s run scoreboard players set @s ammoes 3
execute as @a[scores={reload_sr=35}] at @s run scoreboard players set @s ammoes 4
#弾数取得
execute as @a[nbt={SelectedItem:{tag:{sr:1b}}}] at @s store result score @s ammoes run scoreboard players get @s ammo_sr
execute as @a[nbt={SelectedItem:{tag:{sr:1b}}}] at @s store result score @s ammoes run scoreboard players get @s ammo_sr
execute as @a[nbt={SelectedItem:{tag:{sr_r:1b}}},scores={reload_sr=0}] at @s store result score @s ammoes run scoreboard players get @s ammo_sr
execute as @a[nbt={SelectedItem:{tag:{sr_r:1b}}},scores={reload_sr=0}] at @s store result score @s ammoes run scoreboard players get @s ammo_sr