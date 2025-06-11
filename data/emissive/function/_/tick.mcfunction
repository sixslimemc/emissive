#> emissive:_/tick
#--------------------
# @tick
#--------------------
schedule function emissive:_/tick 1t

execute as @e[type=marker,tag=_emissive.source] at @s run function emissive:_/source/main
execute as @e[type=marker,tag=_emissive.ptlight] at @s run function emissive:_/light/ptmain
kill @e[type=marker,tag=_emissive.proxy]