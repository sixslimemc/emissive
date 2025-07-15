# IMPL > emissive:emit
# main

execute unless score @s emissive.level matches 0..15 run return 0
execute unless block ~ ~ ~ #emissive:_/valid_sources run return 0

scoreboard players operation *emit.level _emissive = @s emissive.level

execute as @s[tag=!_emissive.initialized] run function emissive:_/impl/emit/init/do

scoreboard players operation *emit.id _emissive = @s _emissive.id

# find existing source
execute as @e[type=marker,tag=_emissive.source, sort=nearest] if score @s _emissive.id = *emit.id _emissive run return run function emissive:_/impl/emit/existing
# summon source if not present
execute summon marker run function emissive:_/impl/emit/new
