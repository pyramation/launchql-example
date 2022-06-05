-- Deploy: schemas/vybez_status_private/trigger_fns/tg_achv_bool to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_status_private/schema
-- requires: schemas/vybez_status_private/procedures/completed_step/procedure

BEGIN;

CREATE FUNCTION "vybez_status_private".tg_achv_bool ()
  RETURNS TRIGGER
  AS $$
DECLARE
  is_true boolean;
  task_name text;
BEGIN
    IF (TG_OP = 'INSERT' OR TG_OP = 'UPDATE') THEN
        task_name = TG_ARGV[1]::text;
        EXECUTE format('SELECT ($1).%s IS TRUE', TG_ARGV[0])
        USING NEW INTO is_true;
        IF (is_true IS TRUE) THEN
            PERFORM "vybez_status_private".completed_step(task_name);
        END IF;
        RETURN NEW;
    END IF;
END;
$$
LANGUAGE 'plpgsql'
VOLATILE;
GRANT EXECUTE ON FUNCTION "vybez_status_private".tg_achv_bool TO authenticated;
COMMIT;
