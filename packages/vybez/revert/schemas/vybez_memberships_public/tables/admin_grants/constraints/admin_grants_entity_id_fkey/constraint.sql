-- Revert: schemas/vybez_memberships_public/tables/admin_grants/constraints/admin_grants_entity_id_fkey/constraint from pg

BEGIN;


ALTER TABLE "vybez_memberships_public".admin_grants 
    DROP CONSTRAINT admin_grants_entity_id_fkey;

COMMIT;  

