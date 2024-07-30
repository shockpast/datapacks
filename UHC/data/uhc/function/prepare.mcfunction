tellraw @s "§6[UHC] §fСоздаём §aкомфортную§f среду для игры..."

gamerule logAdminCommands false
gamerule announceAdvancements false
gamerule naturalRegeneration false
gamerule commandBlockOutput false
gamerule showDeathMessages false
gamerule doTraderSpawning false

worldborder center 0.0 0.0
worldborder set 50

team add UHC.Team.Preparing "UHC.Team.Preparing"
team add UHC.Team.Playing "UHC.Team.Playing"

team modify UHC.Team.Preparing friendlyFire false
team modify UHC.Team.Preparing collisionRule never
team modify UHC.Team.Preparing nametagVisibility never
team modify UHC.Team.Playing nametagVisibility never
team modify UHC.Team.Preparing deathMessageVisibility never
team modify UHC.Team.Playing deathMessageVisibility never
team join UHC.Team.Preparing @a

tellraw @a ""
tellraw @a "§6[UHC] §fЧто такое - §cUHC§f?"
tellraw @a "§6[UHC] §cUHC§f - это §o§lособый§r режим, в котором игроки должны сражаться между собой, ради победы, они ограничены тем, что их здоровье не восстанавливается натурально, и границы мира постепенно сужаются."

effect give @a slow_falling 30 1 true

tp @a 0 127 0

###
scoreboard objectives add UHC.IsStarted dummy "UHC.IsStarted"
scoreboard objectives add UHC.IsPreparing dummy "UHC.IsPreparing"

scoreboard players set @a UHC.IsPreparing 1

### События
# function uhc:events/time
function uhc:events/death

### Предметы
function uhc:items/golden_head