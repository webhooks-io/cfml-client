component accessors="true" displayname="AppMarkable Client Library" {

	property name="api_endpoint";
	property name="api_version";
	property name="api_token";

	property name="account_id";
	property name="application_id";
	property name="base_url";

	property name="default_webhook_content_type";
	property name="include_parsed_response" default="true";

	public any function init(required string account_id, 
							 required string application_id, 
							 required string api_token, 
							 		  string api_endpoint="https://api.webhooks.io", 
							 		  string api_version="v1",
							 		  string default_webhook_content_type="application/json",
							 		  boolean include_parsed_response=true){

		variables.account_id = Arguments.account_id;
		variables.application_id = Arguments.application_id;
		variables.api_token = Arguments.api_token;
		variables.api_endpoint = Arguments.api_endpoint;
		variables.api_version = Arguments.api_version;
		variables.default_webhook_content_type = Arguments.default_webhook_content_type;
		variables.include_parsed_response = Arguments.include_parsed_response;

		variables.base_url = variables.api_endpoint & "/#getApi_Version()#/accounts/#account_id#";


		return this;
	}

	/**
	* @Hint Outputs the code that will display the webhooks interface.  Includes handling grabbing the user token...
	* 
	* @Version The version of the logger API that should be utilized.  This is v1 by default.
	* @ProjectId The Id of the project this logger instance is for. 
	* @CollectorId The Id of the collector this logger instance is for.
	**/

	public any function getEmbeddedView(required string consumer_id, 
										required string bucket_key, 
												 struct embed_options={},
												 string application_id=getApplication_id()){
		var params = {
			"paths" = "*",
			"bucket_key" = arguments.bucket_key
		};

		return sendRequest(
							uri="#getBase_url()#/applications/#arguments.application_id#/consumers/#arguments.consumer_id#/embedded-view-html",
							method="POST",
							body = params);
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
		return sendRequest(
							uri="#getBase_url()#/applications/#arguments.application_id#/consumers/#arguments.consumer_id#/send/#arguments.bucket_key#",
							method="POST",
							body = body,
							headers = headers);
	}

	/**
	* @Hint Checks to ensure a consumer is subscribed to an event.
	* 
	* @consumer_id The Id of the consumer the token should be generated for.
	* @params The parameters that need to be sent along with the request.  Check http://api.webhooks.io/docs##/check for details. 
	**/

	public any function checkSubscription(required string consumer_id, required struct params, string application_id=getApplication_id()){
		return sendRequest(
							uri="#getBase_url()#/applications/#arguments.application_id#/consumers/#arguments.consumer_id#/check",
							method="POST",
							body = params);
	}

	/**
	* @Hint Returns a string that can be used as the authorization method for the embedded views.
	* 
	* @consumer_id The Id of the consumer the token should be generated for.
	* @paths The paths/resources the token should be granted access for.
	**/

	public any function generateClientToken(required string consumer_id, required struct params, string application_id=getApplication_id()){
		return sendRequest(
							uri="#getBase_url()#/applications/#arguments.application_id#/consumers/#arguments.consumer_id#/client-token",
							method="POST",
							body = params);
	}

	/**
	* @Hint Returns an instance of the logger object which is used to send data to the AppMarkable service.
	* 
	* @Version The version of the logger API that should be utilized.  This is v1 by default.
	* @ProjectId The Id of the project this logger instance is for. 
	* @CollectorId The Id of the collector this logger instance is for.
	**/

	private any function sendRequest(required string uri, 
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

			httpSvc.setUrl(arguments.uri);
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
		if(getInclude_parsed_response()){
			results["response_parsed"] = deserializeJson(sendResult.filecontent);
		}
		
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



}