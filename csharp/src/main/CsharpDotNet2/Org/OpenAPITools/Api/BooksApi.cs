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
    public interface IBooksApi
    {
        /// <summary>
        /// Find Similar Books Find books that are similar to the given book. This is useful for recommending books to users based on their reading history or preferences. The response will contain a list of similar books with their title, id, and cover image.
        /// </summary>
        /// <param name="id">The id of the book to which similar books should be found.</param>
        /// <param name="number">The number of similar books to return in range [1,100]</param>
        /// <returns>InlineResponse2001</returns>
        InlineResponse2001 FindSimilarBooks (int? id, int? number);
        /// <summary>
        /// Search Books Search and filter books based on matching a query, the ISBN, rating, and more fields. The query is semantically parsed using our own large ontology. That means you can search for \&quot;books about dogs\&quot; and will automatically also find books about \&quot;border collies\&quot; and other types without specifying them in the query.
        /// </summary>
        /// <param name="query">The search query.</param>
        /// <param name="earliestPublishYear">The books must have been published after this year.</param>
        /// <param name="latestPublishYear">The books must have been published before this year.</param>
        /// <param name="minRating">The minimum rating the book must have gotten in the interval [0,1].</param>
        /// <param name="maxRating">The maximum rating the book must have gotten in the interval [0,1].</param>
        /// <param name="genres">A comma-separated list of  genres. Only books from any of the given genres will be returned.</param>
        /// <param name="authors">A comma-separated list of author ids or names. Only books from any of the given authors will be returned. You can retrieve author ids from the search authors endpoint. Pass author names is slower and if two authors have the same name you can&#39;t disambiguate.</param>
        /// <param name="isbn">Only the book matching the ISBN-13 will be returned</param>
        /// <param name="oclc">Only the book matching the OCLC will be returned</param>
        /// <param name="sort">The sorting criteria (publish-date or rating).</param>
        /// <param name="sortDirection">Whether to sort ascending or descending (ASC or DESC).</param>
        /// <param name="groupResults">Whether to group similar editions of the same book.</param>
        /// <param name="offset">The number of books to skip in range [0,1000]</param>
        /// <param name="number">The number of books to return in range [1,100]</param>
        /// <returns>InlineResponse200</returns>
        InlineResponse200 SearchBooks (string query, int? earliestPublishYear, int? latestPublishYear, double? minRating, double? maxRating, string genres, string authors, string isbn, string oclc, string sort, string sortDirection, bool? groupResults, int? offset, int? number);
    }

    /// <summary>
    /// Represents a collection of functions to interact with the API endpoints
    /// </summary>
    public class BooksApi : IBooksApi
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="BooksApi"/> class.
        /// </summary>
        /// <param name="apiClient"> an instance of ApiClient (optional)</param>
        /// <returns></returns>
        public BooksApi(ApiClient apiClient = null)
        {
            if (apiClient == null) // use the default one in Configuration
                this.ApiClient = Configuration.DefaultApiClient;
            else
                this.ApiClient = apiClient;
        }

        /// <summary>
        /// Initializes a new instance of the <see cref="BooksApi"/> class.
        /// </summary>
        /// <returns></returns>
        public BooksApi(String basePath)
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
        /// Find Similar Books Find books that are similar to the given book. This is useful for recommending books to users based on their reading history or preferences. The response will contain a list of similar books with their title, id, and cover image.
        /// </summary>
        /// <param name="id">The id of the book to which similar books should be found.</param>
        /// <param name="number">The number of similar books to return in range [1,100]</param>
        /// <returns>InlineResponse2001</returns>
        public InlineResponse2001 FindSimilarBooks (int? id, int? number)
        {
            
            // verify the required parameter 'id' is set
            if (id == null) throw new ApiException(400, "Missing required parameter 'id' when calling FindSimilarBooks");
            

            var path = "/list-similar-books";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "id" + "}", ApiClient.ParameterToString(id));

            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;

             if (number != null) queryParams.Add("number", ApiClient.ParameterToString(number)); // query parameter
                                    
            // authentication setting, if any
            String[] authSettings = new String[] { "apiKey", "headerApiKey" };

            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);

            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling FindSimilarBooks: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling FindSimilarBooks: " + response.ErrorMessage, response.ErrorMessage);

            return (InlineResponse2001) ApiClient.Deserialize(response.Content, typeof(InlineResponse2001), response.Headers);
        }

        /// <summary>
        /// Search Books Search and filter books based on matching a query, the ISBN, rating, and more fields. The query is semantically parsed using our own large ontology. That means you can search for \&quot;books about dogs\&quot; and will automatically also find books about \&quot;border collies\&quot; and other types without specifying them in the query.
        /// </summary>
        /// <param name="query">The search query.</param>
        /// <param name="earliestPublishYear">The books must have been published after this year.</param>
        /// <param name="latestPublishYear">The books must have been published before this year.</param>
        /// <param name="minRating">The minimum rating the book must have gotten in the interval [0,1].</param>
        /// <param name="maxRating">The maximum rating the book must have gotten in the interval [0,1].</param>
        /// <param name="genres">A comma-separated list of  genres. Only books from any of the given genres will be returned.</param>
        /// <param name="authors">A comma-separated list of author ids or names. Only books from any of the given authors will be returned. You can retrieve author ids from the search authors endpoint. Pass author names is slower and if two authors have the same name you can&#39;t disambiguate.</param>
        /// <param name="isbn">Only the book matching the ISBN-13 will be returned</param>
        /// <param name="oclc">Only the book matching the OCLC will be returned</param>
        /// <param name="sort">The sorting criteria (publish-date or rating).</param>
        /// <param name="sortDirection">Whether to sort ascending or descending (ASC or DESC).</param>
        /// <param name="groupResults">Whether to group similar editions of the same book.</param>
        /// <param name="offset">The number of books to skip in range [0,1000]</param>
        /// <param name="number">The number of books to return in range [1,100]</param>
        /// <returns>InlineResponse200</returns>
        public InlineResponse200 SearchBooks (string query, int? earliestPublishYear, int? latestPublishYear, double? minRating, double? maxRating, string genres, string authors, string isbn, string oclc, string sort, string sortDirection, bool? groupResults, int? offset, int? number)
        {
            

            var path = "/search-books";
            path = path.Replace("{format}", "json");
            
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;

             if (query != null) queryParams.Add("query", ApiClient.ParameterToString(query)); // query parameter
 if (earliestPublishYear != null) queryParams.Add("earliest-publish-year", ApiClient.ParameterToString(earliestPublishYear)); // query parameter
 if (latestPublishYear != null) queryParams.Add("latest-publish-year", ApiClient.ParameterToString(latestPublishYear)); // query parameter
 if (minRating != null) queryParams.Add("min-rating", ApiClient.ParameterToString(minRating)); // query parameter
 if (maxRating != null) queryParams.Add("max-rating", ApiClient.ParameterToString(maxRating)); // query parameter
 if (genres != null) queryParams.Add("genres", ApiClient.ParameterToString(genres)); // query parameter
 if (authors != null) queryParams.Add("authors", ApiClient.ParameterToString(authors)); // query parameter
 if (isbn != null) queryParams.Add("isbn", ApiClient.ParameterToString(isbn)); // query parameter
 if (oclc != null) queryParams.Add("oclc", ApiClient.ParameterToString(oclc)); // query parameter
 if (sort != null) queryParams.Add("sort", ApiClient.ParameterToString(sort)); // query parameter
 if (sortDirection != null) queryParams.Add("sort-direction", ApiClient.ParameterToString(sortDirection)); // query parameter
 if (groupResults != null) queryParams.Add("group-results", ApiClient.ParameterToString(groupResults)); // query parameter
 if (offset != null) queryParams.Add("offset", ApiClient.ParameterToString(offset)); // query parameter
 if (number != null) queryParams.Add("number", ApiClient.ParameterToString(number)); // query parameter
                                    
            // authentication setting, if any
            String[] authSettings = new String[] { "apiKey", "headerApiKey" };

            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);

            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling SearchBooks: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling SearchBooks: " + response.ErrorMessage, response.ErrorMessage);

            return (InlineResponse200) ApiClient.Deserialize(response.Content, typeof(InlineResponse200), response.Headers);
        }

    }
}
