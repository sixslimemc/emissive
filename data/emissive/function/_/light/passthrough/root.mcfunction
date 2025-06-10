#> emissive:_/light/passthrough/root
# % AS AT [passthrough root]
#--------------------
# 
#--------------------


execute if entity @n[type=marker,distance=..0.1,tag=_emissive.ptchecked] run return run kill @s
tag @s add _emissive.ptchecked
tag @s remove _emissive.ptroot

execute unless block ~ ~ ~ #emissive:_/valid_sources run return 0

execute if entity @n[type=marker,distance=0.9..1.1,tag=_emissive.ptvalid] run return 0

execute if function emissive:_/light/check_valid_block run return run function emissive:_/light/passthrough/valid

execute if score *pt.depth _emissive matches ..0 run return 0
# execute if score @s _emissive.ptdepth matches ..0 run return 0
# scoreboard players operation *pt.newdepth _emissive = @s _emissive.ptdepth
# scoreboard players remove *pt.newdepth _emissive 1

function emissive:_/light/passthrough/new/check
