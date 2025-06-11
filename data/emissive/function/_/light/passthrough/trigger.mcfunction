#> emissive:_/light/passthrough/trigger
# AS AT [emit source]
#--------------------
# 
#--------------------

scoreboard players operation *pt.depth _emissive = *cc.passthrough.max_distance _emissive
scoreboard players operation *pt.id _emissive = @s _emissive.id
scoreboard players operation *pt.level _emissive = @s _emissive.emitting

function emissive:_/light/passthrough/new/branch

tag @s add _emissive.ptchecked
function emissive:_/light/passthrough/loop
tag @s remove _emissive.pt_checked

kill @e[type=marker,distance=..16,tag=_emissive.pt]