use [AdventureWorks2017]
exec sp_replicationdboption @dbname = N'AdventureWorks2017', @optname = N'publish', @value = N'true'
GO
-- Adding the snapshot publication
use [AdventureWorks2017]
exec sp_addpublication @publication = N'PersonPersonpub', @description = N'Snapshot publication of database ''AdventureWorks2017'' from Publisher ''DESKTOP-6MKBAKD\SQLSERVER17''.', @sync_method = N'native', @retention = 0, @allow_push = N'true', @allow_pull = N'true', @allow_anonymous = N'true', @enabled_for_internet = N'false', @snapshot_in_defaultfolder = N'true', @compress_snapshot = N'false', @ftp_port = 21, @ftp_login = N'anonymous', @allow_subscription_copy = N'false', @add_to_active_directory = N'false', @repl_freq = N'snapshot', @status = N'active', @independent_agent = N'true', @immediate_sync = N'true', @allow_sync_tran = N'false', @autogen_sync_procs = N'false', @allow_queued_tran = N'false', @allow_dts = N'false', @replicate_ddl = 1
GO


exec sp_addpublication_snapshot @publication = N'PersonPersonpub', @frequency_type = 1, @frequency_interval = 0, @frequency_relative_interval = 0, @frequency_recurrence_factor = 0, @frequency_subday = 0, @frequency_subday_interval = 0, @active_start_time_of_day = 0, @active_end_time_of_day = 235959, @active_start_date = 0, @active_end_date = 0, @job_login = null, @job_password = null, @publisher_security_mode = 1


use [AdventureWorks2017]
exec sp_addarticle @publication = N'PersonPersonpub', @article = N'Password', @source_owner = N'Person', @source_object = N'Password', @type = N'logbased', @description = null, @creation_script = null, @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509D, @identityrangemanagementoption = N'manual', @destination_table = N'Password', @destination_owner = N'Person', @vertical_partition = N'false'
GO




