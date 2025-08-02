# IMPL > emissive:emit
# ptrecheck/do
#--------------------
# ../existing
#--------------------
scoreboard players operation @s _emissive.ptrecheck = *cc.passthrough.recheck_interval _emissive

execute store result score *x _emissive run function emissive:_/light/check_valid_block
execute if score *x _emissive matches 1 unless entity @s[tag=_emissive.ptsource] run return 1

scoreboard players set *terminate.nokill _emissive 1
function emissive:_/source/terminate/trigger
scoreboard players reset *terminate.nokill

function emissive:_/source/emit/trigger