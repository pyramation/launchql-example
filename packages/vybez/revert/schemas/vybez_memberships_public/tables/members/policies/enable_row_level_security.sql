-- Revert: schemas/vybez_memberships_public/tables/members/policies/enable_row_level_security from pg

BEGIN;


ALTER TABLE "vybez_memberships_public".members
    DISABLE ROW LEVEL SECURITY;

COMMIT;  

