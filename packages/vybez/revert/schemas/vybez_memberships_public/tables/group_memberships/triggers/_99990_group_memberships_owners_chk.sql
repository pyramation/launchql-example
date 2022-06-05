-- Revert: schemas/vybez_memberships_public/tables/group_memberships/triggers/_99990_group_memberships_owners_chk from pg

BEGIN;
DROP TRIGGER _99990_group_memberships_owners_chk ON "vybez_memberships_public".group_memberships;
COMMIT;  

