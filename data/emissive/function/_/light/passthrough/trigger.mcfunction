#> emissive:_/light/passthrough/trigger
# AS AT [emit source]
#--------------------
# _/source/emit/trigger
#--------------------

execute unless score *cc.passthrough.recheck_interval _emissive matches ..0 run scoreboard players operation @s _emissive.ptrecheck = *cc.passthrough.recheck_interval _emissive

scoreboard players operation *pt.depth _emissive = *cc.passthrough.max_distance _emissive
scoreboard players operation *pt.id _emissive = @s _emissive.id
scoreboard players operation *pt.level _emissive = @s _emissive.emitting

execute store result storage emissive:_ x.id int 1 run scoreboard players get *pt.id _emissive
function emissive:_/light/passthrough/kill_old with storage emissive:_ x

function emissive:_/light/passthrough/new/branch

tag @s add _emissive.ptchecked
function emissive:_/light/passthrough/loop
tag @s remove _emissive.ptchecked

kill @e[type=marker,distance=..16,tag=_emissive.pt]