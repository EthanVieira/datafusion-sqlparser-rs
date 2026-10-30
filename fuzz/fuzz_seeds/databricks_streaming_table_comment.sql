CREATE OR REFRESH STREAMING TABLE azurebill.azure_report_streaming
COMMENT 'Azure cost export report from the marketplace Kafka source.'
TBLPROPERTIES ('wb.tag.source_system' = 't360_azure')
AS SELECT * FROM STREAM(raw.azure_reports);
