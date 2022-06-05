-- Revert: schemas/vybez_limits_public/tables/membership_limits/grants/authenticated/delete/grant from pg

BEGIN;
REVOKE DELETE ON TABLE "vybez_limits_public".membership_limits FROM authenticated;
COMMIT;  

