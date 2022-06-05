-- Revert: schemas/vybez_memberships_public/tables/app_membership_defaults/columns/id/alterations/alt0000000074 from pg

BEGIN;


ALTER TABLE "vybez_memberships_public".app_membership_defaults 
    ALTER COLUMN id DROP NOT NULL;


COMMIT;  

