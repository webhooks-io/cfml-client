<cfscript>
	c = new webhooksio(account_id='{{your_account_id}}',
				   application_id='{{your_application_id}}',
				   api_token='{{your_api_token}}}',
				   include_parsed_response=true);

// Display the embeded view.  This will also include getting the client token...
	embedded_view = c.getEmbeddedView('{{your_consumer_id}}', '{{your_bucket_key}}');

	if(embedded_view.successful){
		writeOutput(embedded_view.response_parsed.html);
	}else{
		writeDump(embedded_view);
	}

// Generate a client token...
	params = {
		"paths": "*",
		"bucket_key": "development"
	};
	//writeDump(c.generateClientToken('{{your_consumer_id}}', params));

// check to see if a consumer is subscribed to a hook
	params = {
		"event_name": "invoice.create",
		"bucket_key": "development"
	};

	//writeDump(c.checkSubscription('{{your_consumer_id}}', params));

// send a hook to a consumer...
	body = {
		"amount": 50.00,
		"details": "Fee for my services"
	};

	headers = {
		"My-Special-Header-Id": "123456"
	};

//	writeDump(c.sendWebhook('{{your_consumer_id}}', '{{your_bucket_key}}', 'invoice.create', headers, body));

	

</cfscript>