ALTER TABLE Units
  ADD MoveAfterUpgrade INTEGER DEFAULT 0;

INSERT INTO CustomModDbUpdates(Name, Value) VALUES('GLOBAL_MOVE_AFTER_UPGRADE', 1);