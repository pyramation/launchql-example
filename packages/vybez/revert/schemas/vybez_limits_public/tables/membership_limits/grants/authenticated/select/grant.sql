-- Revert: schemas/vybez_limits_public/tables/membership_limits/grants/authenticated/select/grant from pg

BEGIN;
REVOKE SELECT ON TABLE "vybez_limits_public".membership_limits FROM authenticated;
COMMIT;  

