-- Revert flipr:change_pass from pg

BEGIN;

drop function flipr.change_pass(text, text, text);

COMMIT;
