-- Revert: schemas/vybez_limits_public/tables/membership_limits/grants/authenticated/insert/grant from pg

BEGIN;
REVOKE INSERT ON TABLE "vybez_limits_public".membership_limits FROM authenticated;
COMMIT;  

