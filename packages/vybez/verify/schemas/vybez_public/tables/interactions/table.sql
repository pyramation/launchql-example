-- Verify: schemas/vybez_public/tables/interactions/table on pg

BEGIN;
SELECT verify_table('vybez_public.interactions');
COMMIT;  

