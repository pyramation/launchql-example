-- Deploy: schemas/vybez_status_public/tables/app_steps/triggers/app_steps_after_insert_tgr to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_status_public/schema
-- requires: schemas/vybez_status_private/schema
-- requires: schemas/vybez_status_public/tables/app_steps/table
-- requires: schemas/vybez_status_private/trigger_fns/tg_upd_achv

BEGIN;

CREATE TRIGGER app_steps_after_insert_tgr AFTER
INSERT
    ON "vybez_status_public".app_steps FOR EACH ROW
EXECUTE PROCEDURE "vybez_status_private".tg_upd_achv ();
COMMIT;
