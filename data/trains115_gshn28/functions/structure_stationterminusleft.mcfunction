fill ~ ~-3 ~ ~ ~-3 ~ minecraft:air
setblock ~ ~-3 ~ minecraft:command_block[facing=down]{TrackOutput:0b,Command:"execute positioned ~ ~3 ~ run scoreboard players set @e[type=minecraft:armor_stand,tag=rptrain_loco,tag=rptrain_linker,scores={rptrain_station=0,rptrain_speed=-30..30},distance=..2] rptrain_station 300",CustomName:'{"text":"rptrain_stationterminusleft_trigger"}'} replace
setblock ~ ~ ~ minecraft:oak_sign[rotation=0]{Text1:'{"text":"===============","bold":true}',Text2:'{"text":"Remove","color":"black","bold":true,"clickEvent":{"action":"run_command","value":"/fill ~0 ~-3 ~0 ~0 ~-3 ~0 air"}}',Text3:'{"text":"Structure","color":"black","bold":true,"clickEvent":{"action":"run_command","value":"/tellraw @p [\\"\\",{\\"text\\":\\"-- Structure Removed! --\\"}]"}}',Text4:'{"text":"===============","bold":true}'} replace
