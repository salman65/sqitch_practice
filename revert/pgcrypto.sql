-- Revert flipr:pgcrypto from pg

BEGIN;

drop extension pgcrypto;

COMMIT;
