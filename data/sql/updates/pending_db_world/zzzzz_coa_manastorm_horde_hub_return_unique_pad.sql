-- CoA Bots 3.0.1: the Horde hub return points to the one Horde teleport pad of the hub.
-- zz_manastorm_unique_horde_teleport_pad.sql keeps a single pad at that spot (guid 6901700) and removes 6901539;
-- zzzz_rev_20261112_01_manastorm_horde_hub_return.sql, applied after it, points team 1 back to 6901539, so the
-- Manastorm datastore found one valid hub return and did not load. Runs after both; replayable.
UPDATE `manastorm_hub_return` r
JOIN `gameobject` g ON g.`guid` = 6901700 AND g.`id` = 20832
SET r.`gameobject_guid` = 6901700
WHERE r.`team_id` = 1
  AND NOT EXISTS (SELECT 1 FROM `gameobject` p WHERE p.`guid` = r.`gameobject_guid` AND p.`id` = 20832);
