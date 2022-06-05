-- Revert: schemas/vybez_memberships_public/tables/membership_types/columns/description/column from pg

BEGIN;


ALTER TABLE "vybez_memberships_public".membership_types DROP COLUMN description;
COMMIT;  

