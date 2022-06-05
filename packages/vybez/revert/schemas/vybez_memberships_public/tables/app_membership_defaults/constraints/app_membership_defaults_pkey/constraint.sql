-- Revert: schemas/vybez_memberships_public/tables/app_membership_defaults/constraints/app_membership_defaults_pkey/constraint from pg

BEGIN;


ALTER TABLE "vybez_memberships_public".app_membership_defaults 
    DROP CONSTRAINT app_membership_defaults_pkey;

COMMIT;  

