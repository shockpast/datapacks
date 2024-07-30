execute if score @s UHC.IsPreparing matches 1 run scoreboard players set @a UHC.IsStarted 1
execute if score @s UHC.IsStarted matches 1 run scoreboard players remove @a UHC.IsPreparing 1

tellraw @a ""
tellraw @a "§6[UHC] §fИгра началась!"
tellraw @a "§6[UHC] §fВы не можете сражаться в течении 10 минут, и на это время вам выданы вспомогательные эффекты, чтобы облегчить ваше развитие."

effect give @a resistance 600 3 true
effect give @a haste 600 2 true
effect give @a regeneration 600 3 true
effect give @a fire_resistance 600 1 true

spreadplayers 0.0 0.0 500 1000 false @a

team empty UHC.Team.Preparing
team join UHC.Team.Playing @a

worldborder set 3000
worldborder set 50 3000