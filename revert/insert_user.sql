-- Revert flipr:insert_user from pg

BEGIN;

drop function flipr.create_user(text, text);

COMMIT;
