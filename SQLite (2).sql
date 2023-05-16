BACKUP DATABASE max TO DISK = 'C:\backup\anton';

CREATE LOGIN superuser WITH PASSWORD = 'anton';
CREATE LOGIN admin WITH PASSWORD = 'apappapapapapa';
CREATE LOGIN username WITH PASSWORD = 'a';

USE anton;
CREATE USER superuser FOR LOGIN superuser;
ALTER ROLE db_owner ADD MEMBER superuser;

CREATE USER admin FOR LOGIN admin;
GRANT SELECT, UPDATE, DELETE, INSERT TO admin;

CREATE USER admin FOR LOGIN username;
GRANT SELECT, INSERT ON table TO admin;

DROP LOGIN admin;

GO