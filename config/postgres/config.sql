ALTER SYSTEM SET ssl_cert_file TO '/var/lib/postgresql/ssl/crt/server.crt';
ALTER SYSTEM SET ssl_key_file TO  '/var/lib/postgresql/ssl/key/server.key';
ALTER SYSTEM SET ssl TO 'ON';