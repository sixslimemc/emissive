#> emissive:_/light/passthrough/loop
# AS AT [emit source]
#--------------------
# 
#--------------------

execute as @e[type=marker,distance=..16,tag=_emissive.ptroot] at @s run function emissive:_/light/passthrough/root

scoreboard players remove *pt.depth _emissive 1
execute if score *pt.depth _emissive matches 0.. if entity @n[type=marker,distance=..16,tag=_emissive.ptroot] run function emissive:_/light/passthrough/loop
