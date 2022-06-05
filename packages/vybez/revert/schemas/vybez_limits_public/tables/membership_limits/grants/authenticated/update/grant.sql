-- Revert: schemas/vybez_limits_public/tables/membership_limits/grants/authenticated/update/grant from pg

BEGIN;
REVOKE UPDATE ON TABLE "vybez_limits_public".membership_limits FROM authenticated;
COMMIT;  

