-- Revert: schemas/vybez_memberships_public/tables/memberships/grants/authenticated/insert/grant from pg

BEGIN;
REVOKE INSERT ( actor_id, entity_id ) ON TABLE "vybez_memberships_public".memberships FROM authenticated;
COMMIT;  

