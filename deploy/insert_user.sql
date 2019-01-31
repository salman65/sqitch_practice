-- Deploy flipr:insert_user to pg
-- requires: users
-- requires: appschema

BEGIN;

create or replace function flipr.insert_user (name text, pass text) returns void language sql security definer as $$
    insert into flipr.users values ($1, md5($2));
$$; 

COMMIT;
