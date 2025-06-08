# IMPL > emissive:emit
# main

scoreboard players operation *emit.id _emissive = @s _emissive.id
scoreboard players operation *emit.level _emissive = @s emissive.level

execute align xyz as @n[type=marker,tag=_emissive.source,distance=0..0.1] if score @s _emissive.emitting >= *emit.level _emissive unless score @s _emissive.id = *emit.id _emissive run return 1

