scoreboard objectives add UHC.Deaths deathCount
scoreboard objectives add UHC.Deaths.X dummy "UHC.Deaths.X"
scoreboard objectives add UHC.Deaths.Y dummy "UHC.Deaths.Y"
scoreboard objectives add UHC.Deaths.Z dummy "UHC.Deaths.Z"

#
setblock -1 -64 -1 repeating_command_block[ facing = south ]{ Command: "execute as @a store result score @s UHC.Deaths.X run data get entity @s Pos[0]", auto: true } replace
setblock -1 -64 0 chain_command_block[ facing = south ]{ Command: "execute as @a store result score @s UHC.Deaths.Y run data get entity @s Pos[1]", auto: true } replace
setblock -1 -64 1 chain_command_block[ facing = south ]{ Command: "execute as @a store result score @s UHC.Deaths.Z run data get entity @s Pos[2]", auto: true } replace

# Уведомление
setblock -1 -63 -1 repeating_command_block[ facing = south ]{ Command: "execute as @a[scores={UHC.Deaths=1}] run tellraw @s [{ \"selector\": \"@s\", \"color\": \"green\" }, { \"text\": \" умер! (\", \"color\": \"gray\" }, { \"score\": { \"name\": \"@s\", \"objective\": \"UHC.Deaths.X\" } }, { \"text\": \", \" }, { \"score\": { \"name\": \"@s\", \"objective\": \"UHC.Deaths.Y\" } }, { \"text\": \", \" }, { \"score\": { \"name\": \"@s\", \"objective\": \"UHC.Deaths.Z\" } }, { \"text\": \")\", \"color\": \"gray\" }]", auto: true } replace
setblock -1 -63 0 chain_command_block[ facing = south ]{ Command: "execute as @a[scores={UHC.Deaths=1}] at @s positioned ~ ~10 ~ run summon lightning_bolt", auto: true }
setblock -1 -63 1 chain_command_block[ facing = south ]{ Command: "execute as @a[scores={UHC.Deaths=1}] at @s run loot spawn ~ ~1 ~ loot uhc:entities/player", auto: true }
setblock -1 -63 2 chain_command_block[ facing = south ]{ Command: "execute as @a[scores={UHC.Deaths=1}] run gamemode spectator @s", auto: true }
setblock -1 -63 3 chain_command_block[ facing = south ]{ Command: "scoreboard players set @a UHC.Deaths 0", auto: true }