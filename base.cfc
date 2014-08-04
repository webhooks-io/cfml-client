component accessors="true" displayname="Webhooks.io Client Library" {

	property name="api_endpoint";
	property name="api_version";
	property name="api_token";

	property name="account_id";
	property name="application_id";
	property name="base_url";

	public any function init(required string account_id, 
							 required string application_id, 
							 required string api_token, 
							 		  string api_endpoint="https://api.webhooks.io", 
							 		  string api_version="v1"){

		variables.account_id = Arguments.account_id;
		variables.application_id = Arguments.application_id;
		variables.api_token = Arguments.api_token;
		variables.api_endpoint = Arguments.api_endpoint;
		variables.api_version = Arguments.api_version;

		return this;
	}

	private string function expandEndpoint(required string endpoint, required array params){
		var placeholder = "";
		var finalEndpoint = "";
		var replacementCount = 1;

		for(var i = 1; i <= ListLen(endpoint, '/'); i++){
			placeholder = listGetAt(endpoint, i, '/');

			if(left(placeholder, 1) == ':'){
				placeholder = right(placeholder, len(placeholder)-1);

				if(ArrayLen(params) <= i){
					finalEndpoint = finalEndpoint &  "/" & params[replacementCount];
				replacementCount++;
				}else{
					finalEndpoint = finalEndpoint &  "/" & placeholder;
				}
			}else{
				finalEndpoint = finalEndpoint &  "/" & placeholder; 
			}
		}
		return finalEndpoint;
	}

	/**
	* @Hint Sends a given request as an HTTPPOST to the webhooks.io API.
	**/

	private any function execute(required string endpoint, 
										  string method="GET", 
										  any body="", 
										  struct headers=StructNew(),
										  string content_type="application/json"){
		var results = {
			"successful" = true,
			"http_status_text" = "",
			"http_status_code" = "",
			"response_parsed" = "",
			"response" = "",
			"headers" = {},
			"meta" = {
				"server_id" = "",
				"server_version" = ""
			}
		};
		var i = "";

		var httpSvc = new http();

			httpSvc.setUrl(getApi_endpoint() & '/' & arguments.endpoint);
			httpSvc.setMethod(Arguments.Method);
			
			httpSvc.addParam(type="header", name="Authorization",value="Bearer " & getApi_Token()); 
			httpSvc.addParam(type="header", name="Content-Type",value=Arguments.content_type); 

			if(isStruct(Arguments.Body) && arguments.content_type == 'application/json'){
				httpSvc.addParam(type="body",value=serializeJSON(arguments.body));
			}

			// add the request specific headers.
			for(i in arguments.headers){
				httpSvc.addParam(type="header", name=i,value=arguments.headers[i]); 
			}

		var sendResult = httpSvc.send().getPrefix();

		results["http_status_code"] = sendResult.responseheader.status_code;
		results["http_status_text"] = sendResult.responseheader.explanation;
		
		results["response"] = sendResult.filecontent;

		for(i in sendResult.responseheader){
			if(listFirst(i, '-') == 'Webhooksio'){
				results["headers"][i] = sendResult.responseheader[i];
			}
		}

		if(structKeyExists(sendResult.responseheader, "Server")){
			results.meta.server_id = trim(listLast(sendResult.responseheader.Server, ';'));
			results.meta.server_version = trim(listFirst(sendResult.responseheader.Server, ';'));
		}



		if(sendResult.responseheader.status_code >= 300){
			successful = false;
		}

		return results;

	}

	/**
	* @Hint Sends a webhook to the system.
	* 
	* @Version The version of the logger API that should be utilized.  This is v1 by default.
	* @ProjectId The Id of the project this logger instance is for. 
	* @CollectorId The Id of the collector this logger instance is for.
	**/

	public any function sendWebhook(required string consumer_id, required string bucket_key, required string event, struct headers=StructNew(), any body=StructNew(), string application_id=getApplication_id()){
		// add the event name to the group of headers...
		arguments.headers['Webhooksio-Incoming-Event'] = arguments.event;
		var endpoint = expandEndpoint("/v1/accounts/:account_id/applications/:application_id/consumers/:consumer_id/send/:bucket_key", 
									  [arguments.account_id, arguments.application_id, arguments.consumer_id, arguments.bucket_key]);
		return execute(
							endpoint=endpoint,
							method="POST",
							body = body,
							headers = headers);
	}
}