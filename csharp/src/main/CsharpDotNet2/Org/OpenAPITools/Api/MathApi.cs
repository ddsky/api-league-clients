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
    public interface IMathApi
    {
        /// <summary>
        /// Convert Units Convert units from one to another. The API returns the amount and the unit of the target unit.
        /// </summary>
        /// <param name="sourceAmount">The source amount.</param>
        /// <param name="sourceUnit">The source unit.</param>
        /// <param name="targetUnit">The unit to which should be converted.</param>
        /// <param name="foodName">An optional food name. For converting foods the food is relevant as they have different densities.</param>
        /// <returns>InlineResponse20030</returns>
        InlineResponse20030 ConvertUnits (double? sourceAmount, string sourceUnit, string targetUnit, string foodName);
    }

    /// <summary>
    /// Represents a collection of functions to interact with the API endpoints
    /// </summary>
    public class MathApi : IMathApi
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="MathApi"/> class.
        /// </summary>
        /// <param name="apiClient"> an instance of ApiClient (optional)</param>
        /// <returns></returns>
        public MathApi(ApiClient apiClient = null)
        {
            if (apiClient == null) // use the default one in Configuration
                this.ApiClient = Configuration.DefaultApiClient;
            else
                this.ApiClient = apiClient;
        }

        /// <summary>
        /// Initializes a new instance of the <see cref="MathApi"/> class.
        /// </summary>
        /// <returns></returns>
        public MathApi(String basePath)
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
        /// Convert Units Convert units from one to another. The API returns the amount and the unit of the target unit.
        /// </summary>
        /// <param name="sourceAmount">The source amount.</param>
        /// <param name="sourceUnit">The source unit.</param>
        /// <param name="targetUnit">The unit to which should be converted.</param>
        /// <param name="foodName">An optional food name. For converting foods the food is relevant as they have different densities.</param>
        /// <returns>InlineResponse20030</returns>
        public InlineResponse20030 ConvertUnits (double? sourceAmount, string sourceUnit, string targetUnit, string foodName)
        {
            
            // verify the required parameter 'sourceAmount' is set
            if (sourceAmount == null) throw new ApiException(400, "Missing required parameter 'sourceAmount' when calling ConvertUnits");
            
            // verify the required parameter 'sourceUnit' is set
            if (sourceUnit == null) throw new ApiException(400, "Missing required parameter 'sourceUnit' when calling ConvertUnits");
            
            // verify the required parameter 'targetUnit' is set
            if (targetUnit == null) throw new ApiException(400, "Missing required parameter 'targetUnit' when calling ConvertUnits");
            

            var path = "/convert-units";
            path = path.Replace("{format}", "json");
            
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;

             if (sourceAmount != null) queryParams.Add("source-amount", ApiClient.ParameterToString(sourceAmount)); // query parameter
 if (sourceUnit != null) queryParams.Add("source-unit", ApiClient.ParameterToString(sourceUnit)); // query parameter
 if (targetUnit != null) queryParams.Add("target-unit", ApiClient.ParameterToString(targetUnit)); // query parameter
 if (foodName != null) queryParams.Add("food-name", ApiClient.ParameterToString(foodName)); // query parameter
                                    
            // authentication setting, if any
            String[] authSettings = new String[] { "apiKey", "headerApiKey" };

            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);

            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling ConvertUnits: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling ConvertUnits: " + response.ErrorMessage, response.ErrorMessage);

            return (InlineResponse20030) ApiClient.Deserialize(response.Content, typeof(InlineResponse20030), response.Headers);
        }

    }
}
