CREATE TABLE shallow_copy SHALLOW CLONE source_table;
CREATE TABLE historical_copy CLONE source_table VERSION AS OF 7;
