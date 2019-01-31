-- Revert flipr:delete_flips from pg

BEGIN;

drop function flipr.delete_flips(bigint);

COMMIT;
