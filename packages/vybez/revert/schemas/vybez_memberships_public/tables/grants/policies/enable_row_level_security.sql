-- Revert: schemas/vybez_memberships_public/tables/grants/policies/enable_row_level_security from pg

BEGIN;


ALTER TABLE "vybez_memberships_public".grants
    DISABLE ROW LEVEL SECURITY;

COMMIT;  

