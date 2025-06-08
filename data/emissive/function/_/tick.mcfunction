#> emissive:_/tick
#--------------------
# @tick
#--------------------
schedule function emissive:_/tick 1t

execute as @e[type=marker,tag=_emissive.light] at @s run function emissive:_/light/main