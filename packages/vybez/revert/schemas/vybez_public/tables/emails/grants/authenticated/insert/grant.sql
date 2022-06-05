-- Revert: schemas/vybez_public/tables/emails/grants/authenticated/insert/grant from pg

BEGIN;
REVOKE INSERT ( email, owner_id, is_primary ) ON TABLE "vybez_public".emails FROM authenticated;
COMMIT;  

