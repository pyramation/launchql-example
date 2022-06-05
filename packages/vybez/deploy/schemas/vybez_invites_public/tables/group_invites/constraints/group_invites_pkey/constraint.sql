-- Deploy: schemas/vybez_invites_public/tables/group_invites/constraints/group_invites_pkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_invites_public/schema
-- requires: schemas/vybez_invites_public/tables/group_invites/table

BEGIN;

ALTER TABLE "vybez_invites_public".group_invites
    ADD CONSTRAINT group_invites_pkey PRIMARY KEY (id);
COMMIT;
