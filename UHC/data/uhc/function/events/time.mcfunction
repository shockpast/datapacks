setblock 0 -64 -1 repeating_command_block[ facing = south ]{ Command: "execute if entity @a[scores={UHC.IsStarted=1}] unless entity @a[scores={UHC.IsStarted=0}] run scoreboard players add Тики UHC.Timer 1", auto: true } replace
setblock 0 -64 0 chain_command_block[ facing = south ]{ Command: "scoreboard players operation Секунды UHC.DisplayTimer = Тики UHC.Timer", auto: true } replace
setblock 0 -64 1 chain_command_block[ facing = south ]{ Command: "scoreboard players operation Секунды UHC.DisplayTimer /= UHC.TickConstant UHC.Timer", auto: true } replace
setblock 0 -64 1 chain_command_block[ facing = south ]{ Command: "scoreboard players operation Секунды UHC.DisplayTimer /= UHC.TickConstant UHC.Timer", auto: true } replace
setblock 0 -64 2 chain_command_block[ facing = south ]{ Command: "scoreboard players operation Минуты UHC.DisplayTimer = Тики UHC.Timer", auto: true } replace
setblock 0 -64 3 chain_command_block[ facing = south ]{ Command: "scoreboard players operation Минуты UHC.DisplayTimer /= UHC.MinuteConstant UHC.Timer", auto: true } replace
setblock 0 -64 4 chain_command_block[ facing = south ]{ Command: "scoreboard players operation Часы UHC.DisplayTimer = Тики UHC.Timer", auto: true } replace
setblock 0 -64 5 chain_command_block[ facing = south ]{ Command: "scoreboard players operation Часы UHC.DisplayTimer /= UHC.HourConstant UHC.Timer", auto: true } replace
setblock 0 -64 6 chain_command_block[ facing = south ]{ Command: "title @a actionbar [{ \"score\": { \"name\": \"Часы\", \"objective\": \"UHC.DisplayTimer\" }, \"color\": \"white\" }, { \"text\": \":\", \"color\": \"gray\" }, { \"score\": { \"name\": \"Минуты\", \"objective\": \"UHC.DisplayTimer\" }, \"color\": \"white\" }, { \"text\": \":\", \"color\": \"gray\" }, { \"score\": { \"name\": \"Секунды\", \"objective\": \"UHC.DisplayTimer\" }, \"color\": \"white\" }]", auto: true } replace