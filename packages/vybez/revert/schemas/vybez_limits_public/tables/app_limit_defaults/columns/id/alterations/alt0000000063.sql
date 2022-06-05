-- Revert: schemas/vybez_limits_public/tables/app_limit_defaults/columns/id/alterations/alt0000000063 from pg

BEGIN;


ALTER TABLE "vybez_limits_public".app_limit_defaults 
    ALTER COLUMN id DROP NOT NULL;


COMMIT;  

