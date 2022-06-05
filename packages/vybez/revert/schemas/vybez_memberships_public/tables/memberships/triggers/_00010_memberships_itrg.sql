-- Revert: schemas/vybez_memberships_public/tables/memberships/triggers/_00010_memberships_itrg from pg

BEGIN;
DROP TRIGGER _00010_memberships_itrg ON "vybez_memberships_public".memberships;
COMMIT;  

