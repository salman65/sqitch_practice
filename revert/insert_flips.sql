-- Revert flipr:insert_flips from pg

BEGIN;

drop function flipr.insert_flips(text, text);

COMMIT;
