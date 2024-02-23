CREATE TABLE Belief_YieldPerBirth (
    BeliefType TEXT REFERENCES Beliefs(Type),
    YieldType TEXT REFERENCES Yields(Type),
    Yield NOT NULL DEFAULT 0
);

ALTER TABLE Beliefs ADD COLUMN 'AllowYieldPerBirth' BOOLEAN DEFAULT 0;
ALTER TABLE Beliefs ADD COLUMN 'CityExtraMissionarySpreads' INTEGER DEFAULT 0;
ALTER TABLE Beliefs ADD COLUMN 'HolyCityPressureModifier' INTEGER DEFAULT 0;
ALTER TABLE Beliefs ADD COLUMN 'HolyCityUnitExperence' INTEGER DEFAULT 0;
ALTER TABLE Beliefs ADD COLUMN 'LandmarksTourismPercent' INTEGER DEFAULT 0;
ALTER TABLE Beliefs ADD COLUMN 'FreePromotionForProphet' TEXT DEFAULT NULL;

CREATE TABLE Belief_GreatPersonPoints (
    BeliefType TEXT REFERENCES Beliefs(Type),
    GreatPersonType TEXT REFERENCES GreatPersons(Type),
    Value INTEGER DEFAULT 0
);
ALTER TABLE Beliefs ADD COLUMN 'GreatPersonPointsPerCity' BOOLEAN DEFAULT 0;
ALTER TABLE Beliefs ADD COLUMN 'GreatPersonPointsCapital' BOOLEAN DEFAULT 0;
ALTER TABLE Beliefs ADD COLUMN 'GreatPersonPointsHolyCity' BOOLEAN DEFAULT 0;

ALTER TABLE Beliefs ADD COLUMN 'SameReligionMinorRecoveryModifier' INTEGER DEFAULT 0;
ALTER TABLE Beliefs ADD COLUMN 'GoldenAgeModifier' INTEGER DEFAULT 0;
ALTER TABLE Beliefs ADD COLUMN 'ExtraSpies' INTEGER DEFAULT 0;

CREATE TABLE Belief_TerrainYieldChangesAdditive (
    BeliefType TEXT REFERENCES Beliefs(Type),
    TerrainType TEXT REFERENCES Terrains(Type),
    YieldType TEXT REFERENCES Yields(Type),
    Yield NOT NULL DEFAULT 0
);

CREATE TABLE Belief_TerrainCityYieldChanges (
    BeliefType TEXT REFERENCES Beliefs(Type),
    TerrainType TEXT REFERENCES Terrains(Type),
    YieldType TEXT REFERENCES Yields(Type),
    Yield NOT NULL DEFAULT 0
);