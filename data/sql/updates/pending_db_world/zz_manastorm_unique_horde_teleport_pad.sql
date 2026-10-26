DELETE FROM `gameobject`
WHERE `guid` = 6901700
   OR (`id` = 20832 AND `map` = 1
       AND ABS(`position_x` - 1648.1) < 0.01
       AND ABS(`position_y` - (-4431.11)) < 0.01
       AND ABS(`position_z` - 16.9532) < 0.01);

INSERT INTO `gameobject`
(`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`,
 `position_x`, `position_y`, `position_z`, `orientation`,
 `rotation0`, `rotation1`, `rotation2`, `rotation3`,
 `spawntimesecs`, `animprogress`, `state`, `ScriptName`, `VerifiedBuild`, `Comment`)
VALUES
(6901700, 20832, 1, 0, 0, 1, 1,
 1648.1, -4431.11, 16.9532, 2.18527,
 0, 0, 0.887843, 0.460146,
 300, 0, 1, '', NULL, NULL);

INSERT INTO `manastorm_hub_return` (`team_id`, `gameobject_guid`, `z_offset`)
VALUES (1, 6901700, 1)
ON DUPLICATE KEY UPDATE `gameobject_guid` = VALUES(`gameobject_guid`), `z_offset` = VALUES(`z_offset`);
