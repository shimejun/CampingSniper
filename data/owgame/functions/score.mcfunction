#再読み込みで実行
#各種スコアボードの追加、どのワールドでもプレイ可能にしたい

#プレイヤーの基本ステータススコア
scoreboard objectives add jump minecraft.custom:minecraft.jump
scoreboard objectives add shootcounts dummy
scoreboard objectives add health dummy
scoreboard objectives add damage_total dummy
scoreboard objectives add damage_total2 dummy
scoreboard objectives add damage dummy
scoreboard objectives add armor armor
scoreboard objectives add sneak dummy
scoreboard objectives add swim minecraft.custom:minecraft.swim_one_cm
scoreboard objectives add id dummy
scoreboard objectives add kill dummy
scoreboard objectives add resistance minecraft.custom:minecraft.damage_resisted
scoreboard objectives add hunger food
scoreboard objectives add immunity dummy
scoreboard objectives add knife_drop minecraft.dropped:minecraft.iron_sword
scoreboard objectives add login minecraft.custom:minecraft.leave_game
scoreboard objectives add playercount dummy
scoreboard objectives add first_login dummy
scoreboard objectives add camp_time dummy
scoreboard objectives add revive_time dummy
#デスマッチ用
scoreboard objectives add respawn_count dummy
scoreboard objectives add kill_limit dummy [{"text":"残りキル数"}]
#スナイパー
scoreboard objectives add ammoes dummy
scoreboard objectives add ammoes_max dummy
scoreboard objectives add reload_stick minecraft.dropped:minecraft.stick
scoreboard objectives add reload_spyglass minecraft.dropped:minecraft.spyglass
scoreboard objectives add ammo_sr dummy
scoreboard objectives add reload_sr dummy
#チーム戦関連
scoreboard objectives add d_red minecraft.dropped:minecraft.red_stained_glass
scoreboard objectives add d_blue minecraft.dropped:minecraft.blue_stained_glass
scoreboard objectives add d_yellow minecraft.dropped:minecraft.yellow_stained_glass
scoreboard objectives add d_green minecraft.dropped:minecraft.green_stained_glass
scoreboard objectives add d_purple minecraft.dropped:minecraft.purple_stained_glass
scoreboard objectives add d_orange minecraft.dropped:minecraft.orange_stained_glass
#その他
scoreboard objectives add syringe_time dummy
scoreboard objectives add camp_timeleft dummy
scoreboard objectives add shoot_range dummy
scoreboard objectives add head_total_1game dummy
scoreboard objectives add kill_total dummy
scoreboard objectives add win_total dummy
scoreboard objectives add play_total dummy
scoreboard objectives add bantage_total dummy
scoreboard objectives add changelog trigger
scoreboard objectives add inventory dummy
scoreboard objectives add looking dummy
#チーム
team add solo
team modify solo nametagVisibility hideForOwnTeam

team add red
team modify red color red
team modify red nametagVisibility hideForOtherTeams
team add blue
team modify blue color blue
team modify blue nametagVisibility hideForOtherTeams
team add yellow
team modify yellow color yellow
team modify yellow nametagVisibility hideForOtherTeams
team add green
team modify green color green
team modify green nametagVisibility hideForOtherTeams
team add purple
team modify purple color dark_purple
team modify purple nametagVisibility hideForOtherTeams
team add orange
team modify orange color gold
team modify orange nametagVisibility hideForOtherTeams
#ゲームルール
gamerule fallDamage false
gamerule doMobSpawning false
gamerule doDaylightCycle true

execute unless score #punch id matches 1 run scoreboard players set #punch id 0