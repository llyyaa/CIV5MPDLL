alter table Resources add column UnHappinessModifierFormula text null references LuaFormula(Type);
alter table Resources add column CityConnectionTradeRouteGoldModifierFormula text null references LuaFormula(Type);
alter table Resources add column UnitPurchaseCostModifierFormula text null references LuaFormula(Type);
alter table Resources add column BuildingPurchaseCostModifierFormula text null references LuaFormula(Type);

alter table Policies add column ResourceCityConnectionTradeRouteGoldModifier integer not null default 0;
alter table Policies add column ResourceUnhappinessModifier integer not null default 0;

create table Resource_GlobalYieldModifiers (
    ResourceType text references Resources(Type),
    YieldType text references Yields(Type),
    YieldFormula text text references LuaFormula(Type)
);