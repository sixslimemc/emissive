#> emissive:_/light/passthrough/loop
# AS AT [emit source]
#--------------------
# 
#--------------------

scoreboard players remove *pt.depth _emissive 1
scoreboard players remove *pt.level _emissive 1

execute as @e[type=marker,distance=..16,tag=_emissive.ptroot] at @s run function emissive:_/light/passthrough/root

execute if score *pt.depth _emissive matches 1.. if score *pt.light _emissive matches 1.. if entity @n[type=marker,distance=..16,tag=_emissive.ptroot] run function emissive:_/light/passthrough/loop
