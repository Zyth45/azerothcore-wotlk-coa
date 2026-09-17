-- mod-ascension-compat reads creature_display_preset at startup (#3983). The table ships with no
-- SQL, so a world database built from this tree has none and the worldserver stops at
-- "Your database structure is not up to date".
--
-- Columns and types follow AscensionCreaturePresetMgr::LoadFromDB: one row per display of an entry.
CREATE TABLE IF NOT EXISTS `creature_display_preset` (
  `entry` INT UNSIGNED NOT NULL,
  `display_id` INT UNSIGNED NOT NULL,
  `race` TINYINT UNSIGNED NOT NULL DEFAULT 0,
  `gender` TINYINT UNSIGNED NOT NULL DEFAULT 0,
  `class` TINYINT UNSIGNED NOT NULL DEFAULT 0,
  `skin` TINYINT UNSIGNED NOT NULL DEFAULT 0,
  `face` TINYINT UNSIGNED NOT NULL DEFAULT 0,
  `hair` TINYINT UNSIGNED NOT NULL DEFAULT 0,
  `haircolor` TINYINT UNSIGNED NOT NULL DEFAULT 0,
  `facialhair` TINYINT UNSIGNED NOT NULL DEFAULT 0,
  `guild_id` INT UNSIGNED NOT NULL DEFAULT 0,
  `item_head` INT UNSIGNED NOT NULL DEFAULT 0,
  `item_shoulders` INT UNSIGNED NOT NULL DEFAULT 0,
  `item_body` INT UNSIGNED NOT NULL DEFAULT 0,
  `item_chest` INT UNSIGNED NOT NULL DEFAULT 0,
  `item_waist` INT UNSIGNED NOT NULL DEFAULT 0,
  `item_legs` INT UNSIGNED NOT NULL DEFAULT 0,
  `item_feet` INT UNSIGNED NOT NULL DEFAULT 0,
  `item_wrists` INT UNSIGNED NOT NULL DEFAULT 0,
  `item_hands` INT UNSIGNED NOT NULL DEFAULT 0,
  `item_back` INT UNSIGNED NOT NULL DEFAULT 0,
  `item_tabard` INT UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`entry`, `display_id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;
