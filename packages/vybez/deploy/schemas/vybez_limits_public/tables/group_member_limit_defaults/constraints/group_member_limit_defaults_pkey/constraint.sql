-- Deploy: schemas/vybez_limits_public/tables/group_member_limit_defaults/constraints/group_member_limit_defaults_pkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_limits_public/schema
-- requires: schemas/vybez_limits_public/tables/group_member_limit_defaults/table

BEGIN;

ALTER TABLE "vybez_limits_public".group_member_limit_defaults
    ADD CONSTRAINT group_member_limit_defaults_pkey PRIMARY KEY (id);
COMMIT;
