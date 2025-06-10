#> emissive:_/init
#--------------------
# @load
#--------------------

scoreboard players set *installed _emissive 1

data remove storage emissive:config passthrough
data modify storage emissive:config passthrough.max_distance set value 2
data modify storage emissive:config passthrough.do_shapes set value true