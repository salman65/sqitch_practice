-- Revert flipr:insert_user from pg

BEGIN;

drop function flipr.insert_user(text, text);

COMMIT;
