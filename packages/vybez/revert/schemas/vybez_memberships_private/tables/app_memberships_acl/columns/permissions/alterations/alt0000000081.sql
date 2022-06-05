-- Revert: schemas/vybez_memberships_private/tables/app_memberships_acl/columns/permissions/alterations/alt0000000081 from pg

BEGIN;


ALTER TABLE "vybez_memberships_private".app_memberships_acl 
    ALTER COLUMN permissions DROP NOT NULL;


COMMIT;  

