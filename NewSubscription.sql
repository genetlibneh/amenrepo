-----------------BEGIN: Script to be run at Publisher 'DESKTOP-6MKBAKD\SQLSERVER17'-----------------
use [AdventureWorks2017]
exec sp_addsubscription @publication = N'PersonPersonpub', @subscriber = N'DESKTOP-6MKBAKD\SQLSERVER2017DEV', @destination_db = N'Amen', @subscription_type = N'Push', @sync_type = N'automatic', @article = N'all', @update_mode = N'read only', @subscriber_type = 0
exec sp_addpushsubscription_agent @publication = N'PersonPersonpub', @subscriber = N'DESKTOP-6MKBAKD\SQLSERVER2017DEV', @subscriber_db = N'Amen', @job_login = null, @job_password = null, @subscriber_security_mode = 1, @frequency_type = 64, @frequency_interval = 0, @frequency_relative_interval = 0, @frequency_recurrence_factor = 0, @frequency_subday = 0, @frequency_subday_interval = 0, @active_start_time_of_day = 0, @active_end_time_of_day = 235959, @active_start_date = 20201107, @active_end_date = 99991231, @enabled_for_syncmgr = N'False', @dts_package_location = N'Distributor'
GO
-----------------END: Script to be run at Publisher 'DESKTOP-6MKBAKD\SQLSERVER17'-----------------

