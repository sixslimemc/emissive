#> emissive:_/init
#--------------------
# @load
#--------------------

data remove storage emissive:config passthrough
data modify storage emissive:config passthrough.max_distance set value 2
data modify storage emissive:config passthrough.do_shapes set value true
data modify storage emissive:config passthrough.recheck_interval set value 10