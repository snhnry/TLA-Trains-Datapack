execute if score @s rptrain_sndcntr matches 0 at @e[type=minecraft:armor_stand,tag=rptrain_angle,distance=..2] positioned ^ ^ ^5 if entity @e[type=armor_stand,tag=rptrain_steamloco,distance=..2] run function trains115_gshn28:sound_engine_steam
execute at @e[type=minecraft:armor_stand,tag=rptrain_angle,distance=..2] positioned ^ ^ ^5 if entity @e[type=armor_stand,tag=rptrain_dieselloco,distance=..2] run function trains115_gshn28:sound_engine_diesel
execute at @e[type=minecraft:armor_stand,tag=rptrain_angle,distance=..2] positioned ^ ^ ^5 if entity @e[type=armor_stand,tag=rptrain_electricloco,distance=..2] run function trains115_gshn28:sound_engine_electric
execute at @e[type=minecraft:armor_stand,tag=rptrain_angle,distance=..2] positioned ^ ^ ^5 if entity @e[type=armor_stand,tag=rptrain_metroloco,distance=..2] run function trains115_gshn28:sound_engine_electric
execute at @e[type=minecraft:armor_stand,tag=rptrain_angle,distance=..2] positioned ^ ^ ^5 if entity @e[type=armor_stand,tag=rptrain_oldtramloco,distance=..2] run function trains115_gshn28:sound_engine_electric
execute at @e[type=minecraft:armor_stand,tag=rptrain_angle,distance=..2] positioned ^ ^ ^5 if entity @e[type=armor_stand,tag=rptrain_moderntramloco,distance=..2] run function trains115_gshn28:sound_engine_electric
