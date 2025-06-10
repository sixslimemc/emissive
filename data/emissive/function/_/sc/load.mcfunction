#> emissive:_/sc/load
#--------------------
# ENTRYPOINT :: LOAD
#--------------------

scoreboard objectives add emissive.level dummy

scoreboard objectives add _emissive dummy
scoreboard objectives add _emissive.emitting dummy
scoreboard objectives add _emissive.id dummy

execute unless score *installed _emissive matches 1 run function emissive:_/init

execute store result score *cc.passthrough.max_distance _emissive run data get storage emissive:config passthrough.max_distance
execute store success score *cc.passthrough.do_shapes _emissive if data storage emissive:config passthrough{do_shapes:true}