-- Deploy: schemas/vybez_limits_private/trigger_fns/app_limits_dec_tg to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_limits_private/schema

BEGIN;

CREATE FUNCTION "vybez_limits_private".app_limits_dec_tg ()
  RETURNS TRIGGER
AS $CODEZ$
DECLARE
    actor_id uuid;
    limitname citext;
BEGIN
    IF (TG_NARGS < 1) THEN 
        RAISE EXCEPTION 'LIMIT_TRIGGER_ARGS (%)', TG_NAME;
    ELSIF (TG_NARGS = 1) THEN 
        limitname = TG_ARGV[0];        
        PERFORM "vybez_limits_private".app_limits_dec(
            limitname
        );
    ELSIF (TG_NARGS = 2) THEN 
        limitname = TG_ARGV[0];        
        EXECUTE format('SELECT ($1).%s', TG_ARGV[1])
        USING OLD INTO actor_id;
        PERFORM "vybez_limits_private".app_limits_dec(
            limitname, actor_id
        );
    END IF;
    RETURN OLD;
END;
$CODEZ$
LANGUAGE plpgsql VOLATILE;
COMMIT;
