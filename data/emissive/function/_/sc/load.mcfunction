#> emissive:_/sc/load
#--------------------
# ENTRYPOINT :: LOAD
#--------------------

scoreboard objectives add emissive.level dummy

scoreboard objectives add _emissive dummy
scoreboard objectives add _emissive.emitting dummy
scoreboard objectives add _emissive.id dummy

execute if score *installed _emissive matches 1 run return 1

scoreboard players set *installed _emissive 1

data remove storage emissive:config passthrough
data modify storage emissive:config passthrough.max_distance set value 2
data modify storage emissive:config passthrough.do_shapes set value true