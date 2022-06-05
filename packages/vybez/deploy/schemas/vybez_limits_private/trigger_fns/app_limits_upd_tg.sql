-- Deploy: schemas/vybez_limits_private/trigger_fns/app_limits_upd_tg to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_limits_private/schema

BEGIN;

CREATE FUNCTION "vybez_limits_private".app_limits_upd_tg ()
  RETURNS TRIGGER
AS $CODEZ$
DECLARE
    limit_ok boolean;
    old_actor_id uuid;
    new_actor_id uuid;
    limitname citext;
BEGIN
    IF (TG_NARGS < 1) THEN 
        RAISE EXCEPTION 'LIMIT_TRIGGER_ARGS (%)', TG_NAME;
    ELSIF (TG_NARGS = 1) THEN 
        RAISE EXCEPTION 'LIMIT_TRIGGER_ARGS (%)', TG_NAME;
    ELSIF (TG_NARGS = 2) THEN 
        limitname = TG_ARGV[0];        
        EXECUTE format('SELECT ($1).%s', TG_ARGV[1])
        USING NEW INTO new_actor_id;
        EXECUTE format('SELECT ($1).%s', TG_ARGV[1])
        USING OLD INTO old_actor_id;
        PERFORM "vybez_limits_private".app_limits_dec(
            limitname, old_actor_id
        );
        limit_ok = "vybez_limits_private".app_limits_inc(
            limitname, new_actor_id
        );
        
    END IF;
    IF (limit_ok IS FALSE) THEN 
        RAISE EXCEPTION 'LIMIT_REACHED';
    END IF;
    RETURN NEW;
END;
$CODEZ$
LANGUAGE plpgsql VOLATILE;
COMMIT;
