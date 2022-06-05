-- Revert: schemas/vybez_public/tables/phone_numbers/grants/authenticated/delete/grant from pg

BEGIN;
REVOKE DELETE ON TABLE "vybez_public".phone_numbers FROM authenticated;
COMMIT;  

