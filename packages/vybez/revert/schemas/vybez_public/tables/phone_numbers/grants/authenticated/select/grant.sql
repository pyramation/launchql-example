-- Revert: schemas/vybez_public/tables/phone_numbers/grants/authenticated/select/grant from pg

BEGIN;
REVOKE SELECT ON TABLE "vybez_public".phone_numbers FROM authenticated;
COMMIT;  

