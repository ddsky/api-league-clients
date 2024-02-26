using System;
using System.Collections.Generic;
using RestSharp;
using Org.OpenAPITools.Client;
using com.apileague.client.model;

namespace com.apileague
{
    /// <summary>
    /// Represents a collection of functions to interact with the API endpoints
    /// </summary>
    public interface IStorageApi
    {
        /// <summary>
        /// Read Key Value from Store Read a value from the key-value store. The key-value store is a simple storage system that allows you to store and retrieve data using a key. The data is stored in the cloud and can be accessed from anywhere. You can use the key-value store to store any type of data, such as text or numbers. The key-value store is a great way to store data that you want to access from multiple devices or locations.
        /// </summary>
        /// <param name="key">The key for which the value is stored (max length 255 characters).</param>
        /// <returns>InlineResponse20031</returns>
        InlineResponse20031 ReadKeyValueFromStore (string key);
        /// <summary>
        /// Store Key Value (GET) Store a value in the key-value store. The key-value store is a simple storage system that allows you to store and retrieve data using a key. The data is stored in the cloud and can be accessed from anywhere. You can use the key-value store to store any type of data, such as text or numbers. The key-value store is a great way to store data that you want to access from multiple devices or locations.
        /// </summary>
        /// <param name="key">The key for which the value is stored (max length 255 characters).</param>
        /// <param name="value">The value that is supposed to be stored (max length 10,000 characters).</param>
        /// <returns>InlineResponse20032</returns>
        InlineResponse20032 StoreKeyValueGET (string key, string value);
    }

    /// <summary>
    /// Represents a collection of functions to interact with the API endpoints
    /// </summary>
    public class StorageApi : IStorageApi
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="StorageApi"/> class.
        /// </summary>
        /// <param name="apiClient"> an instance of ApiClient (optional)</param>
        /// <returns></returns>
        public StorageApi(ApiClient apiClient = null)
        {
            if (apiClient == null) // use the default one in Configuration
                this.ApiClient = Configuration.DefaultApiClient;
            else
                this.ApiClient = apiClient;
        }

        /// <summary>
        /// Initializes a new instance of the <see cref="StorageApi"/> class.
        /// </summary>
        /// <returns></returns>
        public StorageApi(String basePath)
        {
            this.ApiClient = new ApiClient(basePath);
        }

        /// <summary>
        /// Sets the base path of the API client.
        /// </summary>
        /// <param name="basePath">The base path</param>
        /// <value>The base path</value>
        public void SetBasePath(String basePath)
        {
            this.ApiClient.BasePath = basePath;
        }

        /// <summary>
        /// Gets the base path of the API client.
        /// </summary>
        /// <param name="basePath">The base path</param>
        /// <value>The base path</value>
        public String GetBasePath(String basePath)
        {
            return this.ApiClient.BasePath;
        }

        /// <summary>
        /// Gets or sets the API client.
        /// </summary>
        /// <value>An instance of the ApiClient</value>
        public ApiClient ApiClient {get; set;}

        /// <summary>
        /// Read Key Value from Store Read a value from the key-value store. The key-value store is a simple storage system that allows you to store and retrieve data using a key. The data is stored in the cloud and can be accessed from anywhere. You can use the key-value store to store any type of data, such as text or numbers. The key-value store is a great way to store data that you want to access from multiple devices or locations.
        /// </summary>
        /// <param name="key">The key for which the value is stored (max length 255 characters).</param>
        /// <returns>InlineResponse20031</returns>
        public InlineResponse20031 ReadKeyValueFromStore (string key)
        {
            
            // verify the required parameter 'key' is set
            if (key == null) throw new ApiException(400, "Missing required parameter 'key' when calling ReadKeyValueFromStore");
            

            var path = "/read-key-value";
            path = path.Replace("{format}", "json");
            
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;

             if (key != null) queryParams.Add("key", ApiClient.ParameterToString(key)); // query parameter
                                    
            // authentication setting, if any
            String[] authSettings = new String[] { "apiKey", "headerApiKey" };

            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);

            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling ReadKeyValueFromStore: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling ReadKeyValueFromStore: " + response.ErrorMessage, response.ErrorMessage);

            return (InlineResponse20031) ApiClient.Deserialize(response.Content, typeof(InlineResponse20031), response.Headers);
        }

        /// <summary>
        /// Store Key Value (GET) Store a value in the key-value store. The key-value store is a simple storage system that allows you to store and retrieve data using a key. The data is stored in the cloud and can be accessed from anywhere. You can use the key-value store to store any type of data, such as text or numbers. The key-value store is a great way to store data that you want to access from multiple devices or locations.
        /// </summary>
        /// <param name="key">The key for which the value is stored (max length 255 characters).</param>
        /// <param name="value">The value that is supposed to be stored (max length 10,000 characters).</param>
        /// <returns>InlineResponse20032</returns>
        public InlineResponse20032 StoreKeyValueGET (string key, string value)
        {
            
            // verify the required parameter 'key' is set
            if (key == null) throw new ApiException(400, "Missing required parameter 'key' when calling StoreKeyValueGET");
            
            // verify the required parameter 'value' is set
            if (value == null) throw new ApiException(400, "Missing required parameter 'value' when calling StoreKeyValueGET");
            

            var path = "/store-key-value";
            path = path.Replace("{format}", "json");
            
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;

             if (key != null) queryParams.Add("key", ApiClient.ParameterToString(key)); // query parameter
 if (value != null) queryParams.Add("value", ApiClient.ParameterToString(value)); // query parameter
                                    
            // authentication setting, if any
            String[] authSettings = new String[] { "apiKey", "headerApiKey" };

            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);

            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling StoreKeyValueGET: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling StoreKeyValueGET: " + response.ErrorMessage, response.ErrorMessage);

            return (InlineResponse20032) ApiClient.Deserialize(response.Content, typeof(InlineResponse20032), response.Headers);
        }

    }
}
