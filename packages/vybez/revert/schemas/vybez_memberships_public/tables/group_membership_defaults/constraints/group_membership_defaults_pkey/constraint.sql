-- Revert: schemas/vybez_memberships_public/tables/group_membership_defaults/constraints/group_membership_defaults_pkey/constraint from pg

BEGIN;


ALTER TABLE "vybez_memberships_public".group_membership_defaults 
    DROP CONSTRAINT group_membership_defaults_pkey;

COMMIT;  

