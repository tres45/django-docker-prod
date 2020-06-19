DO $$
BEGIN
  CREATE ROLE hello_django LOGIN PASSWORD 'hello_django';
  EXCEPTION WHEN DUPLICATE_OBJECT THEN
  RAISE NOTICE 'not creating role hello_django -- it already exists';
END
$$;

DO $$
BEGIN
  CREATE DATABASE hello_django_db;
  EXCEPTION WHEN DUPLICATE_OBJECT THEN
  RAISE NOTICE 'not creating DB hello_django_db -- it already exists';
  
  GRANT ALL PRIVILEGES ON DATABASE hello_django_db TO hello_django;
END
$$;
