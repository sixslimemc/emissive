#> emissive:_/source/main
#--------------------
# _/tick AS [emit source]
#--------------------

execute unless block ~ ~ ~ #emissive:_/valid_sources run return run function emissive:_/source/terminate/trigger

execute unless score @s _emissive.keepalive matches 1 run function emissive:_/source/terminate/trigger
scoreboard players set @s _emissive.keepalive 0
