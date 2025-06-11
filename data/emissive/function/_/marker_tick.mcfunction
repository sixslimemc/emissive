#> emissive:_/marker_tick
# % AS AT [ticking marker]
#--------------------
# _/tick
#--------------------

execute as @s[tag=_emissive.source] run return run function emissive:_/source/main
execute as @s[tag=_emissive.ptlight] run return run function emissive:_/light/ptmain
kill @s[tag=_emissive.proxy]