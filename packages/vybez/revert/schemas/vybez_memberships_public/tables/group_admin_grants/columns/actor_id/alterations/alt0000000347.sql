-- Revert: schemas/vybez_memberships_public/tables/group_admin_grants/columns/actor_id/alterations/alt0000000347 from pg

BEGIN;


ALTER TABLE "vybez_memberships_public".group_admin_grants 
    ALTER COLUMN actor_id DROP NOT NULL;


COMMIT;  

