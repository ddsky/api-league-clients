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
    public interface IWebApi
    {
        /// <summary>
        /// Extract Authors Extracts the authors from a given URL. This API is useful for extracting the authors from a blog post or news article. The API will return a list of authors with their names and links to their profiles if available.
        /// </summary>
        /// <param name="url">The url with the article from which authors should be extracted.</param>
        /// <returns>InlineResponse20014</returns>
        InlineResponse20014 ExtractAuthors (string url);
        /// <summary>
        /// Extract Content from a Web Page Extract the main content from a web page. This API is useful for extracting the main text, title, and images from a web page. It can be used to create a summary of the content of a web page, or to extract the main content of a web page to display it in a different format.
        /// </summary>
        /// <param name="url">The url for which the content will be extracted.</param>
        /// <returns>InlineResponse20012</returns>
        InlineResponse20012 ExtractContentFromAWebPage (string url);
        /// <summary>
        /// Extract Publish Date Extract the publish date of an article (news or blog). The API will return the publish date of the article if it can be found. The date returned is in the format YYYY-MM-DD.
        /// </summary>
        /// <param name="url">The url for which the publish date should be extracted.</param>
        /// <returns>InlineResponse20013</returns>
        InlineResponse20013 ExtractPublishDate (string url);
        /// <summary>
        /// Search Web Search the web for a given query. The API returns a list of results with the title, summary, and URL.
        /// </summary>
        /// <param name="query">The search query.</param>
        /// <param name="number">The number of results to return in range [1,50]</param>
        /// <returns>InlineResponse20015</returns>
        InlineResponse20015 SearchWeb (string query, int? number);
    }

    /// <summary>
    /// Represents a collection of functions to interact with the API endpoints
    /// </summary>
    public class WebApi : IWebApi
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="WebApi"/> class.
        /// </summary>
        /// <param name="apiClient"> an instance of ApiClient (optional)</param>
        /// <returns></returns>
        public WebApi(ApiClient apiClient = null)
        {
            if (apiClient == null) // use the default one in Configuration
                this.ApiClient = Configuration.DefaultApiClient;
            else
                this.ApiClient = apiClient;
        }

        /// <summary>
        /// Initializes a new instance of the <see cref="WebApi"/> class.
        /// </summary>
        /// <returns></returns>
        public WebApi(String basePath)
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
        /// Extract Authors Extracts the authors from a given URL. This API is useful for extracting the authors from a blog post or news article. The API will return a list of authors with their names and links to their profiles if available.
        /// </summary>
        /// <param name="url">The url with the article from which authors should be extracted.</param>
        /// <returns>InlineResponse20014</returns>
        public InlineResponse20014 ExtractAuthors (string url)
        {
            
            // verify the required parameter 'url' is set
            if (url == null) throw new ApiException(400, "Missing required parameter 'url' when calling ExtractAuthors");
            

            var path = "/extract-authors";
            path = path.Replace("{format}", "json");
            
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;

             if (url != null) queryParams.Add("url", ApiClient.ParameterToString(url)); // query parameter
                                    
            // authentication setting, if any
            String[] authSettings = new String[] { "apiKey", "headerApiKey" };

            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);

            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling ExtractAuthors: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling ExtractAuthors: " + response.ErrorMessage, response.ErrorMessage);

            return (InlineResponse20014) ApiClient.Deserialize(response.Content, typeof(InlineResponse20014), response.Headers);
        }

        /// <summary>
        /// Extract Content from a Web Page Extract the main content from a web page. This API is useful for extracting the main text, title, and images from a web page. It can be used to create a summary of the content of a web page, or to extract the main content of a web page to display it in a different format.
        /// </summary>
        /// <param name="url">The url for which the content will be extracted.</param>
        /// <returns>InlineResponse20012</returns>
        public InlineResponse20012 ExtractContentFromAWebPage (string url)
        {
            
            // verify the required parameter 'url' is set
            if (url == null) throw new ApiException(400, "Missing required parameter 'url' when calling ExtractContentFromAWebPage");
            

            var path = "/extract-content";
            path = path.Replace("{format}", "json");
            
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;

             if (url != null) queryParams.Add("url", ApiClient.ParameterToString(url)); // query parameter
                                    
            // authentication setting, if any
            String[] authSettings = new String[] { "apiKey", "headerApiKey" };

            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);

            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling ExtractContentFromAWebPage: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling ExtractContentFromAWebPage: " + response.ErrorMessage, response.ErrorMessage);

            return (InlineResponse20012) ApiClient.Deserialize(response.Content, typeof(InlineResponse20012), response.Headers);
        }

        /// <summary>
        /// Extract Publish Date Extract the publish date of an article (news or blog). The API will return the publish date of the article if it can be found. The date returned is in the format YYYY-MM-DD.
        /// </summary>
        /// <param name="url">The url for which the publish date should be extracted.</param>
        /// <returns>InlineResponse20013</returns>
        public InlineResponse20013 ExtractPublishDate (string url)
        {
            
            // verify the required parameter 'url' is set
            if (url == null) throw new ApiException(400, "Missing required parameter 'url' when calling ExtractPublishDate");
            

            var path = "/extract-publish-date";
            path = path.Replace("{format}", "json");
            
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;

             if (url != null) queryParams.Add("url", ApiClient.ParameterToString(url)); // query parameter
                                    
            // authentication setting, if any
            String[] authSettings = new String[] { "apiKey", "headerApiKey" };

            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);

            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling ExtractPublishDate: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling ExtractPublishDate: " + response.ErrorMessage, response.ErrorMessage);

            return (InlineResponse20013) ApiClient.Deserialize(response.Content, typeof(InlineResponse20013), response.Headers);
        }

        /// <summary>
        /// Search Web Search the web for a given query. The API returns a list of results with the title, summary, and URL.
        /// </summary>
        /// <param name="query">The search query.</param>
        /// <param name="number">The number of results to return in range [1,50]</param>
        /// <returns>InlineResponse20015</returns>
        public InlineResponse20015 SearchWeb (string query, int? number)
        {
            
            // verify the required parameter 'query' is set
            if (query == null) throw new ApiException(400, "Missing required parameter 'query' when calling SearchWeb");
            

            var path = "/search-web";
            path = path.Replace("{format}", "json");
            
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;

             if (query != null) queryParams.Add("query", ApiClient.ParameterToString(query)); // query parameter
 if (number != null) queryParams.Add("number", ApiClient.ParameterToString(number)); // query parameter
                                    
            // authentication setting, if any
            String[] authSettings = new String[] { "apiKey", "headerApiKey" };

            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);

            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling SearchWeb: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling SearchWeb: " + response.ErrorMessage, response.ErrorMessage);

            return (InlineResponse20015) ApiClient.Deserialize(response.Content, typeof(InlineResponse20015), response.Headers);
        }

    }
}
