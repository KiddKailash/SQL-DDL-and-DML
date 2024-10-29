-- Task: Add a constraint to ensure container capacities are between 100mL and 3000mL.

ALTER TABLE CONTAINERS
    ADD CONSTRAINT MinLimit CHECK(Capacity >= 100),
    ADD CONSTRAINT MaxLimit CHECK(Capacity <= 3000);