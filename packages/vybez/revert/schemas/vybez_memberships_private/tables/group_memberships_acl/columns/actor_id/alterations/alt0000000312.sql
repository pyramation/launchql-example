-- Revert: schemas/vybez_memberships_private/tables/group_memberships_acl/columns/actor_id/alterations/alt0000000312 from pg

BEGIN;


ALTER TABLE "vybez_memberships_private".group_memberships_acl 
    ALTER COLUMN actor_id DROP NOT NULL;


COMMIT;  

