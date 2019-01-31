-- Deploy flipr:change_pass to pg
-- requires: users
-- requires: appschema

BEGIN;

create or replace function flipr.change_pass (name text, old_pass text, new_pass text)
    returns boolean language plpgsql security definer as $$
    BEGIN
        update flipr.users set password = md5($3) where nickname=$1 and password=md5($2);
        return FOUND;
    END;
$$;

COMMIT;
