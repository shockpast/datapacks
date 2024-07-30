scoreboard objectives add UHC.Items.GoldenHead minecraft.used:minecraft.player_head

setblock -3 -64 -1 repeating_command_block[ facing = south ]{ Command: "effect give @a[scores={UHC.Items.GoldenHead=1..}] absorption 120 0 true", auto: true }
setblock -3 -64 0 chain_command_block[ facing = south ]{ Command: "effect give @a[scores={UHC.Items.GoldenHead=1..}] regeneration 5 2 true", auto: true }
setblock -3 -64 0 chain_command_block[ facing = south ]{ Command: "effect give @a[scores={UHC.Items.GoldenHead=1..}] speed 16 1 true", auto: true }
setblock -3 -64 1 chain_command_block[ facing = south ]{ Command: "execute as @a[scores={UHC.Items.GoldenHead=1..}] at @s run fill ~-15 ~-15 ~-15 ~15 ~15 ~15 air replace player_head", auto: true }
setblock -3 -64 2 chain_command_block[ facing = south ]{ Command: "execute as @a[scores={UHC.Items.GoldenHead=1..}] at @s run fill ~-15 ~-15 ~-15 ~15 ~15 ~15 air replace player_wall_head", auto: true }
setblock -3 -64 3 chain_command_block[ facing = south ]{ Command: "tellraw @a[scores={UHC.Items.GoldenHead=1..}] \"§6[UHC] §fВы сьели §eЗолотую Голову§f и получили §aположительные§f эффекты.\"", auto: true }
setblock -3 -64 4 chain_command_block[ facing = south ]{ Command: "scoreboard players reset @a[scores={UHC.Items.GoldenHead=1..}] UHC.Items.GoldenHead", auto: true }