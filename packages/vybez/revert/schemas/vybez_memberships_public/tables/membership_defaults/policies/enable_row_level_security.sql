-- Revert: schemas/vybez_memberships_public/tables/membership_defaults/policies/enable_row_level_security from pg

BEGIN;


ALTER TABLE "vybez_memberships_public".membership_defaults
    DISABLE ROW LEVEL SECURITY;

COMMIT;  

