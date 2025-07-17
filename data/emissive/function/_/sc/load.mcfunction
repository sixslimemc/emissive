#> emissive:_/sc/load
#--------------------
# ENTRYPOINT :: LOAD
#--------------------

scoreboard objectives add emissive.level dummy

scoreboard objectives add _emissive dummy
scoreboard objectives add _emissive.emitting dummy
scoreboard objectives add _emissive.id dummy
scoreboard objectives add _emissive.ptdepth dummy
scoreboard objectives add _emissive.keepalive dummy
scoreboard objectives add _emissive.ptrecheck dummy

# > execute store result score @s _emissive.self run scoreboard players add *self _emissive 1
scoreboard objectives add _emissive.self dummy

# DEBUG
scoreboard players reset *init _emissive

execute unless score *init _emissive matches 1 run function emissive:_/init
scoreboard players set *init _emissive 1

execute store result score *cc.passthrough.max_distance _emissive run data get storage emissive:config passthrough.max_distance
execute store success score *cc.passthrough.do_shapes _emissive if data storage emissive:config passthrough{do_shapes:true}
execute store result score *cc.passthrough.recheck_interval _emissive run data get storage emissive:config passthrough.recheck_interval