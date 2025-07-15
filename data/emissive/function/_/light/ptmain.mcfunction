#> emissive:_/light/ptmain
#--------------------
# _/tick
#--------------------

execute unless score @s _emissive.keepalive matches 1 run function emissive:_/light/terminate/trigger
scoreboard players set @s _emissive.keepalive 0