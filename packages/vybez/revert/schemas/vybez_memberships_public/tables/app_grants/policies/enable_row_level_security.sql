-- Revert: schemas/vybez_memberships_public/tables/app_grants/policies/enable_row_level_security from pg

BEGIN;


ALTER TABLE "vybez_memberships_public".app_grants
    DISABLE ROW LEVEL SECURITY;

COMMIT;  

