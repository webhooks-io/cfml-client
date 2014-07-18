component accessors="true" displayname="Webhooks.io Client Library" exends="base" {

	/*****************************************************************************/
	/************************* Related Methods: Accounts **************************/
	/*****************************************************************************/

	/**
	 * Creates a new account.  This is the same call that is used when a user registers from webhooks.io.
	 * 
	 * POST - /v1/register
	 * 
	 * Full details can be found at http://webhooks.io/docs/api/#account-registration
	 * 
	 * @method registerAccount
	 * @param {Object} params
	 * @param {Function} callback
	*/
	public any function registerAccount(struct params=StructNew()){
		var endpoint = this.expandEndpoint('/v1/register', []);
		return this.execute(endpoint=endpoint, method="POST", params=params);
	}

	/**
	 * Creates a sub account.
	 * 
	 * POST - /v1/accounts/:account_id/subaccounts
	 * 
	 * Full details can be found at http://webhooks.io/docs/api/#create-sub-account
	 * 
	 * @method createSubAccount
	 * @param {String} account_id 
	 * @param {Object} params
	 * @param {Function} callback
	*/
	public any function createSubAccount(required string account_id, struct params=StructNew()){
		var endpoint = this.expandEndpoint('/v1/accounts/:account_id/subaccounts', [account_id]);
		return this.execute(endpoint=endpoint, method="POST", params=params);
	}

	/**
	 * Lists all sub accounts user an account.
	 * 
	 * GET - /v1/accounts/:account_id/subaccounts
	 * 
	 * Full details can be found at http://webhooks.io/docs/api/#list-sub-accounts
	 * 
	 * @method getSubAccounts
	 * @param {String} account_id 
	 * @param {Object} params
	 * @param {Function} callback
	*/
	public any function getSubAccounts(required string account_id, struct params=StructNew()){
		var endpoint = this.expandEndpoint('/v1/accounts/:account_id/subaccounts', [account_id]);
		return this.execute(endpoint=endpoint, method="GET", params=params);
	}

	/**
	 * Returns the details of a specfic account.
	 * 
	 * GET - /v1/accounts/:account_id
	 * 
	 * Full details can be found at http://webhooks.io/docs/api/#get-account
	 * 
	 * @method getAccount
	 * @param {String} account_id 
	 * @param {Object} params
	 * @param {Function} callback
	*/
	public any function getAccount(required string account_id, struct params=StructNew()){
		var endpoint = this.expandEndpoint('/v1/accounts/:account_id', [account_id]);
		return this.execute(endpoint=endpoint, method="GET", params=params);
	}

	/**
	 * Updates the details on an account.
	 * 
	 * PUT - /v1/accounts/:account_id
	 * 
	 * Full details can be found at http://webhooks.io/docs/api/#update-account
	 * 
	 * @method updateAccount
	 * @param {String} account_id 
	 * @param {Object} params
	 * @param {Function} callback
	*/
	public any function updateAccount(required string account_id, struct params=StructNew()){
		var endpoint = this.expandEndpoint('/v1/accounts/:account_id', [account_id]);
		return this.execute(endpoint=endpoint, method="PUT", params=params);
	}

	/**
	 * Deletes an account or sub account.
	 * 
	 * DELETE - /v1/accounts/:account_id
	 * 
	 * Full details can be found at http://webhooks.io/docs/api/#delete-account
	 * 
	 * @method deleteAccount
	 * @param {String} account_id 
	 * @param {Object} params
	 * @param {Function} callback
	*/
	public any function deleteAccount(required string account_id, struct params=StructNew()){
		var endpoint = this.expandEndpoint('/v1/accounts/:account_id', [account_id]);
		return this.execute(endpoint=endpoint, method="DELETE", params=params);
	}

	/*****************************************************************************/
	/************************* Related Methods: Applications **************************/
	/*****************************************************************************/

	/**
	 * Adds an application to an account
	 * 
	 * POST - /v1/accounts/:account_id/applications
	 * 
	 * Full details can be found at http://webhooks.io/docs/api/#create-application
	 * 
	 * @method createApplication
	 * @param {String} account_id 
	 * @param {Object} params
	 * @param {Function} callback
	*/
	public any function createApplication(required string account_id, struct params=StructNew()){
		var endpoint = this.expandEndpoint('/v1/accounts/:account_id/applications', [account_id]);
		return this.execute(endpoint=endpoint, method="POST", params=params);
	}

	/**
	 * Updates an Application.
	 * 
	 * PUT - /v1/accounts/:account_id/applications/:application_id
	 * 
	 * Full details can be found at http://webhooks.io/docs/api/#update-application
	 * 
	 * @method updateApplication
	 * @param {String} account_id 
	 * @param {String} application_id 
	 * @param {Object} params
	 * @param {Function} callback
	*/
	public any function updateApplication(required string account_id, required string application_id, struct params=StructNew()){
		var endpoint = this.expandEndpoint('/v1/accounts/:account_id/applications/:application_id', [account_id, application_id]);
		return this.execute(endpoint=endpoint, method="PUT", params=params);
	}

	/**
	 * Returns the details for a specfic application.
	 * 
	 * GET - /v1/accounts/:account_id/applications/:application_id
	 * 
	 * Full details can be found at http://webhooks.io/docs/api/#get-application
	 * 
	 * @method getApplication
	 * @param {String} account_id 
	 * @param {String} application_id 
	 * @param {Object} params
	 * @param {Function} callback
	*/
	public any function getApplication(required string account_id, required string application_id, struct params=StructNew()){
		var endpoint = this.expandEndpoint('/v1/accounts/:account_id/applications/:application_id', [account_id, application_id]);
		return this.execute(endpoint=endpoint, method="GET", params=params);
	}

	/**
	 * Returns a collection of applications for an account.
	 * 
	 * GET - /v1/accounts/:account_id/applications
	 * 
	 * Full details can be found at http://webhooks.io/docs/api/#list-applications
	 * 
	 * @method getApplications
	 * @param {String} account_id 
	 * @param {Object} params
	 * @param {Function} callback
	*/
	public any function getApplications(required string account_id, struct params=StructNew()){
		var endpoint = this.expandEndpoint('/v1/accounts/:account_id/applications', [account_id]);
		return this.execute(endpoint=endpoint, method="GET", params=params);
	}

	/**
	 * Deletes an application.
	 * 
	 * DELETE - /v1/accounts/:account_id/applications/:application_id
	 * 
	 * Full details can be found at http://webhooks.io/docs/api/#delete-application
	 * 
	 * @method deleteApplication
	 * @param {String} account_id 
	 * @param {String} application_id 
	 * @param {Object} params
	 * @param {Function} callback
	*/
	public any function deleteApplication(required string account_id, required string application_id, struct params=StructNew()){
		var endpoint = this.expandEndpoint('/v1/accounts/:account_id/applications/:application_id', [account_id, application_id]);
		return this.execute(endpoint=endpoint, method="DELETE", params=params);
	}

	/**
	 * Adds a version to an application.
	 * 
	 * POST - /v1/accounts/:account_id/applications/:application_id/versions
	 * 
	 * Full details can be found at http://webhooks.io/docs/api/#create-application-version
	 * 
	 * @method createApplicationVersion
	 * @param {String} account_id 
	 * @param {String} application_id 
	 * @param {Object} params
	 * @param {Function} callback
	*/
	public any function createApplicationVersion(required string account_id, required string application_id, struct params=StructNew()){
		var endpoint = this.expandEndpoint('/v1/accounts/:account_id/applications/:application_id/versions', [account_id, application_id]);
		return this.execute(endpoint=endpoint, method="POST", params=params);
	}

	/**
	 * Updates an application version.
	 * 
	 * PUT - /v1/accounts/:account_id/applications/:application_id/versions/:application_version_id
	 * 
	 * Full details can be found at http://webhooks.io/docs/api/#update-application-version
	 * 
	 * @method updateApplicationVersion
	 * @param {String} account_id 
	 * @param {String} application_id 
	 * @param {String} application_version_id 
	 * @param {Object} params
	 * @param {Function} callback
	*/
	public any function updateApplicationVersion(required string account_id, required string application_id, required string application_version_id, struct params=StructNew()){
		var endpoint = this.expandEndpoint('/v1/accounts/:account_id/applications/:application_id/versions/:application_version_id', [account_id, application_id, application_version_id]);
		return this.execute(endpoint=endpoint, method="PUT", params=params);
	}

	/**
	 * Returns the details for a specfic application version.
	 * 
	 * GET - /v1/accounts/:account_id/applications/:application_id/versions/:application_version_id
	 * 
	 * Full details can be found at http://webhooks.io/docs/api/#get-application-version
	 * 
	 * @method getApplicationVersion
	 * @param {String} account_id 
	 * @param {String} application_id 
	 * @param {String} application_version_id 
	 * @param {Object} params
	 * @param {Function} callback
	*/
	public any function getApplicationVersion(required string account_id, required string application_id, required string application_version_id, struct params=StructNew()){
		var endpoint = this.expandEndpoint('/v1/accounts/:account_id/applications/:application_id/versions/:application_version_id', [account_id, application_id, application_version_id]);
		return this.execute(endpoint=endpoint, method="GET", params=params);
	}

	/**
	 * Returns a collection of versions for an application.
	 * 
	 * GET - /v1/accounts/:account_id/applications/:application_id/versions
	 * 
	 * Full details can be found at http://webhooks.io/docs/api/#list-application-versions
	 * 
	 * @method getApplicationVersions
	 * @param {String} account_id 
	 * @param {String} application_id 
	 * @param {Object} params
	 * @param {Function} callback
	*/
	public any function getApplicationVersions(required string account_id, required string application_id, struct params=StructNew()){
		var endpoint = this.expandEndpoint('/v1/accounts/:account_id/applications/:application_id/versions', [account_id, application_id]);
		return this.execute(endpoint=endpoint, method="GET", params=params);
	}

	/**
	 * Deletes a version for an application.
	 * 
	 * DELETE - /v1/accounts/:account_id/applications/:application_id/versions/:application_version_id
	 * 
	 * Full details can be found at http://webhooks.io/docs/api/#delete-application-version
	 * 
	 * @method deleteApplicationVersion
	 * @param {String} account_id 
	 * @param {String} application_id 
	 * @param {String} application_version_id 
	 * @param {Object} params
	 * @param {Function} callback
	*/
	public any function deleteApplicationVersion(required string account_id, required string application_id, required string application_version_id, struct params=StructNew()){
		var endpoint = this.expandEndpoint('/v1/accounts/:account_id/applications/:application_id/versions/:application_version_id', [account_id, application_id, application_version_id]);
		return this.execute(endpoint=endpoint, method="DELETE", params=params);
	}

	/*****************************************************************************/
	/************************* Related Methods: Buckets **************************/
	/*****************************************************************************/

	/**
	 * Adds a bucket to an account
	 * 
	 * POST - /v1/accounts/:account_id/buckets
	 * 
	 * Full details can be found at http://webhooks.io/docs/api/#create-bucket
	 * 
	 * @method createBucket
	 * @param {String} account_id 
	 * @param {Object} params
	 * @param {Function} callback
	*/
	public any function createBucket(required string account_id, struct params=StructNew()){
		var endpoint = this.expandEndpoint('/v1/accounts/:account_id/buckets', [account_id]);
		return this.execute(endpoint=endpoint, method="POST", params=params);
	}

	/**
	 * Updates a bucket.
	 * 
	 * PUT - /v1/accounts/:account_id/buckets/:bucket_id
	 * 
	 * Full details can be found at http://webhooks.io/docs/api/#update-bucket
	 * 
	 * @method updateBucket
	 * @param {String} account_id 
	 * @param {String} bucket_id 
	 * @param {Object} params
	 * @param {Function} callback
	*/
	public any function updateBucket(required string account_id, required string bucket_id, struct params=StructNew()){
		var endpoint = this.expandEndpoint('/v1/accounts/:account_id/buckets/:bucket_id', [account_id, bucket_id]);
		return this.execute(endpoint=endpoint, method="PUT", params=params);
	}

	/**
	 * Returns the details for a specfic bucket.
	 * 
	 * GET - /v1/accounts/:account_id/buckets/:bucket_id
	 * 
	 * Full details can be found at http://webhooks.io/docs/api/#get-bucket
	 * 
	 * @method getBucket
	 * @param {String} account_id 
	 * @param {String} bucket_id 
	 * @param {Object} params
	 * @param {Function} callback
	*/
	public any function getBucket(required string account_id, required string bucket_id, struct params=StructNew()){
		var endpoint = this.expandEndpoint('/v1/accounts/:account_id/buckets/:bucket_id', [account_id, bucket_id]);
		return this.execute(endpoint=endpoint, method="GET", params=params);
	}

	/**
	 * Returns a collection of buckets for an account.
	 * 
	 * GET - /v1/accounts/:account_id/buckets
	 * 
	 * Full details can be found at http://webhooks.io/docs/api/#list-buckets
	 * 
	 * @method getBuckets
	 * @param {String} account_id 
	 * @param {Object} params
	 * @param {Function} callback
	*/
	public any function getBuckets(required string account_id, struct params=StructNew()){
		var endpoint = this.expandEndpoint('/v1/accounts/:account_id/buckets', [account_id]);
		return this.execute(endpoint=endpoint, method="GET", params=params);
	}

	/**
	 * Deletes a bucket.
	 * 
	 * DELETE - /v1/accounts/:account_id/buckets/:bucket_id
	 * 
	 * Full details can be found at http://webhooks.io/docs/api/#delete-bucket
	 * 
	 * @method deleteBucket
	 * @param {String} account_id 
	 * @param {String} bucket_id 
	 * @param {Object} params
	 * @param {Function} callback
	*/
	public any function deleteBucket(required string account_id, required string bucket_id, struct params=StructNew()){
		var endpoint = this.expandEndpoint('/v1/accounts/:account_id/buckets/:bucket_id', [account_id, bucket_id]);
		return this.execute(endpoint=endpoint, method="DELETE", params=params);
	}

	/*****************************************************************************/
	/************************* Related Methods: Inputs **************************/
	/*****************************************************************************/

	/**
	 * Adds an input to an account
	 * 
	 * POST - /v1/accounts/:account_id/inputs
	 * 
	 * Full details can be found at http://webhooks.io/docs/api/#create-input
	 * 
	 * @method createInput
	 * @param {String} account_id 
	 * @param {Object} params
	 * @param {Function} callback
	*/
	public any function createInput(required string account_id, struct params=StructNew()){
		var endpoint = this.expandEndpoint('/v1/accounts/:account_id/inputs', [account_id]);
		return this.execute(endpoint=endpoint, method="POST", params=params);
	}

	/**
	 * Updates the details for an input.
	 * 
	 * PUT - /v1/accounts/:account_id/inputs/:input_id
	 * 
	 * Full details can be found at http://webhooks.io/docs/api/#update-input
	 * 
	 * @method updateInput
	 * @param {String} account_id 
	 * @param {String} input_id 
	 * @param {Object} params
	 * @param {Function} callback
	*/
	public any function updateInput(required string account_id, required string input_id, struct params=StructNew()){
		var endpoint = this.expandEndpoint('/v1/accounts/:account_id/inputs/:input_id', [account_id, input_id]);
		return this.execute(endpoint=endpoint, method="PUT", params=params);
	}

	/**
	 * Returns the details for a specfic input.
	 * 
	 * GET - /v1/accounts/:account_id/inputs/:input_id
	 * 
	 * Full details can be found at http://webhooks.io/docs/api/#get-input
	 * 
	 * @method getInput
	 * @param {String} account_id 
	 * @param {String} input_id 
	 * @param {Object} params
	 * @param {Function} callback
	*/
	public any function getInput(required string account_id, required string input_id, struct params=StructNew()){
		var endpoint = this.expandEndpoint('/v1/accounts/:account_id/inputs/:input_id', [account_id, input_id]);
		return this.execute(endpoint=endpoint, method="GET", params=params);
	}

	/**
	 * Returns a collection of inputs for an account.
	 * 
	 * GET - /v1/accounts/:account_id/buckets/:bucket_id/inputs
	 * 
	 * Full details can be found at http://webhooks.io/docs/api/#list-inputs
	 * 
	 * @method getInputs
	 * @param {String} account_id 
	 * @param {String} bucket_id 
	 * @param {Object} params
	 * @param {Function} callback
	*/
	public any function getInputs(required string account_id, required string bucket_id, struct params=StructNew()){
		var endpoint = this.expandEndpoint('/v1/accounts/:account_id/buckets/:bucket_id/inputs', [account_id, bucket_id]);
		return this.execute(endpoint=endpoint, method="GET", params=params);
	}

	/**
	 * Deletes an input.
	 * 
	 * DELETE - /v1/accounts/:account_id/inputs/:input_id
	 * 
	 * Full details can be found at http://webhooks.io/docs/api/#delete-input
	 * 
	 * @method deleteInput
	 * @param {String} account_id 
	 * @param {String} input_id 
	 * @param {Object} params
	 * @param {Function} callback
	*/
	public any function deleteInput(required string account_id, required string input_id, struct params=StructNew()){
		var endpoint = this.expandEndpoint('/v1/accounts/:account_id/inputs/:input_id', [account_id, input_id]);
		return this.execute(endpoint=endpoint, method="DELETE", params=params);
	}

	/*****************************************************************************/
	/************************* Related Methods: Outputs **************************/
	/*****************************************************************************/

	/**
	 * Adds an output for an input.
	 * 
	 * POST - /v1/accounts/:account_id/inputs/:input_id/outputs
	 * 
	 * Full details can be found at http://webhooks.io/docs/api/#create-output
	 * 
	 * @method createOutput
	 * @param {String} account_id 
	 * @param {String} input_id 
	 * @param {Object} params
	 * @param {Function} callback
	*/
	public any function createOutput(required string account_id, required string input_id, struct params=StructNew()){
		var endpoint = this.expandEndpoint('/v1/accounts/:account_id/inputs/:input_id/outputs', [account_id, input_id]);
		return this.execute(endpoint=endpoint, method="POST", params=params);
	}

	/**
	 * Updates the details of an output.
	 * 
	 * PUT - /v1/accounts/:account_id/outputs/:output_id
	 * 
	 * Full details can be found at http://webhooks.io/docs/api/#update-output
	 * 
	 * @method updateOutput
	 * @param {String} account_id 
	 * @param {String} output_id 
	 * @param {Object} params
	 * @param {Function} callback
	*/
	public any function updateOutput(required string account_id, required string output_id, struct params=StructNew()){
		var endpoint = this.expandEndpoint('/v1/accounts/:account_id/outputs/:output_id', [account_id, output_id]);
		return this.execute(endpoint=endpoint, method="PUT", params=params);
	}

	/**
	 * Returns the details for a specfic output.
	 * 
	 * GET - /v1/accounts/:account_id/outputs/:output_id
	 * 
	 * Full details can be found at http://webhooks.io/docs/api/#get-output
	 * 
	 * @method getOutput
	 * @param {String} account_id 
	 * @param {String} output_id 
	 * @param {Object} params
	 * @param {Function} callback
	*/
	public any function getOutput(required string account_id, required string output_id, struct params=StructNew()){
		var endpoint = this.expandEndpoint('/v1/accounts/:account_id/outputs/:output_id', [account_id, output_id]);
		return this.execute(endpoint=endpoint, method="GET", params=params);
	}

	/**
	 * Returns a collection of outputs.
	 * 
	 * GET - /v1/accounts/:account_id/inputs/:input_id/outputs
	 * 
	 * Full details can be found at http://webhooks.io/docs/api/#list-output
	 * 
	 * @method getOutputs
	 * @param {String} account_id 
	 * @param {String} input_id 
	 * @param {Object} params
	 * @param {Function} callback
	*/
	public any function getOutputs(required string account_id, required string input_id, struct params=StructNew()){
		var endpoint = this.expandEndpoint('/v1/accounts/:account_id/inputs/:input_id/outputs', [account_id, input_id]);
		return this.execute(endpoint=endpoint, method="GET", params=params);
	}

	/**
	 * Deletes an output.
	 * 
	 * DELETE - /v1/accounts/:account_id/outputs/:output_id
	 * 
	 * Full details can be found at http://webhooks.io/docs/api/#delete-output
	 * 
	 * @method deleteOutput
	 * @param {String} account_id 
	 * @param {String} output_id 
	 * @param {Object} params
	 * @param {Function} callback
	*/
	public any function deleteOutput(required string account_id, required string output_id, struct params=StructNew()){
		var endpoint = this.expandEndpoint('/v1/accounts/:account_id/outputs/:output_id', [account_id, output_id]);
		return this.execute(endpoint=endpoint, method="DELETE", params=params);
	}

	/*****************************************************************************/
	/************************* Related Methods: Providers **************************/
	/*****************************************************************************/

	/**
	 * Creates a consumer for an application
	 * 
	 * POST - /v1/accounts/:account_id/applications/:application_id/consumers
	 * 
	 * Full details can be found at http://webhooks.io/docs/api/#create-consumer
	 * 
	 * @method createConsumer
	 * @param {String} account_id 
	 * @param {String} application_id 
	 * @param {Object} params
	 * @param {Function} callback
	*/
	public any function createConsumer(required string account_id, required string application_id, struct params=StructNew()){
		var endpoint = this.expandEndpoint('/v1/accounts/:account_id/applications/:application_id/consumers', [account_id, application_id]);
		return this.execute(endpoint=endpoint, method="POST", params=params);
	}

	/**
	 * Returns a list of all the consumers for a particular application.
	 * 
	 * GET - /v1/accounts/:account_id/applications/:application_id/consumers
	 * 
	 * Full details can be found at http://webhooks.io/docs/api/#get-consumers
	 * 
	 * @method getConsumers
	 * @param {String} account_id 
	 * @param {String} application_id 
	 * @param {Object} params
	 * @param {Function} callback
	*/
	public any function getConsumers(required string account_id, required string application_id, struct params=StructNew()){
		var endpoint = this.expandEndpoint('/v1/accounts/:account_id/applications/:application_id/consumers', [account_id, application_id]);
		return this.execute(endpoint=endpoint, method="GET", params=params);
	}

	/**
	 * Updates the details for a particular consumer.
	 * 
	 * PUT - /v1/accounts/:account_id/applications/:application_id/consumers/:consumer_id
	 * 
	 * Full details can be found at http://webhooks.io/docs/api/#update-consumer
	 * 
	 * @method updateConsumer
	 * @param {String} account_id 
	 * @param {String} application_id 
	 * @param {String} consumer_id 
	 * @param {Object} params
	 * @param {Function} callback
	*/
	public any function updateConsumer(required string account_id, required string application_id, required string consumer_id, struct params=StructNew()){
		var endpoint = this.expandEndpoint('/v1/accounts/:account_id/applications/:application_id/consumers/:consumer_id', [account_id, application_id, consumer_id]);
		return this.execute(endpoint=endpoint, method="PUT", params=params);
	}

	/**
	 * Get the details for a particular consumer.
	 * 
	 * GET - /v1/accounts/:account_id/applications/:application_id/consumers/:consumer_id
	 * 
	 * Full details can be found at http://webhooks.io/docs/api/#get-consumer
	 * 
	 * @method getConsumer
	 * @param {String} account_id 
	 * @param {String} application_id 
	 * @param {String} consumer_id 
	 * @param {Object} params
	 * @param {Function} callback
	*/
	public any function getConsumer(required string account_id, required string application_id, required string consumer_id, struct params=StructNew()){
		var endpoint = this.expandEndpoint('/v1/accounts/:account_id/applications/:application_id/consumers/:consumer_id', [account_id, application_id, consumer_id]);
		return this.execute(endpoint=endpoint, method="GET", params=params);
	}

	/**
	 * Removes a consumer from a particular application.
	 * 
	 * DELETE - /v1/accounts/:account_id/applications/:application_id/consumers/:consumer_id
	 * 
	 * Full details can be found at http://webhooks.io/docs/api/#delete-consumer
	 * 
	 * @method deleteConsumer
	 * @param {String} account_id 
	 * @param {String} application_id 
	 * @param {String} consumer_id 
	 * @param {Object} params
	 * @param {Function} callback
	*/
	public any function deleteConsumer(required string account_id, required string application_id, required string consumer_id, struct params=StructNew()){
		var endpoint = this.expandEndpoint('/v1/accounts/:account_id/applications/:application_id/consumers/:consumer_id', [account_id, application_id, consumer_id]);
		return this.execute(endpoint=endpoint, method="DELETE", params=params);
	}

	/**
	 * Returns all the outputs for the consumer of a given application.
	 * 
	 * GET - /v1/accounts/:account_id/applications/:application_id/consumers/:consumer_id/outputs
	 * 
	 * Full details can be found at http://webhooks.io/docs/api/#list-consumer-outputs
	 * 
	 * @method getConsumerOutputs
	 * @param {String} account_id 
	 * @param {String} application_id 
	 * @param {String} consumer_id 
	 * @param {Object} params
	 * @param {Function} callback
	*/
	public any function getConsumerOutputs(required string account_id, required string application_id, required string consumer_id, struct params=StructNew()){
		var endpoint = this.expandEndpoint('/v1/accounts/:account_id/applications/:application_id/consumers/:consumer_id/outputs', [account_id, application_id, consumer_id]);
		return this.execute(endpoint=endpoint, method="GET", params=params);
	}

	/**
	 * Adds an output for the consumer of a given application.
	 * 
	 * POST - /v1/accounts/:account_id/applications/:application_id/consumers/:consumer_id/outputs
	 * 
	 * Full details can be found at http://webhooks.io/docs/api/#create-consumer-output
	 * 
	 * @method createConsumerOutput
	 * @param {String} account_id 
	 * @param {String} application_id 
	 * @param {String} consumer_id 
	 * @param {Object} params
	 * @param {Function} callback
	*/
	public any function createConsumerOutput(required string account_id, required string application_id, required string consumer_id, struct params=StructNew()){
		var endpoint = this.expandEndpoint('/v1/accounts/:account_id/applications/:application_id/consumers/:consumer_id/outputs', [account_id, application_id, consumer_id]);
		return this.execute(endpoint=endpoint, method="POST", params=params);
	}

	/**
	 * Updates an output for the consumer of a given application.
	 * 
	 * PUT - /v1/accounts/:account_id/applications/:application_id/consumers/:consumer_id/outputs/:output_id
	 * 
	 * Full details can be found at http://webhooks.io/docs/api/#update-consumer-output
	 * 
	 * @method updateConsumerOutput
	 * @param {String} account_id 
	 * @param {String} application_id 
	 * @param {String} consumer_id 
	 * @param {String} output_id 
	 * @param {Object} params
	 * @param {Function} callback
	*/
	public any function updateConsumerOutput(required string account_id, required string application_id, required string consumer_id, required string output_id, struct params=StructNew()){
		var endpoint = this.expandEndpoint('/v1/accounts/:account_id/applications/:application_id/consumers/:consumer_id/outputs/:output_id', [account_id, application_id, consumer_id, output_id]);
		return this.execute(endpoint=endpoint, method="PUT", params=params);
	}

	/**
	 * Deletes an output for the consumer of a given application.
	 * 
	 * DELETE - /v1/accounts/:account_id/applications/:application_id/consumers/:consumer_id/outputs/:output_id
	 * 
	 * Full details can be found at http://webhooks.io/docs/api/#delete-consumer-output
	 * 
	 * @method deleteConsumerOutput
	 * @param {String} account_id 
	 * @param {String} application_id 
	 * @param {String} consumer_id 
	 * @param {String} output_id 
	 * @param {Object} params
	 * @param {Function} callback
	*/
	public any function deleteConsumerOutput(required string account_id, required string application_id, required string consumer_id, required string output_id, struct params=StructNew()){
		var endpoint = this.expandEndpoint('/v1/accounts/:account_id/applications/:application_id/consumers/:consumer_id/outputs/:output_id', [account_id, application_id, consumer_id, output_id]);
		return this.execute(endpoint=endpoint, method="DELETE", params=params);
	}

	/**
	 * Returns all the buckets for the consumer of a given application.
	 * 
	 * GET - /v1/accounts/:account_id/applications/:application_id/consumers/:consumer_id/buckets
	 * 
	 * Full details can be found at http://webhooks.io/docs/api/#list-consumer-buckets
	 * 
	 * @method getConsumerBuckets
	 * @param {String} account_id 
	 * @param {String} application_id 
	 * @param {String} consumer_id 
	 * @param {Object} params
	 * @param {Function} callback
	*/
	public any function getConsumerBuckets(required string account_id, required string application_id, required string consumer_id, struct params=StructNew()){
		var endpoint = this.expandEndpoint('/v1/accounts/:account_id/applications/:application_id/consumers/:consumer_id/buckets', [account_id, application_id, consumer_id]);
		return this.execute(endpoint=endpoint, method="GET", params=params);
	}

	/**
	 * Sends a webhook to a particular consumer of an application for the given bucket_key.
	 * 
	 * POST - /v1/accounts/:account_id/applications/:application_id/consumers/:consumer_id/send/:bucket_key
	 * 
	 * Full details can be found at http://webhooks.io/docs/api/#send-webhook-to-consumer
	 * 
	 * @method sendConsumerWebhookRequest
	 * @param {String} account_id 
	 * @param {String} application_id 
	 * @param {String} consumer_id 
	 * @param {String} bucket_key 
	 * @param {Object} params
	 * @param {Function} callback
	*/
	public any function sendConsumerWebhookRequest(required string account_id, required string application_id, required string consumer_id, required string bucket_key, struct params=StructNew()){
		var endpoint = this.expandEndpoint('/v1/accounts/:account_id/applications/:application_id/consumers/:consumer_id/send/:bucket_key', [account_id, application_id, consumer_id, bucket_key]);
		return this.execute(endpoint=endpoint, method="POST", params=params);
	}

	/**
	 * Checks to see if the consumer is subscribed to a given event or set of events.  If the event query param is not passed the complete list of events will be returned.
	 * 
	 * POST - /v1/accounts/:account_id/applications/:application_id/consumers/:consumer_id/check
	 * 
	 * Full details can be found at http://webhooks.io/docs/api/#check-consumer-subscription
	 * 
	 * @method getConsumerSubscription
	 * @param {String} account_id 
	 * @param {String} application_id 
	 * @param {String} consumer_id 
	 * @param {Object} params
	 * @param {Function} callback
	*/
	public any function getConsumerSubscription(required string account_id, required string application_id, required string consumer_id, struct params=StructNew()){
		var endpoint = this.expandEndpoint('/v1/accounts/:account_id/applications/:application_id/consumers/:consumer_id/check', [account_id, application_id, consumer_id]);
		return this.execute(endpoint=endpoint, method="POST", params=params);
	}

	/**
	 * Returns a log of all messages for a given consumer.
	 * 
	 * GET - /v1/accounts/:account_id/applications/:application_id/consumers/:consumer_id/log
	 * 
	 * Full details can be found at http://webhooks.io/docs/api/#consumer-request-log
	 * 
	 * @method getConsumerRequestLog
	 * @param {String} account_id 
	 * @param {String} application_id 
	 * @param {String} consumer_id 
	 * @param {Object} params
	 * @param {Function} callback
	*/
	public any function getConsumerRequestLog(required string account_id, required string application_id, required string consumer_id, struct params=StructNew()){
		var endpoint = this.expandEndpoint('/v1/accounts/:account_id/applications/:application_id/consumers/:consumer_id/log', [account_id, application_id, consumer_id]);
		return this.execute(endpoint=endpoint, method="GET", params=params);
	}

	/**
	 * Generates a client token to be used with the embedded views.
	 * 
	 * POST - /v1/accounts/:account_id/applications/:application_id/consumers/:consumer_id/client-token
	 * 
	 * Full details can be found at http://webhooks.io/docs/api/#create-client-token
	 * 
	 * @method createClientToken
	 * @param {String} account_id 
	 * @param {String} application_id 
	 * @param {String} consumer_id 
	 * @param {Object} params
	 * @param {Function} callback
	*/
	public any function createClientToken(required string account_id, required string application_id, required string consumer_id, struct params=StructNew()){
		var endpoint = this.expandEndpoint('/v1/accounts/:account_id/applications/:application_id/consumers/:consumer_id/client-token', [account_id, application_id, consumer_id]);
		return this.execute(endpoint=endpoint, method="POST", params=params);
	}

	/**
	 * Returns the HTML for the embedded view.
	 * 
	 * POST - /v1/accounts/:account_id/applications/:application_id/consumers/:consumer_id/embedded-view-html
	 * 
	 * Full details can be found at http://webhooks.io/docs/api/#get-embedded-view-html
	 * 
	 * @method getEmbeddedViewHtml
	 * @param {String} account_id 
	 * @param {String} application_id 
	 * @param {String} consumer_id 
	 * @param {Object} params
	 * @param {Function} callback
	*/
	public any function getEmbeddedViewHtml(required string account_id, required string application_id, required string consumer_id, struct params=StructNew()){
		var endpoint = this.expandEndpoint('/v1/accounts/:account_id/applications/:application_id/consumers/:consumer_id/embedded-view-html', [account_id, application_id, consumer_id]);
		return this.execute(endpoint=endpoint, method="POST", params=params);
	}

	/*****************************************************************************/
	/************************* Related Methods: Reporting **************************/
	/*****************************************************************************/

	/**
	 * Returns a general overview.
	 * 
	 * GET - /v1/accounts/:account_id/stats/overview
	 * 
	 * Full details can be found at http://webhooks.io/docs/api/#overview-report
	 * 
	 * @method getOverviewReport
	 * @param {String} account_id 
	 * @param {Object} params
	 * @param {Function} callback
	*/
	public any function getOverviewReport(required string account_id, struct params=StructNew()){
		var endpoint = this.expandEndpoint('/v1/accounts/:account_id/stats/overview', [account_id]);
		return this.execute(endpoint=endpoint, method="GET", params=params);
	}

	/**
	 * Returns a general summary report.
	 * 
	 * GET - /v1/accounts/:account_id/stats/summary
	 * 
	 * Full details can be found at http://webhooks.io/docs/api/#summary-report
	 * 
	 * @method getSummaryReport
	 * @param {String} account_id 
	 * @param {Object} params
	 * @param {Function} callback
	*/
	public any function getSummaryReport(required string account_id, struct params=StructNew()){
		var endpoint = this.expandEndpoint('/v1/accounts/:account_id/stats/summary', [account_id]);
		return this.execute(endpoint=endpoint, method="GET", params=params);
	}

	/**
	 * Returns a log of all messages.
	 * 
	 * GET - /v1/accounts/:account_id/log
	 * 
	 * Full details can be found at http://webhooks.io/docs/api/#request-log
	 * 
	 * @method getRequestLog
	 * @param {String} account_id 
	 * @param {Object} params
	 * @param {Function} callback
	*/
	public any function getRequestLog(required string account_id, struct params=StructNew()){
		var endpoint = this.expandEndpoint('/v1/accounts/:account_id/log', [account_id]);
		return this.execute(endpoint=endpoint, method="GET", params=params);
	}

	/*****************************************************************************/
	/************************* Related Methods: Users **************************/
	/*****************************************************************************/

	/**
	 * Authenticates the users login credentials
	 * 
	 * PUT - /v1/authenticate
	 * 
	 * Full details can be found at http://webhooks.io/docs/api/#login
	 * 
	 * @method login
	 * @param {Object} params
	 * @param {Function} callback
	*/
	public any function login(struct params=StructNew()){
		var endpoint = this.expandEndpoint('/v1/authenticate', []);
		return this.execute(endpoint=endpoint, method="PUT", params=params);
	}

	/**
	 * Allows a user to change their password.  Either the existing password or change key must be passed...and must match in order for this call to be successful.
	 * 
	 * PUT - /v1/accounts/:account_id/users/:user_id/change_password
	 * 
	 * Full details can be found at http://webhooks.io/docs/api/#change-password
	 * 
	 * @method changePassword
	 * @param {String} account_id 
	 * @param {String} user_id 
	 * @param {Object} params
	 * @param {Function} callback
	*/
	public any function changePassword(required string account_id, required string user_id, struct params=StructNew()){
		var endpoint = this.expandEndpoint('/v1/accounts/:account_id/users/:user_id/change_password', [account_id, user_id]);
		return this.execute(endpoint=endpoint, method="PUT", params=params);
	}

	/**
	 * Allows the user to request their password to be emailed to them.  Really this provides them a link to the change password form.
	 * 
	 * POST - /v1/reset_password
	 * 
	 * Full details can be found at http://webhooks.io/docs/api/#reset-password
	 * 
	 * @method resetPassword
	 * @param {Object} params
	 * @param {Function} callback
	*/
	public any function resetPassword(struct params=StructNew()){
		var endpoint = this.expandEndpoint('/v1/reset_password', []);
		return this.execute(endpoint=endpoint, method="POST", params=params);
	}

	/**
	 * Looks up the meta data for the password change key.
	 * 
	 * GET - /v1/password_change_key/:password_change_key
	 * 
	 * Full details can be found at http://webhooks.io/docs/api/#lookup-password-change-key
	 * 
	 * @method lookupPasswordChangeKey
	 * @param {String} password_change_key 
	 * @param {Object} params
	 * @param {Function} callback
	*/
	public any function lookupPasswordChangeKey(required string password_change_key, struct params=StructNew()){
		var endpoint = this.expandEndpoint('/v1/password_change_key/:password_change_key', [password_change_key]);
		return this.execute(endpoint=endpoint, method="GET", params=params);
	}

	/**
	 * Adds a user to an account.
	 * 
	 * POST - /v1/accounts/:account_id/users
	 * 
	 * Full details can be found at http://webhooks.io/docs/api/#create-user
	 * 
	 * @method createUser
	 * @param {String} account_id 
	 * @param {Object} params
	 * @param {Function} callback
	*/
	public any function createUser(required string account_id, struct params=StructNew()){
		var endpoint = this.expandEndpoint('/v1/accounts/:account_id/users', [account_id]);
		return this.execute(endpoint=endpoint, method="POST", params=params);
	}

	/**
	 * Updates a users account information.
	 * 
	 * PUT - /v1/accounts/:account_id/users/:user_id
	 * 
	 * Full details can be found at http://webhooks.io/docs/api/#update-user
	 * 
	 * @method updateUser
	 * @param {String} account_id 
	 * @param {String} user_id 
	 * @param {Object} params
	 * @param {Function} callback
	*/
	public any function updateUser(required string account_id, required string user_id, struct params=StructNew()){
		var endpoint = this.expandEndpoint('/v1/accounts/:account_id/users/:user_id', [account_id, user_id]);
		return this.execute(endpoint=endpoint, method="PUT", params=params);
	}

	/**
	 * Returns the details for a specfic user.
	 * 
	 * GET - /v1/accounts/:account_id/users/:user_id
	 * 
	 * Full details can be found at http://webhooks.io/docs/api/#get-user
	 * 
	 * @method getUser
	 * @param {String} account_id 
	 * @param {String} user_id 
	 * @param {Object} params
	 * @param {Function} callback
	*/
	public any function getUser(required string account_id, required string user_id, struct params=StructNew()){
		var endpoint = this.expandEndpoint('/v1/accounts/:account_id/users/:user_id', [account_id, user_id]);
		return this.execute(endpoint=endpoint, method="GET", params=params);
	}

	/**
	 * Returns a collection of users.
	 * 
	 * GET - /v1/accounts/:account_id/users
	 * 
	 * Full details can be found at http://webhooks.io/docs/api/#list-users
	 * 
	 * @method getUsers
	 * @param {String} account_id 
	 * @param {String} user_id 
	 * @param {Object} params
	 * @param {Function} callback
	*/
	public any function getUsers(required string account_id, required string user_id, struct params=StructNew()){
		var endpoint = this.expandEndpoint('/v1/accounts/:account_id/users', [account_id, user_id]);
		return this.execute(endpoint=endpoint, method="GET", params=params);
	}

	/**
	 * Deletes a user.
	 * 
	 * DELETE - /v1/accounts/:account_id/users/:user_id
	 * 
	 * Full details can be found at http://webhooks.io/docs/api/#delete-user
	 * 
	 * @method deleteUser
	 * @param {String} account_id 
	 * @param {String} user_id 
	 * @param {Object} params
	 * @param {Function} callback
	*/
	public any function deleteUser(required string account_id, required string user_id, struct params=StructNew()){
		var endpoint = this.expandEndpoint('/v1/accounts/:account_id/users/:user_id', [account_id, user_id]);
		return this.execute(endpoint=endpoint, method="DELETE", params=params);
	}

	/**
	 * Handles validating the email address once the user has clicked the validation link in an email.
	 * 
	 * GET - /v1/verify/:email_verification_key
	 * 
	 * Full details can be found at http://webhooks.io/docs/api/#verify-email-address
	 * 
	 * @method verifyEmailAddress
	 * @param {String} email_verification_key 
	 * @param {Object} params
	 * @param {Function} callback
	*/
	public any function verifyEmailAddress(required string email_verification_key, struct params=StructNew()){
		var endpoint = this.expandEndpoint('/v1/verify/:email_verification_key', [email_verification_key]);
		return this.execute(endpoint=endpoint, method="GET", params=params);
	}

	/**
	 * Resends a verification email for a user.
	 * 
	 * GET - /v1/accounts/:account_id/users/:user_id/resend_verification
	 * 
	 * Full details can be found at http://webhooks.io/docs/api/#resend-verification-email
	 * 
	 * @method resendVerificationEmail
	 * @param {String} account_id 
	 * @param {String} user_id 
	 * @param {Object} params
	 * @param {Function} callback
	*/
	public any function resendVerificationEmail(required string account_id, required string user_id, struct params=StructNew()){
		var endpoint = this.expandEndpoint('/v1/accounts/:account_id/users/:user_id/resend_verification', [account_id, user_id]);
		return this.execute(endpoint=endpoint, method="GET", params=params);
	}

	/*****************************************************************************/
	/************************* Related Methods: Utils **************************/
	/*****************************************************************************/

	/**
	 * System health check
	 * 
	 * GET - /v1/health
	 * 
	 * Full details can be found at http://webhooks.io/docs/api/#health-check
	 * 
	 * @method healthCheck
	 * @param {Object} params
	 * @param {Function} callback
	*/
	public any function healthCheck(struct params=StructNew()){
		var endpoint = this.expandEndpoint('/v1/health', []);
		return this.execute(endpoint=endpoint, method="GET", params=params);
	}

	/**
	 * Returns all the possible public plans.
	 * 
	 * GET - /v1/plans
	 * 
	 * Full details can be found at http://webhooks.io/docs/api/#gets-plans
	 * 
	 * @method getPlans
	 * @param {Object} params
	 * @param {Function} callback
	*/
	public any function getPlans(struct params=StructNew()){
		var endpoint = this.expandEndpoint('/v1/plans', []);
		return this.execute(endpoint=endpoint, method="GET", params=params);
	}

	/**
	 * Returns the details of a specific plan.
	 * 
	 * GET - /v1/plans/:plan_id
	 * 
	 * Full details can be found at http://webhooks.io/docs/api/#get-plan
	 * 
	 * @method getPlan
	 * @param {String} plan_id 
	 * @param {Object} params
	 * @param {Function} callback
	*/
	public any function getPlan(required string plan_id, struct params=StructNew()){
		var endpoint = this.expandEndpoint('/v1/plans/:plan_id', [plan_id]);
		return this.execute(endpoint=endpoint, method="GET", params=params);
	}

	/**
	 * Returns all valid timezones.
	 * 
	 * GET - /v1/util/timezones
	 * 
	 * Full details can be found at http://webhooks.io/docs/api/#get-timezones
	 * 
	 * @method getTimezones
	 * @param {Object} params
	 * @param {Function} callback
	*/
	public any function getTimezones(struct params=StructNew()){
		var endpoint = this.expandEndpoint('/v1/util/timezones', []);
		return this.execute(endpoint=endpoint, method="GET", params=params);
	}

	/**
	 * Returns the possible retry policies along with the system default policy.
	 * 
	 * GET - /v1/retry_policies
	 * 
	 * Full details can be found at http://webhooks.io/docs/api/#gets-retry-policies
	 * 
	 * @method getRetryPolicies
	 * @param {Object} params
	 * @param {Function} callback
	*/
	public any function getRetryPolicies(struct params=StructNew()){
		var endpoint = this.expandEndpoint('/v1/retry_policies', []);
		return this.execute(endpoint=endpoint, method="GET", params=params);
	}

	/**
	 * Returns the details of a specific retry policy.
	 * 
	 * GET - /v1/retry_policies/:policy_id
	 * 
	 * Full details can be found at http://webhooks.io/docs/api/#gets-retry-policy
	 * 
	 * @method getRetryPolicy
	 * @param {String} policy_id 
	 * @param {Object} params
	 * @param {Function} callback
	*/
	public any function getRetryPolicy(required string policy_id, struct params=StructNew()){
		var endpoint = this.expandEndpoint('/v1/retry_policies/:policy_id', [policy_id]);
		return this.execute(endpoint=endpoint, method="GET", params=params);
	}

	}