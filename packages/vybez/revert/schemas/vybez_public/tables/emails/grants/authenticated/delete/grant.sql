-- Revert: schemas/vybez_public/tables/emails/grants/authenticated/delete/grant from pg

BEGIN;
REVOKE DELETE ON TABLE "vybez_public".emails FROM authenticated;
COMMIT;  

