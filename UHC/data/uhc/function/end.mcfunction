scoreboard players set Секунды UHC.Timer 0
scoreboard players set Минуты UHC.Timer 0
scoreboard players set Часы UHC.Timer 0
scoreboard players reset @a UHC.IsStarted
scoreboard players reset @a UHC.IsPreparing

tellraw @a "§6[UHC] §fИгра была §cзакончена§f, спасибо за игру!"

team empty UHC.Team.Playing
team join UHC.Team.Preparing @a

effect give @a slow_falling 30 1 true

tp @a 0 127 0
worldborder set 50
