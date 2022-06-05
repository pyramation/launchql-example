-- Revert: schemas/vybez_memberships_public/tables/members/constraints/members_pkey/constraint from pg

BEGIN;


ALTER TABLE "vybez_memberships_public".members 
    DROP CONSTRAINT members_pkey;

COMMIT;  

