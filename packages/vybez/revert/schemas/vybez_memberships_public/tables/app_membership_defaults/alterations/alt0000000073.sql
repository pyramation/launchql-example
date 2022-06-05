-- Revert: schemas/vybez_memberships_public/tables/app_membership_defaults/alterations/alt0000000073 from pg

BEGIN;


ALTER TABLE "vybez_memberships_public".app_membership_defaults
    ENABLE ROW LEVEL SECURITY;

COMMIT;  

