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
    public interface IKnowledgeApi
    {
        /// <summary>
        /// Random Quote This API returns a random quote from a collection of quotes. The quotes are from famous people and are in English.
        /// </summary>
        /// <param name="minLength">The minimum length of the quote in letters.</param>
        /// <param name="maxLength">The maximum length of the quote in letters.</param>
        /// <returns>InlineResponse20010</returns>
        InlineResponse20010 RandomQuote (int? minLength, int? maxLength);
        /// <summary>
        /// Random Trivia This endpoint returns a random piece of trivia.
        /// </summary>
        /// <param name="maxLength">The maximum length of the trivia in letters.</param>
        /// <returns>InlineResponse2009</returns>
        InlineResponse2009 RandomTrivia (int? maxLength);
    }

    /// <summary>
    /// Represents a collection of functions to interact with the API endpoints
    /// </summary>
    public class KnowledgeApi : IKnowledgeApi
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="KnowledgeApi"/> class.
        /// </summary>
        /// <param name="apiClient"> an instance of ApiClient (optional)</param>
        /// <returns></returns>
        public KnowledgeApi(ApiClient apiClient = null)
        {
            if (apiClient == null) // use the default one in Configuration
                this.ApiClient = Configuration.DefaultApiClient;
            else
                this.ApiClient = apiClient;
        }

        /// <summary>
        /// Initializes a new instance of the <see cref="KnowledgeApi"/> class.
        /// </summary>
        /// <returns></returns>
        public KnowledgeApi(String basePath)
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
        /// Random Quote This API returns a random quote from a collection of quotes. The quotes are from famous people and are in English.
        /// </summary>
        /// <param name="minLength">The minimum length of the quote in letters.</param>
        /// <param name="maxLength">The maximum length of the quote in letters.</param>
        /// <returns>InlineResponse20010</returns>
        public InlineResponse20010 RandomQuote (int? minLength, int? maxLength)
        {
            

            var path = "/retrieve-random-quote";
            path = path.Replace("{format}", "json");
            
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;

             if (minLength != null) queryParams.Add("min-length", ApiClient.ParameterToString(minLength)); // query parameter
 if (maxLength != null) queryParams.Add("max-length", ApiClient.ParameterToString(maxLength)); // query parameter
                                    
            // authentication setting, if any
            String[] authSettings = new String[] { "apiKey", "headerApiKey" };

            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);

            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling RandomQuote: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling RandomQuote: " + response.ErrorMessage, response.ErrorMessage);

            return (InlineResponse20010) ApiClient.Deserialize(response.Content, typeof(InlineResponse20010), response.Headers);
        }

        /// <summary>
        /// Random Trivia This endpoint returns a random piece of trivia.
        /// </summary>
        /// <param name="maxLength">The maximum length of the trivia in letters.</param>
        /// <returns>InlineResponse2009</returns>
        public InlineResponse2009 RandomTrivia (int? maxLength)
        {
            

            var path = "/retrieve-random-trivia";
            path = path.Replace("{format}", "json");
            
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;

             if (maxLength != null) queryParams.Add("max-length", ApiClient.ParameterToString(maxLength)); // query parameter
                                    
            // authentication setting, if any
            String[] authSettings = new String[] { "apiKey", "headerApiKey" };

            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);

            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling RandomTrivia: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling RandomTrivia: " + response.ErrorMessage, response.ErrorMessage);

            return (InlineResponse2009) ApiClient.Deserialize(response.Content, typeof(InlineResponse2009), response.Headers);
        }

    }
}
