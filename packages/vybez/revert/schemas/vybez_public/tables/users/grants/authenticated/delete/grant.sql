-- Revert: schemas/vybez_public/tables/users/grants/authenticated/delete/grant from pg

BEGIN;
REVOKE DELETE ON TABLE "vybez_public".users FROM authenticated;
COMMIT;  

