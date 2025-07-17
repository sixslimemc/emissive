#> emissive:_/source/emit/trigger
# % AS AT [emit source]
#--------------------
# _/impl/emit/existing
# _/impl/emit/new
#--------------------

execute if score @s _emissive.emitting matches ..0 run return run function emissive:_/source/terminate/trigger

execute store result score *x _emissive run function emissive:_/light/check_valid_block
execute store result score @s _emissive.self run scoreboard players add *self _emissive 1
execute as @e[type=marker,tag=_emissive.source,distance=0..0.1] unless score @s _emissive.self = *self _emissive if score @s _emissive.emitting > *emit.level _emissive run scoreboard players set *x _emissive 0

execute if score *x _emissive matches 1 run scoreboard players set @s _emissive.ptrecheck -1
execute if score *x _emissive matches 1 run return run function emissive:_/light/emit/trigger

# (it should already be true that this block is a valid source block, thus should passthrough)

execute if score *cc.passthrough.max_distance _emissive matches 1.. run function emissive:_/light/passthrough/trigger