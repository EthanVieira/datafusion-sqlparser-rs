CREATE OR REFRESH STREAMING TABLE main.models.events AS SELECT * FROM STREAM(main.raw.events);
