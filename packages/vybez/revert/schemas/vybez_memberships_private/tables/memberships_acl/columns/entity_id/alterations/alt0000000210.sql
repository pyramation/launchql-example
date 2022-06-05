-- Revert: schemas/vybez_memberships_private/tables/memberships_acl/columns/entity_id/alterations/alt0000000210 from pg

BEGIN;


ALTER TABLE "vybez_memberships_private".memberships_acl 
    ALTER COLUMN entity_id DROP NOT NULL;


COMMIT;  

