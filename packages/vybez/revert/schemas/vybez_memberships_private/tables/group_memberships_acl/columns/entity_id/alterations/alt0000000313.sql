-- Revert: schemas/vybez_memberships_private/tables/group_memberships_acl/columns/entity_id/alterations/alt0000000313 from pg

BEGIN;


ALTER TABLE "vybez_memberships_private".group_memberships_acl 
    ALTER COLUMN entity_id DROP NOT NULL;


COMMIT;  

