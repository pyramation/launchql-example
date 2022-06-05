-- Revert: schemas/vybez_memberships_public/tables/admin_grants/columns/actor_id/alterations/alt0000000248 from pg

BEGIN;


ALTER TABLE "vybez_memberships_public".admin_grants 
    ALTER COLUMN actor_id DROP NOT NULL;


COMMIT;  

