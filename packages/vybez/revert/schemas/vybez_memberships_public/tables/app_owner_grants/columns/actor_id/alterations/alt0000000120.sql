-- Revert: schemas/vybez_memberships_public/tables/app_owner_grants/columns/actor_id/alterations/alt0000000120 from pg

BEGIN;


ALTER TABLE "vybez_memberships_public".app_owner_grants 
    ALTER COLUMN actor_id DROP NOT NULL;


COMMIT;  

