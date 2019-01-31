-- Deploy flipr:change_pass to pg
-- requires: users
-- requires: appschema
-- requires: pgcrypto

BEGIN;

create or replace function flipr.change_pass (name text, old_pass text, new_pass text)
    returns boolean language plpgsql security definer as $$
    BEGIN
        update flipr.users
        set password=crypt($3, gen_salt('md5'))
        where nickname=$1 and password=crypt($2, password);
        return FOUND;
    END;
$$;

COMMIT;
