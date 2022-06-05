-- Revert: schemas/vybez_memberships_private/tables/app_memberships_acl/columns/actor_id/alterations/alt0000000083 from pg

BEGIN;


ALTER TABLE "vybez_memberships_private".app_memberships_acl 
    ALTER COLUMN actor_id DROP NOT NULL;


COMMIT;  

