-- Revert: schemas/vybez_memberships_public/tables/app_admin_grants/columns/actor_id/alterations/alt0000000113 from pg

BEGIN;


ALTER TABLE "vybez_memberships_public".app_admin_grants 
    ALTER COLUMN actor_id DROP NOT NULL;


COMMIT;  

