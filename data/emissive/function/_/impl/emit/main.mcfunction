# IMPL > emissive:emit
# main

execute unless score @s emissive.level matches 0..15 run return 0
execute unless block ~ ~ ~ #emissive:_/valid_sources run return run execute if entity @s[tag=_emissive.initialized] run function emissive:_/impl/emit/init/deinit

scoreboard players operation *emit.level _emissive = @s emissive.level

execute as @s[tag=!_emissive.initialized] run function emissive:_/impl/emit/init/do

scoreboard players operation *emit.id _emissive = @s _emissive.id

# find existing source
execute store result storage emissive:_ x.id int 1 run scoreboard players get *emit.id _emissive
execute store result score *x _emissive run function emissive:_/impl/emit/find_existing with storage emissive:_ x
execute if score *x _emissive matches 1 run return 0

# summon source if not present
execute summon marker run function emissive:_/impl/emit/new
