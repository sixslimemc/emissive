# IMPL > emissive:emit
# clear_old
#--------------------
# ./existing
#--------------------

scoreboard players set *terminate.nokill _emissive 1
function emissive:_/source/terminate/trigger
scoreboard players reset *terminate.nokill _emissive