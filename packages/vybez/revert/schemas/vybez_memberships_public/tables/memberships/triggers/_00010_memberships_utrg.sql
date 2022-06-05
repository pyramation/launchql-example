-- Revert: schemas/vybez_memberships_public/tables/memberships/triggers/_00010_memberships_utrg from pg

BEGIN;
DROP TRIGGER _00010_memberships_utrg ON "vybez_memberships_public".memberships;
COMMIT;  

