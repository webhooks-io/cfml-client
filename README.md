# Webhooks.io CFML Client

This is a CFML wrapper for the Webhooks.io API.  Not all API functions are include in the libary at this time - however the primary provider level fuctions are included.

## Installation

Just drop the client.cfc in any directory, intialize, and run functions.

## Usage

### Initialization
```
var webhooksio_client =  new client(account_id={{your account id}},
				   application_id={{your application id}},
				   api_token={{your api id}},
				   include_parsed_response={{true|false}});
```
### Getting Embedded View HTML
When you use this function to embed the HTML view, the client token is automatically generated and supplied.

```
webhooksio_client.getEmbeddedView({{my-consumer-id}}, {{my-bucket-key}});
```

### Getting Client Token
```
var params = {
		"paths": "*",
		"bucket_key": "{{my-bucket-key}}"
};
	
var token_response = webhooksio_client.generateClientToken({{my-consumer-id}}, params);
```
### Checking Client Subscription
```
var params = {
		"event_name": "{{my-event-name}},",
		"bucket_key": "{{my-consumer-id}},"
};
	
var subscription_response = webhooksio_client.checkSubscription({{my-consumer-id}}, params);
```

### Send Webhook to Consumer
```
var body = {
	"first_name": "bob",
	"last_name": "smith"
};

var headers = {
	"My-Id": "123456"
};

var send_response = webhooksio_client.c.sendWebhook({{my-consumer-id}},  
												     {{my-bucket-key}}, 
												     {{event_name}}, 
												     headers, 
												     body);
```