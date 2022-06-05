-- Revert: schemas/vybez_memberships_private/tables/group_memberships_acl/columns/permissions/alterations/alt0000000310 from pg

BEGIN;


ALTER TABLE "vybez_memberships_private".group_memberships_acl 
    ALTER COLUMN permissions DROP NOT NULL;


COMMIT;  

