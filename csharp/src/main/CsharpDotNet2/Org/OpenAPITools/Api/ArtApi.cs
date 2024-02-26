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
    public interface IArtApi
    {
        /// <summary>
        /// Image to Ascii Art by URL Convert an image to ASCII art. You can pass the image URL as a query parameter. The API returns the ASCII art as plain text. This endpoint is using the GET method and an image URL as a query parameter.
        /// </summary>
        /// <param name="url">The URL to the image.</param>
        /// <param name="width">The maximum width of the image (default 400, max. 500).</param>
        /// <param name="height">The maximum height of the image (default 400, max. 500).</param>
        /// <returns>string</returns>
        string ImageToAsciiArtByURL (string url, int? width, int? height);
        /// <summary>
        /// Random Poem Retrieve a random poem by many famous authors. You can filter poem&#39;s by length (number of lines).
        /// </summary>
        /// <param name="minLines">The minimum number of lines of the poem.</param>
        /// <param name="maxLines">The maximum number of lines of the poem.</param>
        /// <returns>InlineResponse20011</returns>
        InlineResponse20011 RandomPoem (int? minLines, int? maxLines);
    }

    /// <summary>
    /// Represents a collection of functions to interact with the API endpoints
    /// </summary>
    public class ArtApi : IArtApi
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="ArtApi"/> class.
        /// </summary>
        /// <param name="apiClient"> an instance of ApiClient (optional)</param>
        /// <returns></returns>
        public ArtApi(ApiClient apiClient = null)
        {
            if (apiClient == null) // use the default one in Configuration
                this.ApiClient = Configuration.DefaultApiClient;
            else
                this.ApiClient = apiClient;
        }

        /// <summary>
        /// Initializes a new instance of the <see cref="ArtApi"/> class.
        /// </summary>
        /// <returns></returns>
        public ArtApi(String basePath)
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
        /// Image to Ascii Art by URL Convert an image to ASCII art. You can pass the image URL as a query parameter. The API returns the ASCII art as plain text. This endpoint is using the GET method and an image URL as a query parameter.
        /// </summary>
        /// <param name="url">The URL to the image.</param>
        /// <param name="width">The maximum width of the image (default 400, max. 500).</param>
        /// <param name="height">The maximum height of the image (default 400, max. 500).</param>
        /// <returns>string</returns>
        public string ImageToAsciiArtByURL (string url, int? width, int? height)
        {
            
            // verify the required parameter 'url' is set
            if (url == null) throw new ApiException(400, "Missing required parameter 'url' when calling ImageToAsciiArtByURL");
            

            var path = "/convert-image-to-ascii-txt";
            path = path.Replace("{format}", "json");
            
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;

             if (url != null) queryParams.Add("url", ApiClient.ParameterToString(url)); // query parameter
 if (width != null) queryParams.Add("width", ApiClient.ParameterToString(width)); // query parameter
 if (height != null) queryParams.Add("height", ApiClient.ParameterToString(height)); // query parameter
                                    
            // authentication setting, if any
            String[] authSettings = new String[] { "apiKey", "headerApiKey" };

            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);

            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling ImageToAsciiArtByURL: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling ImageToAsciiArtByURL: " + response.ErrorMessage, response.ErrorMessage);

            return (string) ApiClient.Deserialize(response.Content, typeof(string), response.Headers);
        }

        /// <summary>
        /// Random Poem Retrieve a random poem by many famous authors. You can filter poem&#39;s by length (number of lines).
        /// </summary>
        /// <param name="minLines">The minimum number of lines of the poem.</param>
        /// <param name="maxLines">The maximum number of lines of the poem.</param>
        /// <returns>InlineResponse20011</returns>
        public InlineResponse20011 RandomPoem (int? minLines, int? maxLines)
        {
            

            var path = "/retrieve-random-poem";
            path = path.Replace("{format}", "json");
            
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;

             if (minLines != null) queryParams.Add("min-lines", ApiClient.ParameterToString(minLines)); // query parameter
 if (maxLines != null) queryParams.Add("max-lines", ApiClient.ParameterToString(maxLines)); // query parameter
                                    
            // authentication setting, if any
            String[] authSettings = new String[] { "apiKey", "headerApiKey" };

            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);

            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling RandomPoem: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling RandomPoem: " + response.ErrorMessage, response.ErrorMessage);

            return (InlineResponse20011) ApiClient.Deserialize(response.Content, typeof(InlineResponse20011), response.Headers);
        }

    }
}
