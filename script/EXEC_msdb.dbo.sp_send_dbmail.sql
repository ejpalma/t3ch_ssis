EXEC msdb.dbo.sp_send_dbmail
	@profile_name = 'SSIS Mail Profile',
	@recipients = 'to@email-account-1.com;to@email-account-2.com',
	@copy_recipients = 'cc@email-account.com',
	-- @blind_copy_recipients = '',
	@subject = 'Test from SSIS Mail Profile',
	@file_attachments = '<unit>:\<path>\Shared\SampleCurrencyData.txt',
	@body_format = 'HTML',
	@body = 'Please, find attached the retrieved data.';