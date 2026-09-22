CREATE TABLE events (event_id BIGINT) USING DELTA CLUSTER BY (event_id);
