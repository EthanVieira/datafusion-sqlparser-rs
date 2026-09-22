CREATE FLOW ingest AS INSERT INTO target BY NAME SELECT * FROM STREAM(source);
CREATE CATALOG IF NOT EXISTS analytics COMMENT 'analytics catalog';
CREATE EXTERNAL VOLUME analytics.raw.files LOCATION 's3://bucket/files';
CREATE STORAGE CREDENTIAL storage_role WITH AWS_IAM_ROLE(ROLE_ARN = 'arn:example');
CREATE FOREIGN CATALOG foreign_catalog USING CONNECTION connection_name OPTIONS(database 'db');
