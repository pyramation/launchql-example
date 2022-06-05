-- Revert: schemas/vybez_memberships_public/tables/group_owner_grants/constraints/group_owner_grants_pkey/constraint from pg

BEGIN;


ALTER TABLE "vybez_memberships_public".group_owner_grants 
    DROP CONSTRAINT group_owner_grants_pkey;

COMMIT;  

