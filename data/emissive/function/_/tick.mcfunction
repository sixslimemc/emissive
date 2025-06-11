#> emissive:_/tick
#--------------------
# @tick
#--------------------
schedule function emissive:_/tick 1t

execute as @e[type=marker,tag=_emissive.tick] at @s run function emissive:_/marker_tick