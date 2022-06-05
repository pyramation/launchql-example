-- Revert: schemas/vybez_public/tables/phone_numbers/grants/authenticated/update/grant from pg

BEGIN;
REVOKE UPDATE ( cc, number, owner_id, is_primary ) ON TABLE "vybez_public".phone_numbers FROM authenticated;
COMMIT;  

