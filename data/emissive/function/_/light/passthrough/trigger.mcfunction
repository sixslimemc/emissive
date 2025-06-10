#> emissive:_/light/passthrough/trigger
# AS AT [emit source]
#--------------------
# 
#--------------------

scoreboard players operation *pt.depth _emissive = *cc.passthrough.max_distance _emissive
scoreboard players operation *pt.id _emissive = @s _emissive.id

function emissive:_/light/passthrough/new/check

function emissive:_/light/passthrough/loop

kill @e[type=marker,distance=..16,tag=_emissive.pt]