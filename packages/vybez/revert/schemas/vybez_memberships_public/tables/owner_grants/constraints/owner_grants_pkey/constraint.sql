-- Revert: schemas/vybez_memberships_public/tables/owner_grants/constraints/owner_grants_pkey/constraint from pg

BEGIN;


ALTER TABLE "vybez_memberships_public".owner_grants 
    DROP CONSTRAINT owner_grants_pkey;

COMMIT;  

