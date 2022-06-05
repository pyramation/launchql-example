-- Revert: schemas/vybez_memberships_public/tables/group_membership_defaults/columns/entity_id/alterations/alt0000000316 from pg

BEGIN;


ALTER TABLE "vybez_memberships_public".group_membership_defaults 
    ALTER COLUMN entity_id DROP NOT NULL;


COMMIT;  

