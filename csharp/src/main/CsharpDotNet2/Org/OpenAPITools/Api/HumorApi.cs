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
    public interface IHumorApi
    {
        /// <summary>
        /// Generate Nonsense Word Generate a funny sounding nonsense word. This is useful for generating random words for games, naming things, or just for fun. The response will contain the generated word and a rating of how funny it is.
        /// </summary>
        /// <returns>InlineResponse2008</returns>
        InlineResponse2008 GenerateNonsenseWord ();
        /// <summary>
        /// Random Joke This is a simple API that returns a random joke. You can filter the jokes by tags and keywords. To make sure they are safe for work, you could use the exclude-tags parameter to exclude jokes with certain tags such as \&quot;nsfw\&quot; or \&quot;religious\&quot;.
        /// </summary>
        /// <param name="includeTags">A comma-separated list of tags the jokes should have.</param>
        /// <param name="excludeTags">A comma-separated list of tags the jokes must not have.</param>
        /// <param name="minRating">The minimum rating in range [0.0,1.0] of the jokes.</param>
        /// <param name="maxLength">The maximum length of the joke in letters.</param>
        /// <returns>InlineResponse2004Jokes</returns>
        InlineResponse2004Jokes RandomJoke (string includeTags, string excludeTags, double? minRating, int? maxLength);
        /// <summary>
        /// Random Meme Get a random meme out of over 200,000+ memes. To get the latest memes, you can use the max-age-days parameter.
        /// </summary>
        /// <param name="keywords">A comma-separated list of words that must occur in the meme.</param>
        /// <param name="keywordsInImage">Whether the keywords must occur in the image.</param>
        /// <param name="mediaType">The media type (either &#39;image&#39;, &#39;video&#39; or even specific format such as &#39;jpg&#39;, &#39;png&#39;, or &#39;gif&#39;).</param>
        /// <param name="minRating">The minimum rating in range [0.0-1.0] of the meme.</param>
        /// <param name="maxAgeDays">The maximum age of the meme in days.</param>
        /// <returns>InlineResponse2006</returns>
        InlineResponse2006 RandomMeme (string keywords, bool? keywordsInImage, string mediaType, double? minRating, int? maxAgeDays);
        /// <summary>
        /// Search Gifs Search through hundreds of thousands of gifs to match any reaction you want. The gifs are returned in a list with the URL, width, and height of the gif.
        /// </summary>
        /// <param name="query">The search query.</param>
        /// <param name="number">The number of gifs to return in range [1,10]</param>
        /// <returns>InlineResponse2007</returns>
        InlineResponse2007 SearchGifs (string query, int? number);
        /// <summary>
        /// Search Jokes With over 50,000 jokes, you should find something for any occasion. There are 27 categories/tags to choose from, but you can also search for very specific words within jokes.
        /// </summary>
        /// <param name="keywords">A comma-separated list of words that must occur in the joke.</param>
        /// <param name="includeTags">A comma-separated list of tags the jokes should have.</param>
        /// <param name="excludeTags">A comma-separated list of tags the jokes must not have.</param>
        /// <param name="minRating">The minimum rating (0-10) of the jokes.</param>
        /// <param name="maxLength">The maximum length of the joke in letters.</param>
        /// <param name="offset">The number of jokes to skip, between 0 and 1000.</param>
        /// <param name="number">The number of jokes, between 1 and 10.</param>
        /// <returns>InlineResponse2004</returns>
        InlineResponse2004 SearchJokes (string keywords, string includeTags, string excludeTags, double? minRating, double? maxLength, int? offset, int? number);
        /// <summary>
        /// Search Memes With over 200,000 memes, you&#39;ll surely find something funny. You can even search for text within memes and filter by user ratings.
        /// </summary>
        /// <param name="keywords">A comma-separated list of words that must occur in the meme.</param>
        /// <param name="keywordsInImage">Whether the keywords must occur in the image.</param>
        /// <param name="mediaType">The media type (either &#39;image&#39;, &#39;video&#39; or even specific format such as &#39;jpg&#39;, &#39;png&#39;, or &#39;gif&#39;).</param>
        /// <param name="minRating">The minimum rating in range [0.0,1.0] of the meme.</param>
        /// <param name="maxAgeDays">The maximum age of the meme in days.</param>
        /// <param name="offset">The number of memes to skip, between 0 and 1000.</param>
        /// <param name="number">The number of memes, between 0 and 10.</param>
        /// <returns>InlineResponse2005</returns>
        InlineResponse2005 SearchMemes (string keywords, bool? keywordsInImage, string mediaType, double? minRating, int? maxAgeDays, int? offset, int? number);
    }

    /// <summary>
    /// Represents a collection of functions to interact with the API endpoints
    /// </summary>
    public class HumorApi : IHumorApi
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="HumorApi"/> class.
        /// </summary>
        /// <param name="apiClient"> an instance of ApiClient (optional)</param>
        /// <returns></returns>
        public HumorApi(ApiClient apiClient = null)
        {
            if (apiClient == null) // use the default one in Configuration
                this.ApiClient = Configuration.DefaultApiClient;
            else
                this.ApiClient = apiClient;
        }

        /// <summary>
        /// Initializes a new instance of the <see cref="HumorApi"/> class.
        /// </summary>
        /// <returns></returns>
        public HumorApi(String basePath)
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
        /// Generate Nonsense Word Generate a funny sounding nonsense word. This is useful for generating random words for games, naming things, or just for fun. The response will contain the generated word and a rating of how funny it is.
        /// </summary>
        /// <returns>InlineResponse2008</returns>
        public InlineResponse2008 GenerateNonsenseWord ()
        {
            

            var path = "/generate-nonsense-word";
            path = path.Replace("{format}", "json");
            
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;

                                                
            // authentication setting, if any
            String[] authSettings = new String[] { "apiKey", "headerApiKey" };

            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);

            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling GenerateNonsenseWord: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GenerateNonsenseWord: " + response.ErrorMessage, response.ErrorMessage);

            return (InlineResponse2008) ApiClient.Deserialize(response.Content, typeof(InlineResponse2008), response.Headers);
        }

        /// <summary>
        /// Random Joke This is a simple API that returns a random joke. You can filter the jokes by tags and keywords. To make sure they are safe for work, you could use the exclude-tags parameter to exclude jokes with certain tags such as \&quot;nsfw\&quot; or \&quot;religious\&quot;.
        /// </summary>
        /// <param name="includeTags">A comma-separated list of tags the jokes should have.</param>
        /// <param name="excludeTags">A comma-separated list of tags the jokes must not have.</param>
        /// <param name="minRating">The minimum rating in range [0.0,1.0] of the jokes.</param>
        /// <param name="maxLength">The maximum length of the joke in letters.</param>
        /// <returns>InlineResponse2004Jokes</returns>
        public InlineResponse2004Jokes RandomJoke (string includeTags, string excludeTags, double? minRating, int? maxLength)
        {
            

            var path = "/retrieve-random-joke";
            path = path.Replace("{format}", "json");
            
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;

             if (includeTags != null) queryParams.Add("include-tags", ApiClient.ParameterToString(includeTags)); // query parameter
 if (excludeTags != null) queryParams.Add("exclude-tags", ApiClient.ParameterToString(excludeTags)); // query parameter
 if (minRating != null) queryParams.Add("min-rating", ApiClient.ParameterToString(minRating)); // query parameter
 if (maxLength != null) queryParams.Add("max-length", ApiClient.ParameterToString(maxLength)); // query parameter
                                    
            // authentication setting, if any
            String[] authSettings = new String[] { "apiKey", "headerApiKey" };

            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);

            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling RandomJoke: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling RandomJoke: " + response.ErrorMessage, response.ErrorMessage);

            return (InlineResponse2004Jokes) ApiClient.Deserialize(response.Content, typeof(InlineResponse2004Jokes), response.Headers);
        }

        /// <summary>
        /// Random Meme Get a random meme out of over 200,000+ memes. To get the latest memes, you can use the max-age-days parameter.
        /// </summary>
        /// <param name="keywords">A comma-separated list of words that must occur in the meme.</param>
        /// <param name="keywordsInImage">Whether the keywords must occur in the image.</param>
        /// <param name="mediaType">The media type (either &#39;image&#39;, &#39;video&#39; or even specific format such as &#39;jpg&#39;, &#39;png&#39;, or &#39;gif&#39;).</param>
        /// <param name="minRating">The minimum rating in range [0.0-1.0] of the meme.</param>
        /// <param name="maxAgeDays">The maximum age of the meme in days.</param>
        /// <returns>InlineResponse2006</returns>
        public InlineResponse2006 RandomMeme (string keywords, bool? keywordsInImage, string mediaType, double? minRating, int? maxAgeDays)
        {
            

            var path = "/retrieve-random-meme";
            path = path.Replace("{format}", "json");
            
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;

             if (keywords != null) queryParams.Add("keywords", ApiClient.ParameterToString(keywords)); // query parameter
 if (keywordsInImage != null) queryParams.Add("keywords-in-image", ApiClient.ParameterToString(keywordsInImage)); // query parameter
 if (mediaType != null) queryParams.Add("media-type", ApiClient.ParameterToString(mediaType)); // query parameter
 if (minRating != null) queryParams.Add("min-rating", ApiClient.ParameterToString(minRating)); // query parameter
 if (maxAgeDays != null) queryParams.Add("max-age-days", ApiClient.ParameterToString(maxAgeDays)); // query parameter
                                    
            // authentication setting, if any
            String[] authSettings = new String[] { "apiKey", "headerApiKey" };

            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);

            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling RandomMeme: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling RandomMeme: " + response.ErrorMessage, response.ErrorMessage);

            return (InlineResponse2006) ApiClient.Deserialize(response.Content, typeof(InlineResponse2006), response.Headers);
        }

        /// <summary>
        /// Search Gifs Search through hundreds of thousands of gifs to match any reaction you want. The gifs are returned in a list with the URL, width, and height of the gif.
        /// </summary>
        /// <param name="query">The search query.</param>
        /// <param name="number">The number of gifs to return in range [1,10]</param>
        /// <returns>InlineResponse2007</returns>
        public InlineResponse2007 SearchGifs (string query, int? number)
        {
            
            // verify the required parameter 'query' is set
            if (query == null) throw new ApiException(400, "Missing required parameter 'query' when calling SearchGifs");
            

            var path = "/search-gifs";
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
                throw new ApiException ((int)response.StatusCode, "Error calling SearchGifs: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling SearchGifs: " + response.ErrorMessage, response.ErrorMessage);

            return (InlineResponse2007) ApiClient.Deserialize(response.Content, typeof(InlineResponse2007), response.Headers);
        }

        /// <summary>
        /// Search Jokes With over 50,000 jokes, you should find something for any occasion. There are 27 categories/tags to choose from, but you can also search for very specific words within jokes.
        /// </summary>
        /// <param name="keywords">A comma-separated list of words that must occur in the joke.</param>
        /// <param name="includeTags">A comma-separated list of tags the jokes should have.</param>
        /// <param name="excludeTags">A comma-separated list of tags the jokes must not have.</param>
        /// <param name="minRating">The minimum rating (0-10) of the jokes.</param>
        /// <param name="maxLength">The maximum length of the joke in letters.</param>
        /// <param name="offset">The number of jokes to skip, between 0 and 1000.</param>
        /// <param name="number">The number of jokes, between 1 and 10.</param>
        /// <returns>InlineResponse2004</returns>
        public InlineResponse2004 SearchJokes (string keywords, string includeTags, string excludeTags, double? minRating, double? maxLength, int? offset, int? number)
        {
            

            var path = "/search-jokes";
            path = path.Replace("{format}", "json");
            
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;

             if (keywords != null) queryParams.Add("keywords", ApiClient.ParameterToString(keywords)); // query parameter
 if (includeTags != null) queryParams.Add("include-tags", ApiClient.ParameterToString(includeTags)); // query parameter
 if (excludeTags != null) queryParams.Add("exclude-tags", ApiClient.ParameterToString(excludeTags)); // query parameter
 if (minRating != null) queryParams.Add("min-rating", ApiClient.ParameterToString(minRating)); // query parameter
 if (maxLength != null) queryParams.Add("max-length", ApiClient.ParameterToString(maxLength)); // query parameter
 if (offset != null) queryParams.Add("offset", ApiClient.ParameterToString(offset)); // query parameter
 if (number != null) queryParams.Add("number", ApiClient.ParameterToString(number)); // query parameter
                                    
            // authentication setting, if any
            String[] authSettings = new String[] { "apiKey", "headerApiKey" };

            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);

            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling SearchJokes: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling SearchJokes: " + response.ErrorMessage, response.ErrorMessage);

            return (InlineResponse2004) ApiClient.Deserialize(response.Content, typeof(InlineResponse2004), response.Headers);
        }

        /// <summary>
        /// Search Memes With over 200,000 memes, you&#39;ll surely find something funny. You can even search for text within memes and filter by user ratings.
        /// </summary>
        /// <param name="keywords">A comma-separated list of words that must occur in the meme.</param>
        /// <param name="keywordsInImage">Whether the keywords must occur in the image.</param>
        /// <param name="mediaType">The media type (either &#39;image&#39;, &#39;video&#39; or even specific format such as &#39;jpg&#39;, &#39;png&#39;, or &#39;gif&#39;).</param>
        /// <param name="minRating">The minimum rating in range [0.0,1.0] of the meme.</param>
        /// <param name="maxAgeDays">The maximum age of the meme in days.</param>
        /// <param name="offset">The number of memes to skip, between 0 and 1000.</param>
        /// <param name="number">The number of memes, between 0 and 10.</param>
        /// <returns>InlineResponse2005</returns>
        public InlineResponse2005 SearchMemes (string keywords, bool? keywordsInImage, string mediaType, double? minRating, int? maxAgeDays, int? offset, int? number)
        {
            

            var path = "/search-memes";
            path = path.Replace("{format}", "json");
            
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;

             if (keywords != null) queryParams.Add("keywords", ApiClient.ParameterToString(keywords)); // query parameter
 if (keywordsInImage != null) queryParams.Add("keywords-in-image", ApiClient.ParameterToString(keywordsInImage)); // query parameter
 if (mediaType != null) queryParams.Add("media-type", ApiClient.ParameterToString(mediaType)); // query parameter
 if (minRating != null) queryParams.Add("min-rating", ApiClient.ParameterToString(minRating)); // query parameter
 if (maxAgeDays != null) queryParams.Add("max-age-days", ApiClient.ParameterToString(maxAgeDays)); // query parameter
 if (offset != null) queryParams.Add("offset", ApiClient.ParameterToString(offset)); // query parameter
 if (number != null) queryParams.Add("number", ApiClient.ParameterToString(number)); // query parameter
                                    
            // authentication setting, if any
            String[] authSettings = new String[] { "apiKey", "headerApiKey" };

            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);

            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling SearchMemes: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling SearchMemes: " + response.ErrorMessage, response.ErrorMessage);

            return (InlineResponse2005) ApiClient.Deserialize(response.Content, typeof(InlineResponse2005), response.Headers);
        }

    }
}
