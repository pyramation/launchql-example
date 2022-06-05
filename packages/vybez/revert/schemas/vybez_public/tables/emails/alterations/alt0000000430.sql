-- Revert: schemas/vybez_public/tables/emails/alterations/alt0000000430 from pg

BEGIN;


ALTER TABLE "vybez_public".emails
    ENABLE ROW LEVEL SECURITY;

COMMIT;  

