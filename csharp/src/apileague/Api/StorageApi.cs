/*
 * API League
 *
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.6.2
 * Contact: mail@apileague.com
 * Generated by: https://github.com/openapitools/openapi-generator.git
 */


using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Net;
using System.Net.Mime;
using apileague.Client;
using apileague.Model;

namespace apileague.Api
{

    /// <summary>
    /// Represents a collection of functions to interact with the API endpoints
    /// </summary>
    public interface IStorageApiSync : IApiAccessor
    {
        #region Synchronous Operations
        /// <summary>
        /// Read Key Value from Store
        /// </summary>
        /// <remarks>
        /// Read a value from the key-value store. The key-value store is a simple storage system that allows you to store and retrieve data using a key. The data is stored in the cloud and can be accessed from anywhere. You can use the key-value store to store any type of data, such as text or numbers. The key-value store is a great way to store data that you want to access from multiple devices or locations.
        /// </remarks>
        /// <exception cref="apileague.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="key">The key for which the value is stored (max length 255 characters).</param>
        /// <param name="operationIndex">Index associated with the operation.</param>
        /// <returns>ReadKeyValueFromStore200Response</returns>
        ReadKeyValueFromStore200Response ReadKeyValueFromStore(string key, int operationIndex = 0);

        /// <summary>
        /// Read Key Value from Store
        /// </summary>
        /// <remarks>
        /// Read a value from the key-value store. The key-value store is a simple storage system that allows you to store and retrieve data using a key. The data is stored in the cloud and can be accessed from anywhere. You can use the key-value store to store any type of data, such as text or numbers. The key-value store is a great way to store data that you want to access from multiple devices or locations.
        /// </remarks>
        /// <exception cref="apileague.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="key">The key for which the value is stored (max length 255 characters).</param>
        /// <param name="operationIndex">Index associated with the operation.</param>
        /// <returns>ApiResponse of ReadKeyValueFromStore200Response</returns>
        ApiResponse<ReadKeyValueFromStore200Response> ReadKeyValueFromStoreWithHttpInfo(string key, int operationIndex = 0);
        /// <summary>
        /// Store Key Value (GET)
        /// </summary>
        /// <remarks>
        /// Store a value in the key-value store. The key-value store is a simple storage system that allows you to store and retrieve data using a key. The data is stored in the cloud and can be accessed from anywhere. You can use the key-value store to store any type of data, such as text or numbers. The key-value store is a great way to store data that you want to access from multiple devices or locations.
        /// </remarks>
        /// <exception cref="apileague.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="key">The key for which the value is stored (max length 255 characters).</param>
        /// <param name="value">The value that is supposed to be stored (max length 10,000 characters).</param>
        /// <param name="operationIndex">Index associated with the operation.</param>
        /// <returns>StoreKeyValueGET200Response</returns>
        StoreKeyValueGET200Response StoreKeyValueGET(string key, string value, int operationIndex = 0);

        /// <summary>
        /// Store Key Value (GET)
        /// </summary>
        /// <remarks>
        /// Store a value in the key-value store. The key-value store is a simple storage system that allows you to store and retrieve data using a key. The data is stored in the cloud and can be accessed from anywhere. You can use the key-value store to store any type of data, such as text or numbers. The key-value store is a great way to store data that you want to access from multiple devices or locations.
        /// </remarks>
        /// <exception cref="apileague.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="key">The key for which the value is stored (max length 255 characters).</param>
        /// <param name="value">The value that is supposed to be stored (max length 10,000 characters).</param>
        /// <param name="operationIndex">Index associated with the operation.</param>
        /// <returns>ApiResponse of StoreKeyValueGET200Response</returns>
        ApiResponse<StoreKeyValueGET200Response> StoreKeyValueGETWithHttpInfo(string key, string value, int operationIndex = 0);
        #endregion Synchronous Operations
    }

    /// <summary>
    /// Represents a collection of functions to interact with the API endpoints
    /// </summary>
    public interface IStorageApiAsync : IApiAccessor
    {
        #region Asynchronous Operations
        /// <summary>
        /// Read Key Value from Store
        /// </summary>
        /// <remarks>
        /// Read a value from the key-value store. The key-value store is a simple storage system that allows you to store and retrieve data using a key. The data is stored in the cloud and can be accessed from anywhere. You can use the key-value store to store any type of data, such as text or numbers. The key-value store is a great way to store data that you want to access from multiple devices or locations.
        /// </remarks>
        /// <exception cref="apileague.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="key">The key for which the value is stored (max length 255 characters).</param>
        /// <param name="operationIndex">Index associated with the operation.</param>
        /// <param name="cancellationToken">Cancellation Token to cancel the request.</param>
        /// <returns>Task of ReadKeyValueFromStore200Response</returns>
        System.Threading.Tasks.Task<ReadKeyValueFromStore200Response> ReadKeyValueFromStoreAsync(string key, int operationIndex = 0, System.Threading.CancellationToken cancellationToken = default(System.Threading.CancellationToken));

        /// <summary>
        /// Read Key Value from Store
        /// </summary>
        /// <remarks>
        /// Read a value from the key-value store. The key-value store is a simple storage system that allows you to store and retrieve data using a key. The data is stored in the cloud and can be accessed from anywhere. You can use the key-value store to store any type of data, such as text or numbers. The key-value store is a great way to store data that you want to access from multiple devices or locations.
        /// </remarks>
        /// <exception cref="apileague.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="key">The key for which the value is stored (max length 255 characters).</param>
        /// <param name="operationIndex">Index associated with the operation.</param>
        /// <param name="cancellationToken">Cancellation Token to cancel the request.</param>
        /// <returns>Task of ApiResponse (ReadKeyValueFromStore200Response)</returns>
        System.Threading.Tasks.Task<ApiResponse<ReadKeyValueFromStore200Response>> ReadKeyValueFromStoreWithHttpInfoAsync(string key, int operationIndex = 0, System.Threading.CancellationToken cancellationToken = default(System.Threading.CancellationToken));
        /// <summary>
        /// Store Key Value (GET)
        /// </summary>
        /// <remarks>
        /// Store a value in the key-value store. The key-value store is a simple storage system that allows you to store and retrieve data using a key. The data is stored in the cloud and can be accessed from anywhere. You can use the key-value store to store any type of data, such as text or numbers. The key-value store is a great way to store data that you want to access from multiple devices or locations.
        /// </remarks>
        /// <exception cref="apileague.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="key">The key for which the value is stored (max length 255 characters).</param>
        /// <param name="value">The value that is supposed to be stored (max length 10,000 characters).</param>
        /// <param name="operationIndex">Index associated with the operation.</param>
        /// <param name="cancellationToken">Cancellation Token to cancel the request.</param>
        /// <returns>Task of StoreKeyValueGET200Response</returns>
        System.Threading.Tasks.Task<StoreKeyValueGET200Response> StoreKeyValueGETAsync(string key, string value, int operationIndex = 0, System.Threading.CancellationToken cancellationToken = default(System.Threading.CancellationToken));

        /// <summary>
        /// Store Key Value (GET)
        /// </summary>
        /// <remarks>
        /// Store a value in the key-value store. The key-value store is a simple storage system that allows you to store and retrieve data using a key. The data is stored in the cloud and can be accessed from anywhere. You can use the key-value store to store any type of data, such as text or numbers. The key-value store is a great way to store data that you want to access from multiple devices or locations.
        /// </remarks>
        /// <exception cref="apileague.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="key">The key for which the value is stored (max length 255 characters).</param>
        /// <param name="value">The value that is supposed to be stored (max length 10,000 characters).</param>
        /// <param name="operationIndex">Index associated with the operation.</param>
        /// <param name="cancellationToken">Cancellation Token to cancel the request.</param>
        /// <returns>Task of ApiResponse (StoreKeyValueGET200Response)</returns>
        System.Threading.Tasks.Task<ApiResponse<StoreKeyValueGET200Response>> StoreKeyValueGETWithHttpInfoAsync(string key, string value, int operationIndex = 0, System.Threading.CancellationToken cancellationToken = default(System.Threading.CancellationToken));
        #endregion Asynchronous Operations
    }

    /// <summary>
    /// Represents a collection of functions to interact with the API endpoints
    /// </summary>
    public interface IStorageApi : IStorageApiSync, IStorageApiAsync
    {

    }

    /// <summary>
    /// Represents a collection of functions to interact with the API endpoints
    /// </summary>
    public partial class StorageApi : IStorageApi
    {
        private apileague.Client.ExceptionFactory _exceptionFactory = (name, response) => null;

        /// <summary>
        /// Initializes a new instance of the <see cref="StorageApi"/> class.
        /// </summary>
        /// <returns></returns>
        public StorageApi() : this((string)null)
        {
        }

        /// <summary>
        /// Initializes a new instance of the <see cref="StorageApi"/> class.
        /// </summary>
        /// <returns></returns>
        public StorageApi(string basePath)
        {
            this.Configuration = apileague.Client.Configuration.MergeConfigurations(
                apileague.Client.GlobalConfiguration.Instance,
                new apileague.Client.Configuration { BasePath = basePath }
            );
            this.Client = new apileague.Client.ApiClient(this.Configuration.BasePath);
            this.AsynchronousClient = new apileague.Client.ApiClient(this.Configuration.BasePath);
            this.ExceptionFactory = apileague.Client.Configuration.DefaultExceptionFactory;
        }

        /// <summary>
        /// Initializes a new instance of the <see cref="StorageApi"/> class
        /// using Configuration object
        /// </summary>
        /// <param name="configuration">An instance of Configuration</param>
        /// <returns></returns>
        public StorageApi(apileague.Client.Configuration configuration)
        {
            if (configuration == null) throw new ArgumentNullException("configuration");

            this.Configuration = apileague.Client.Configuration.MergeConfigurations(
                apileague.Client.GlobalConfiguration.Instance,
                configuration
            );
            this.Client = new apileague.Client.ApiClient(this.Configuration.BasePath);
            this.AsynchronousClient = new apileague.Client.ApiClient(this.Configuration.BasePath);
            ExceptionFactory = apileague.Client.Configuration.DefaultExceptionFactory;
        }

        /// <summary>
        /// Initializes a new instance of the <see cref="StorageApi"/> class
        /// using a Configuration object and client instance.
        /// </summary>
        /// <param name="client">The client interface for synchronous API access.</param>
        /// <param name="asyncClient">The client interface for asynchronous API access.</param>
        /// <param name="configuration">The configuration object.</param>
        public StorageApi(apileague.Client.ISynchronousClient client, apileague.Client.IAsynchronousClient asyncClient, apileague.Client.IReadableConfiguration configuration)
        {
            if (client == null) throw new ArgumentNullException("client");
            if (asyncClient == null) throw new ArgumentNullException("asyncClient");
            if (configuration == null) throw new ArgumentNullException("configuration");

            this.Client = client;
            this.AsynchronousClient = asyncClient;
            this.Configuration = configuration;
            this.ExceptionFactory = apileague.Client.Configuration.DefaultExceptionFactory;
        }

        /// <summary>
        /// The client for accessing this underlying API asynchronously.
        /// </summary>
        public apileague.Client.IAsynchronousClient AsynchronousClient { get; set; }

        /// <summary>
        /// The client for accessing this underlying API synchronously.
        /// </summary>
        public apileague.Client.ISynchronousClient Client { get; set; }

        /// <summary>
        /// Gets the base path of the API client.
        /// </summary>
        /// <value>The base path</value>
        public string GetBasePath()
        {
            return this.Configuration.BasePath;
        }

        /// <summary>
        /// Gets or sets the configuration object
        /// </summary>
        /// <value>An instance of the Configuration</value>
        public apileague.Client.IReadableConfiguration Configuration { get; set; }

        /// <summary>
        /// Provides a factory method hook for the creation of exceptions.
        /// </summary>
        public apileague.Client.ExceptionFactory ExceptionFactory
        {
            get
            {
                if (_exceptionFactory != null && _exceptionFactory.GetInvocationList().Length > 1)
                {
                    throw new InvalidOperationException("Multicast delegate for ExceptionFactory is unsupported.");
                }
                return _exceptionFactory;
            }
            set { _exceptionFactory = value; }
        }

        /// <summary>
        /// Read Key Value from Store Read a value from the key-value store. The key-value store is a simple storage system that allows you to store and retrieve data using a key. The data is stored in the cloud and can be accessed from anywhere. You can use the key-value store to store any type of data, such as text or numbers. The key-value store is a great way to store data that you want to access from multiple devices or locations.
        /// </summary>
        /// <exception cref="apileague.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="key">The key for which the value is stored (max length 255 characters).</param>
        /// <param name="operationIndex">Index associated with the operation.</param>
        /// <returns>ReadKeyValueFromStore200Response</returns>
        public ReadKeyValueFromStore200Response ReadKeyValueFromStore(string key, int operationIndex = 0)
        {
            apileague.Client.ApiResponse<ReadKeyValueFromStore200Response> localVarResponse = ReadKeyValueFromStoreWithHttpInfo(key);
            return localVarResponse.Data;
        }

        /// <summary>
        /// Read Key Value from Store Read a value from the key-value store. The key-value store is a simple storage system that allows you to store and retrieve data using a key. The data is stored in the cloud and can be accessed from anywhere. You can use the key-value store to store any type of data, such as text or numbers. The key-value store is a great way to store data that you want to access from multiple devices or locations.
        /// </summary>
        /// <exception cref="apileague.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="key">The key for which the value is stored (max length 255 characters).</param>
        /// <param name="operationIndex">Index associated with the operation.</param>
        /// <returns>ApiResponse of ReadKeyValueFromStore200Response</returns>
        public apileague.Client.ApiResponse<ReadKeyValueFromStore200Response> ReadKeyValueFromStoreWithHttpInfo(string key, int operationIndex = 0)
        {
            // verify the required parameter 'key' is set
            if (key == null)
            {
                throw new apileague.Client.ApiException(400, "Missing required parameter 'key' when calling StorageApi->ReadKeyValueFromStore");
            }

            apileague.Client.RequestOptions localVarRequestOptions = new apileague.Client.RequestOptions();

            string[] _contentTypes = new string[] {
            };

            // to determine the Accept header
            string[] _accepts = new string[] {
                "application/json"
            };

            var localVarContentType = apileague.Client.ClientUtils.SelectHeaderContentType(_contentTypes);
            if (localVarContentType != null)
            {
                localVarRequestOptions.HeaderParameters.Add("Content-Type", localVarContentType);
            }

            var localVarAccept = apileague.Client.ClientUtils.SelectHeaderAccept(_accepts);
            if (localVarAccept != null)
            {
                localVarRequestOptions.HeaderParameters.Add("Accept", localVarAccept);
            }

            localVarRequestOptions.QueryParameters.Add(apileague.Client.ClientUtils.ParameterToMultiMap("", "key", key));

            localVarRequestOptions.Operation = "StorageApi.ReadKeyValueFromStore";
            localVarRequestOptions.OperationIndex = operationIndex;

            // authentication (apiKey) required
            if (!string.IsNullOrEmpty(this.Configuration.GetApiKeyWithPrefix("api-key")))
            {
                localVarRequestOptions.QueryParameters.Add(apileague.Client.ClientUtils.ParameterToMultiMap("", "api-key", this.Configuration.GetApiKeyWithPrefix("api-key")));
            }
            // authentication (headerApiKey) required
            if (!string.IsNullOrEmpty(this.Configuration.GetApiKeyWithPrefix("x-api-key")))
            {
                localVarRequestOptions.HeaderParameters.Add("x-api-key", this.Configuration.GetApiKeyWithPrefix("x-api-key"));
            }

            // make the HTTP request
            var localVarResponse = this.Client.Get<ReadKeyValueFromStore200Response>("/read-key-value", localVarRequestOptions, this.Configuration);
            if (this.ExceptionFactory != null)
            {
                Exception _exception = this.ExceptionFactory("ReadKeyValueFromStore", localVarResponse);
                if (_exception != null)
                {
                    throw _exception;
                }
            }

            return localVarResponse;
        }

        /// <summary>
        /// Read Key Value from Store Read a value from the key-value store. The key-value store is a simple storage system that allows you to store and retrieve data using a key. The data is stored in the cloud and can be accessed from anywhere. You can use the key-value store to store any type of data, such as text or numbers. The key-value store is a great way to store data that you want to access from multiple devices or locations.
        /// </summary>
        /// <exception cref="apileague.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="key">The key for which the value is stored (max length 255 characters).</param>
        /// <param name="operationIndex">Index associated with the operation.</param>
        /// <param name="cancellationToken">Cancellation Token to cancel the request.</param>
        /// <returns>Task of ReadKeyValueFromStore200Response</returns>
        public async System.Threading.Tasks.Task<ReadKeyValueFromStore200Response> ReadKeyValueFromStoreAsync(string key, int operationIndex = 0, System.Threading.CancellationToken cancellationToken = default(System.Threading.CancellationToken))
        {
            apileague.Client.ApiResponse<ReadKeyValueFromStore200Response> localVarResponse = await ReadKeyValueFromStoreWithHttpInfoAsync(key, operationIndex, cancellationToken).ConfigureAwait(false);
            return localVarResponse.Data;
        }

        /// <summary>
        /// Read Key Value from Store Read a value from the key-value store. The key-value store is a simple storage system that allows you to store and retrieve data using a key. The data is stored in the cloud and can be accessed from anywhere. You can use the key-value store to store any type of data, such as text or numbers. The key-value store is a great way to store data that you want to access from multiple devices or locations.
        /// </summary>
        /// <exception cref="apileague.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="key">The key for which the value is stored (max length 255 characters).</param>
        /// <param name="operationIndex">Index associated with the operation.</param>
        /// <param name="cancellationToken">Cancellation Token to cancel the request.</param>
        /// <returns>Task of ApiResponse (ReadKeyValueFromStore200Response)</returns>
        public async System.Threading.Tasks.Task<apileague.Client.ApiResponse<ReadKeyValueFromStore200Response>> ReadKeyValueFromStoreWithHttpInfoAsync(string key, int operationIndex = 0, System.Threading.CancellationToken cancellationToken = default(System.Threading.CancellationToken))
        {
            // verify the required parameter 'key' is set
            if (key == null)
            {
                throw new apileague.Client.ApiException(400, "Missing required parameter 'key' when calling StorageApi->ReadKeyValueFromStore");
            }


            apileague.Client.RequestOptions localVarRequestOptions = new apileague.Client.RequestOptions();

            string[] _contentTypes = new string[] {
            };

            // to determine the Accept header
            string[] _accepts = new string[] {
                "application/json"
            };

            var localVarContentType = apileague.Client.ClientUtils.SelectHeaderContentType(_contentTypes);
            if (localVarContentType != null)
            {
                localVarRequestOptions.HeaderParameters.Add("Content-Type", localVarContentType);
            }

            var localVarAccept = apileague.Client.ClientUtils.SelectHeaderAccept(_accepts);
            if (localVarAccept != null)
            {
                localVarRequestOptions.HeaderParameters.Add("Accept", localVarAccept);
            }

            localVarRequestOptions.QueryParameters.Add(apileague.Client.ClientUtils.ParameterToMultiMap("", "key", key));

            localVarRequestOptions.Operation = "StorageApi.ReadKeyValueFromStore";
            localVarRequestOptions.OperationIndex = operationIndex;

            // authentication (apiKey) required
            if (!string.IsNullOrEmpty(this.Configuration.GetApiKeyWithPrefix("api-key")))
            {
                localVarRequestOptions.QueryParameters.Add(apileague.Client.ClientUtils.ParameterToMultiMap("", "api-key", this.Configuration.GetApiKeyWithPrefix("api-key")));
            }
            // authentication (headerApiKey) required
            if (!string.IsNullOrEmpty(this.Configuration.GetApiKeyWithPrefix("x-api-key")))
            {
                localVarRequestOptions.HeaderParameters.Add("x-api-key", this.Configuration.GetApiKeyWithPrefix("x-api-key"));
            }

            // make the HTTP request
            var localVarResponse = await this.AsynchronousClient.GetAsync<ReadKeyValueFromStore200Response>("/read-key-value", localVarRequestOptions, this.Configuration, cancellationToken).ConfigureAwait(false);

            if (this.ExceptionFactory != null)
            {
                Exception _exception = this.ExceptionFactory("ReadKeyValueFromStore", localVarResponse);
                if (_exception != null)
                {
                    throw _exception;
                }
            }

            return localVarResponse;
        }

        /// <summary>
        /// Store Key Value (GET) Store a value in the key-value store. The key-value store is a simple storage system that allows you to store and retrieve data using a key. The data is stored in the cloud and can be accessed from anywhere. You can use the key-value store to store any type of data, such as text or numbers. The key-value store is a great way to store data that you want to access from multiple devices or locations.
        /// </summary>
        /// <exception cref="apileague.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="key">The key for which the value is stored (max length 255 characters).</param>
        /// <param name="value">The value that is supposed to be stored (max length 10,000 characters).</param>
        /// <param name="operationIndex">Index associated with the operation.</param>
        /// <returns>StoreKeyValueGET200Response</returns>
        public StoreKeyValueGET200Response StoreKeyValueGET(string key, string value, int operationIndex = 0)
        {
            apileague.Client.ApiResponse<StoreKeyValueGET200Response> localVarResponse = StoreKeyValueGETWithHttpInfo(key, value);
            return localVarResponse.Data;
        }

        /// <summary>
        /// Store Key Value (GET) Store a value in the key-value store. The key-value store is a simple storage system that allows you to store and retrieve data using a key. The data is stored in the cloud and can be accessed from anywhere. You can use the key-value store to store any type of data, such as text or numbers. The key-value store is a great way to store data that you want to access from multiple devices or locations.
        /// </summary>
        /// <exception cref="apileague.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="key">The key for which the value is stored (max length 255 characters).</param>
        /// <param name="value">The value that is supposed to be stored (max length 10,000 characters).</param>
        /// <param name="operationIndex">Index associated with the operation.</param>
        /// <returns>ApiResponse of StoreKeyValueGET200Response</returns>
        public apileague.Client.ApiResponse<StoreKeyValueGET200Response> StoreKeyValueGETWithHttpInfo(string key, string value, int operationIndex = 0)
        {
            // verify the required parameter 'key' is set
            if (key == null)
            {
                throw new apileague.Client.ApiException(400, "Missing required parameter 'key' when calling StorageApi->StoreKeyValueGET");
            }

            // verify the required parameter 'value' is set
            if (value == null)
            {
                throw new apileague.Client.ApiException(400, "Missing required parameter 'value' when calling StorageApi->StoreKeyValueGET");
            }

            apileague.Client.RequestOptions localVarRequestOptions = new apileague.Client.RequestOptions();

            string[] _contentTypes = new string[] {
            };

            // to determine the Accept header
            string[] _accepts = new string[] {
                "application/json"
            };

            var localVarContentType = apileague.Client.ClientUtils.SelectHeaderContentType(_contentTypes);
            if (localVarContentType != null)
            {
                localVarRequestOptions.HeaderParameters.Add("Content-Type", localVarContentType);
            }

            var localVarAccept = apileague.Client.ClientUtils.SelectHeaderAccept(_accepts);
            if (localVarAccept != null)
            {
                localVarRequestOptions.HeaderParameters.Add("Accept", localVarAccept);
            }

            localVarRequestOptions.QueryParameters.Add(apileague.Client.ClientUtils.ParameterToMultiMap("", "key", key));
            localVarRequestOptions.QueryParameters.Add(apileague.Client.ClientUtils.ParameterToMultiMap("", "value", value));

            localVarRequestOptions.Operation = "StorageApi.StoreKeyValueGET";
            localVarRequestOptions.OperationIndex = operationIndex;

            // authentication (apiKey) required
            if (!string.IsNullOrEmpty(this.Configuration.GetApiKeyWithPrefix("api-key")))
            {
                localVarRequestOptions.QueryParameters.Add(apileague.Client.ClientUtils.ParameterToMultiMap("", "api-key", this.Configuration.GetApiKeyWithPrefix("api-key")));
            }
            // authentication (headerApiKey) required
            if (!string.IsNullOrEmpty(this.Configuration.GetApiKeyWithPrefix("x-api-key")))
            {
                localVarRequestOptions.HeaderParameters.Add("x-api-key", this.Configuration.GetApiKeyWithPrefix("x-api-key"));
            }

            // make the HTTP request
            var localVarResponse = this.Client.Get<StoreKeyValueGET200Response>("/store-key-value", localVarRequestOptions, this.Configuration);
            if (this.ExceptionFactory != null)
            {
                Exception _exception = this.ExceptionFactory("StoreKeyValueGET", localVarResponse);
                if (_exception != null)
                {
                    throw _exception;
                }
            }

            return localVarResponse;
        }

        /// <summary>
        /// Store Key Value (GET) Store a value in the key-value store. The key-value store is a simple storage system that allows you to store and retrieve data using a key. The data is stored in the cloud and can be accessed from anywhere. You can use the key-value store to store any type of data, such as text or numbers. The key-value store is a great way to store data that you want to access from multiple devices or locations.
        /// </summary>
        /// <exception cref="apileague.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="key">The key for which the value is stored (max length 255 characters).</param>
        /// <param name="value">The value that is supposed to be stored (max length 10,000 characters).</param>
        /// <param name="operationIndex">Index associated with the operation.</param>
        /// <param name="cancellationToken">Cancellation Token to cancel the request.</param>
        /// <returns>Task of StoreKeyValueGET200Response</returns>
        public async System.Threading.Tasks.Task<StoreKeyValueGET200Response> StoreKeyValueGETAsync(string key, string value, int operationIndex = 0, System.Threading.CancellationToken cancellationToken = default(System.Threading.CancellationToken))
        {
            apileague.Client.ApiResponse<StoreKeyValueGET200Response> localVarResponse = await StoreKeyValueGETWithHttpInfoAsync(key, value, operationIndex, cancellationToken).ConfigureAwait(false);
            return localVarResponse.Data;
        }

        /// <summary>
        /// Store Key Value (GET) Store a value in the key-value store. The key-value store is a simple storage system that allows you to store and retrieve data using a key. The data is stored in the cloud and can be accessed from anywhere. You can use the key-value store to store any type of data, such as text or numbers. The key-value store is a great way to store data that you want to access from multiple devices or locations.
        /// </summary>
        /// <exception cref="apileague.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="key">The key for which the value is stored (max length 255 characters).</param>
        /// <param name="value">The value that is supposed to be stored (max length 10,000 characters).</param>
        /// <param name="operationIndex">Index associated with the operation.</param>
        /// <param name="cancellationToken">Cancellation Token to cancel the request.</param>
        /// <returns>Task of ApiResponse (StoreKeyValueGET200Response)</returns>
        public async System.Threading.Tasks.Task<apileague.Client.ApiResponse<StoreKeyValueGET200Response>> StoreKeyValueGETWithHttpInfoAsync(string key, string value, int operationIndex = 0, System.Threading.CancellationToken cancellationToken = default(System.Threading.CancellationToken))
        {
            // verify the required parameter 'key' is set
            if (key == null)
            {
                throw new apileague.Client.ApiException(400, "Missing required parameter 'key' when calling StorageApi->StoreKeyValueGET");
            }

            // verify the required parameter 'value' is set
            if (value == null)
            {
                throw new apileague.Client.ApiException(400, "Missing required parameter 'value' when calling StorageApi->StoreKeyValueGET");
            }


            apileague.Client.RequestOptions localVarRequestOptions = new apileague.Client.RequestOptions();

            string[] _contentTypes = new string[] {
            };

            // to determine the Accept header
            string[] _accepts = new string[] {
                "application/json"
            };

            var localVarContentType = apileague.Client.ClientUtils.SelectHeaderContentType(_contentTypes);
            if (localVarContentType != null)
            {
                localVarRequestOptions.HeaderParameters.Add("Content-Type", localVarContentType);
            }

            var localVarAccept = apileague.Client.ClientUtils.SelectHeaderAccept(_accepts);
            if (localVarAccept != null)
            {
                localVarRequestOptions.HeaderParameters.Add("Accept", localVarAccept);
            }

            localVarRequestOptions.QueryParameters.Add(apileague.Client.ClientUtils.ParameterToMultiMap("", "key", key));
            localVarRequestOptions.QueryParameters.Add(apileague.Client.ClientUtils.ParameterToMultiMap("", "value", value));

            localVarRequestOptions.Operation = "StorageApi.StoreKeyValueGET";
            localVarRequestOptions.OperationIndex = operationIndex;

            // authentication (apiKey) required
            if (!string.IsNullOrEmpty(this.Configuration.GetApiKeyWithPrefix("api-key")))
            {
                localVarRequestOptions.QueryParameters.Add(apileague.Client.ClientUtils.ParameterToMultiMap("", "api-key", this.Configuration.GetApiKeyWithPrefix("api-key")));
            }
            // authentication (headerApiKey) required
            if (!string.IsNullOrEmpty(this.Configuration.GetApiKeyWithPrefix("x-api-key")))
            {
                localVarRequestOptions.HeaderParameters.Add("x-api-key", this.Configuration.GetApiKeyWithPrefix("x-api-key"));
            }

            // make the HTTP request
            var localVarResponse = await this.AsynchronousClient.GetAsync<StoreKeyValueGET200Response>("/store-key-value", localVarRequestOptions, this.Configuration, cancellationToken).ConfigureAwait(false);

            if (this.ExceptionFactory != null)
            {
                Exception _exception = this.ExceptionFactory("StoreKeyValueGET", localVarResponse);
                if (_exception != null)
                {
                    throw _exception;
                }
            }

            return localVarResponse;
        }

    }
}
