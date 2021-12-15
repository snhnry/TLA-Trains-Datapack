summon minecraft:armor_stand ^0 ^0.5 ^5 {NoGravity:1b,PersistenceRequired:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["rptrain_bogie","rptrain_linker","rptrain_rot","rptrain_bogiecolor","rptrain_steamwheels","rptrain_train","rptrain_spawn"],Pose:{Head:[0f,0.01f,0f]},ArmorItems:[{},{},{},{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:6052956},CustomModelData:2}}],CustomName:'{"text":"rptrain_base_front"}'}
summon minecraft:armor_stand ^0 ^0.5 ^-5 {NoGravity:1b,PersistenceRequired:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["rptrain_bogie","rptrain_linked","rptrain_invrot","rptrain_bogiecolor","rptrain_train","rptrain_spawn"],Pose:{Head:[0f,0.01f,0f]},ArmorItems:[{},{},{},{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:6052956},CustomModelData:2}}],Passengers:[{id:"minecraft:armor_stand",NoGravity:1b,PersistenceRequired:1b,Invulnerable:1b,Marker:0b,Small:0b,Invisible:1b,Tags:["rptrain_train","rptrain_spawn"],CustomName:'{"text":"rptrain_mid"}',Passengers:[{id:"minecraft:pig",NoGravity:1b,Silent:1b,Invulnerable:1b,CustomNameVisible:0b,DeathLootTable:"trains115_gshn28:empty",PersistenceRequired:1b,NoAI:1b,AgeLocked:1b,Saddle:1b,Tags:["rptrain_seat_mid","rptrain_train","rptrain_spawn"],CustomName:'{"text":"rptrain_holder"}',ActiveEffects:[{Id:14b,Amplifier:1b,Duration:99999,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:2},{Name:generic.movement_speed,Base:0}]}]}],CustomName:'{"text":"rptrain_base_back"}'}
summon minecraft:armor_stand ^0 ^1 ^0 {CustomNameVisible:0b,NoGravity:1b,PersistenceRequired:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["rptrain_train","rptrain_spawn"],Passengers:[{id:"minecraft:armor_stand",CustomNameVisible:0b,NoGravity:1b,PersistenceRequired:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["rptrain_train","rptrain_spawn"],Passengers:[{id:"minecraft:armor_stand",CustomNameVisible:0b,NoGravity:1b,PersistenceRequired:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["rptrain_steamfakeloco","rptrain_model_front","rptrain_train","rptrain_spawn"],Pose:{Head:[0f,0.01f,0f]},ArmorItems:[{},{},{},{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:6052956},CustomModelData:6}}],CustomName:'{"text":"rptrain_model"}'},{id:"minecraft:armor_stand",CustomNameVisible:0b,NoGravity:1b,PersistenceRequired:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["rptrain_steamfakeloco","rptrain_model_back","rptrain_train","rptrain_spawn"],Pose:{Head:[0f,0.01f,0f]},ArmorItems:[{},{},{},{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:6052956},CustomModelData:7}}],CustomName:'{"text":"rptrain_model"}'},{id:"minecraft:armor_stand",CustomNameVisible:0b,NoGravity:1b,PersistenceRequired:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["rptrain_model_front","rptrain_wheels","rptrain_train","rptrain_spawn"],Pose:{Head:[0f,0.01f,0f]},ArmorItems:[{},{},{},{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:6052956},CustomModelData:5}}],CustomName:'{"text":"rptrain_model"}'}],CustomName:'{"text":"rptrain_mid"}'}],CustomName:'{"text":"rptrain_base_middle"}'}
summon minecraft:armor_stand ^0 ^0.5 ^5 {CustomNameVisible:0b,NoGravity:1b,PersistenceRequired:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["rptrain_angle","rptrain_invrot","rptrain_train","rptrain_spawn"],CustomName:'{"text":"rptrain_angle_front"}'}
summon minecraft:armor_stand ^0 ^0.5 ^-5 {CustomNameVisible:0b,NoGravity:1b,PersistenceRequired:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["rptrain_angle","rptrain_rot","rptrain_train","rptrain_spawn"],CustomName:'{"text":"rptrain_angle_back"}'}
execute as @e[type=minecraft:armor_stand,tag=rptrain_rot,tag=rptrain_spawn] store result entity @s Rotation[0] float 1 run scoreboard players get @e[type=minecraft:turtle,tag=rptrain_trainspawn,limit=1] rptrain_rotation
scoreboard players add @s rptrain_rotation 180
execute if entity @s[scores={rptrain_rotation=360..}] run scoreboard players remove @s rptrain_rotation 360
execute as @e[type=minecraft:armor_stand,tag=rptrain_invrot,tag=rptrain_spawn] store result entity @s Rotation[0] float 1 run scoreboard players get @e[type=minecraft:turtle,tag=rptrain_trainspawn,limit=1] rptrain_rotation
execute as @e[type=minecraft:armor_stand,tag=rptrain_bogie,tag=rptrain_spawn] store result score @s rptrain_rotation run data get entity @s Rotation[0] 1
execute as @e[type=minecraft:armor_stand,tag=rptrain_bogie,tag=rptrain_spawn] if entity @s[scores={rptrain_rotation=..-1}] run scoreboard players add @s rptrain_rotation 360
execute as @e[type=minecraft:armor_stand,tag=rptrain_bogie,tag=rptrain_spawn] if entity @s[tag=rptrain_linked] run scoreboard players add @s rptrain_rotation 180
execute as @e[type=minecraft:armor_stand,tag=rptrain_bogie,tag=rptrain_spawn] if entity @s[scores={rptrain_rotation=360..}] run scoreboard players remove @s rptrain_rotation 360
execute as @e[type=minecraft:armor_stand,tag=rptrain_bogie,tag=rptrain_spawn] store result score @s rptrain_height run data get entity @s Pos[1]
execute as @e[type=minecraft:armor_stand,tag=rptrain_bogie,tag=rptrain_linker,tag=rptrain_spawn] run scoreboard players set @s rptrain_station 0
scoreboard players set @e[type=minecraft:armor_stand,tag=rptrain_bogie,tag=rptrain_spawn] rptrain_speed 0
execute as @e[type=minecraft:armor_stand,tag=rptrain_angle,tag=rptrain_spawn] at @s run function trains115_gshn28:model_update
execute as @e[type=armor_stand,tag=rptrain_bogie,tag=rptrain_spawn] at @s run tp @s ~ ~ ~ ~ ~
tag @e[tag=rptrain_spawn] remove rptrain_spawn
