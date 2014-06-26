<cfscript>
	c = new client(account_id='AC9e0d25944d5a4d2f8b0f0aef58a2d8bc',
				   application_id='AP4306b25d87e541bb93909f0f556bce89',
				   api_token='TO71f98cae473c48e5b87e74d7e57e3118',
				   api_endpoint='http://10.211.55.2:8000',
				   include_parsed_response=true);

// Display the embeded view.  This will also include getting the client token...
writeOutput(c.getEmbeddedView('jasonfill11', 'development'));

// Gener
	params = {
		"paths": "*",
		"bucket_key": "development"
	};
	//writeDump(c.generateClientToken('jasonfill11', params));

	params = {
		"event_name": "invoice.create",
		"bucket_key": "development"
	};

	//writeDump(c.checkSubscription('jasonfill11', params));

	body = {
		"event_name": "invoice.create",
		"bucket_key": "development"
	};

	headers = {
		"My-Id": "123456"
	};

//	writeDump(c.sendWebhook('jasonfill11', 'development', 'invoice.create', headers, body));

	

</cfscript>