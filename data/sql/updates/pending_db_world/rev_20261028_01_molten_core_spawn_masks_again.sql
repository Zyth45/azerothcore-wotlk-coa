-- rev_20260930_99_ASC_northshire_revamp.sql changed on 2026-10-11, so the updater replayed it
-- on existing databases and its section 4 set every map-409 spawnMask back to 1 again, while
-- rev_20261001_13_molten_core_restore_spawn_masks.sql, unchanged, did not run a second time.
-- Molten Core was then empty on Heroic, Mythic and Ascended for any database created before
-- that change. A new file name makes the updater run this restore everywhere; on a fresh
-- install it changes nothing.

UPDATE `creature` SET `spawnMask` = 15 WHERE `map` = 409;
UPDATE `gameobject` SET `spawnMask` = 15 WHERE `map` = 409;
