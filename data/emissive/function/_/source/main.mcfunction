#> emissive:_/source/main
#--------------------
# _/tick AS AT [emit source]
#--------------------

execute unless block ~ ~ ~ #emissive:_/valid_sources run return run function emissive:_/source/terminate/trigger

execute unless score @s _emissive.keepalive matches 1 run return run function emissive:_/source/terminate/trigger

execute if score @s _emissive.ptrecheck matches 0 run function emissive:_/source/emit/trigger

execute if score @s _emissive.ptrecheck matches 1.. run scoreboard players remove @s _emissive.ptrecheck 1
scoreboard players set @s _emissive.keepalive 0
