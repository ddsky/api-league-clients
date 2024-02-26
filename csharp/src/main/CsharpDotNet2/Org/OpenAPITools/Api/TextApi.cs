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
    public interface ITextApi
    {
        /// <summary>
        /// Correct Spelling The API corrects spelling mistakes in a given text. It returns the corrected text or the original text if nothing was corrected. This API supports text in the following languages: English (en), French (fr), German (de), Italian (it), and Spanish (es).
        /// </summary>
        /// <param name="text">The text to be corrected.</param>
        /// <param name="language">The language of the text, one of en, de, es, fr, or it.</param>
        /// <returns>InlineResponse20016</returns>
        InlineResponse20016 CorrectSpelling (string text, string language);
        /// <summary>
        /// Detect Language Detect the language of the given text. The API returns a list of languages and their confidence scores. The confidence score is a value between 0 and 1, where 1 means the language was detected with 100% confidence. The API supports text in 22 languages.
        /// </summary>
        /// <param name="text">The text for which the language should be detected.</param>
        /// <returns>List&lt;InlineResponse20017&gt;</returns>
        List<InlineResponse20017> DetectLanguage (string text);
        /// <summary>
        /// Detect Sentiment Detect the sentiment (positive or negative) of a given text. The entire document is scored and also each individual sentence.
        /// </summary>
        /// <param name="text">The text for which the sentiment should be detected.</param>
        /// <returns>InlineResponse20018</returns>
        InlineResponse20018 DetectSentiment (string text);
        /// <summary>
        /// Extract Dates Extract dates from a given text. The API will return a list of dates with their positions in the text and the normalized form of the date. A large list of date formats is supported. For example, the text could contain dates in the form of \&quot;April 5th, 2035\&quot;, \&quot;04/05/2035\&quot;, or \&quot;05.04.2035\&quot;. The normalized date is the date in the form of a timestamp (milliseconds since 1970).
        /// </summary>
        /// <param name="text">The text from which dates should be extracted.</param>
        /// <returns>InlineResponse20021</returns>
        InlineResponse20021 ExtractDates (string text);
        /// <summary>
        /// Extract Entities Extract entities from a text. An entity is a word or a group of words that represent a concept. For example, the word \&quot;Canada\&quot; represents the concept of a country. The word \&quot;Jim Carrey\&quot; represents the concept of a person. The word \&quot;Tesla\&quot; represents the concept of a company. The API will return a list of entities found in the text. The entities are classified into different types such as person, location, organization, etc.
        /// </summary>
        /// <param name="text">The text from which entities should be extracted.</param>
        /// <returns>InlineResponse20027</returns>
        InlineResponse20027 ExtractEntities (string text);
        /// <summary>
        /// List Word Synonyms Return synonyms of a word.
        /// </summary>
        /// <param name="word">The (noun) word for which a list of synonyms should be returned.</param>
        /// <returns>InlineResponse20022</returns>
        InlineResponse20022 ListWordSynonyms (string word);
        /// <summary>
        /// Part of Speech Tagging Part of speech tagging is the process of marking up a word in a text as corresponding to a particular part of speech, based on both its definition and its context. This is a simple API that takes a text and returns the tagged text.
        /// </summary>
        /// <param name="text">The text to tag the part of speech.</param>
        /// <returns>InlineResponse20023</returns>
        InlineResponse20023 PartOfSpeechTagging (string text);
        /// <summary>
        /// Pluralize Word Find the plural form of a word.
        /// </summary>
        /// <param name="word">The (noun) word for which the plural form should be found.</param>
        /// <returns>InlineResponse20026</returns>
        InlineResponse20026 PluralizeWord (string word);
        /// <summary>
        /// Score Readability Score the readability of a text. The readability score is based on the average length of the sentences and the average length of the words in the text. The text is score with multiple readability scores such as Flesch, Smog, ARI, LIX, Kincaid, Fog, and Coleman Liau.
        /// </summary>
        /// <param name="text">The text to score for readability.</param>
        /// <returns>InlineResponse20020</returns>
        InlineResponse20020 ScoreReadability (string text);
        /// <summary>
        /// Score Text Score the readability, skimmability, interestingness, and style of a text. The readability score is based on the average length of the sentences and the average length of the words in the text. The text is scored with multiple readability scores such as Flesch, Smog, ARI, LIX, Kincaid, Fog, and Coleman Liau. Additionally, information such as the estimated reading time in seconds is returned.
        /// </summary>
        /// <param name="title">The title of the text to score.</param>
        /// <param name="text">The text to score for multiple metrics.</param>
        /// <returns>InlineResponse20019</returns>
        InlineResponse20019 ScoreText (string title, string text);
        /// <summary>
        /// Singularize Word Find the singular form of a word.
        /// </summary>
        /// <param name="word">The (noun) word for which the singular form should be found.</param>
        /// <returns>InlineResponse20025</returns>
        InlineResponse20025 SingularizeWord (string word);
        /// <summary>
        /// Text Stemming The Text Stemming API is used to get the root form of a word. It is useful for searching and natural language processing.
        /// </summary>
        /// <param name="text">The text to be stemmed.</param>
        /// <returns>InlineResponse20024</returns>
        InlineResponse20024 TextStemming (string text);
    }

    /// <summary>
    /// Represents a collection of functions to interact with the API endpoints
    /// </summary>
    public class TextApi : ITextApi
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="TextApi"/> class.
        /// </summary>
        /// <param name="apiClient"> an instance of ApiClient (optional)</param>
        /// <returns></returns>
        public TextApi(ApiClient apiClient = null)
        {
            if (apiClient == null) // use the default one in Configuration
                this.ApiClient = Configuration.DefaultApiClient;
            else
                this.ApiClient = apiClient;
        }

        /// <summary>
        /// Initializes a new instance of the <see cref="TextApi"/> class.
        /// </summary>
        /// <returns></returns>
        public TextApi(String basePath)
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
        /// Correct Spelling The API corrects spelling mistakes in a given text. It returns the corrected text or the original text if nothing was corrected. This API supports text in the following languages: English (en), French (fr), German (de), Italian (it), and Spanish (es).
        /// </summary>
        /// <param name="text">The text to be corrected.</param>
        /// <param name="language">The language of the text, one of en, de, es, fr, or it.</param>
        /// <returns>InlineResponse20016</returns>
        public InlineResponse20016 CorrectSpelling (string text, string language)
        {
            
            // verify the required parameter 'text' is set
            if (text == null) throw new ApiException(400, "Missing required parameter 'text' when calling CorrectSpelling");
            
            // verify the required parameter 'language' is set
            if (language == null) throw new ApiException(400, "Missing required parameter 'language' when calling CorrectSpelling");
            

            var path = "/correct-spelling";
            path = path.Replace("{format}", "json");
            
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;

             if (text != null) queryParams.Add("text", ApiClient.ParameterToString(text)); // query parameter
 if (language != null) queryParams.Add("language", ApiClient.ParameterToString(language)); // query parameter
                                    
            // authentication setting, if any
            String[] authSettings = new String[] { "apiKey", "headerApiKey" };

            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);

            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling CorrectSpelling: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling CorrectSpelling: " + response.ErrorMessage, response.ErrorMessage);

            return (InlineResponse20016) ApiClient.Deserialize(response.Content, typeof(InlineResponse20016), response.Headers);
        }

        /// <summary>
        /// Detect Language Detect the language of the given text. The API returns a list of languages and their confidence scores. The confidence score is a value between 0 and 1, where 1 means the language was detected with 100% confidence. The API supports text in 22 languages.
        /// </summary>
        /// <param name="text">The text for which the language should be detected.</param>
        /// <returns>List&lt;InlineResponse20017&gt;</returns>
        public List<InlineResponse20017> DetectLanguage (string text)
        {
            
            // verify the required parameter 'text' is set
            if (text == null) throw new ApiException(400, "Missing required parameter 'text' when calling DetectLanguage");
            

            var path = "/detect-language";
            path = path.Replace("{format}", "json");
            
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;

             if (text != null) queryParams.Add("text", ApiClient.ParameterToString(text)); // query parameter
                                    
            // authentication setting, if any
            String[] authSettings = new String[] { "apiKey", "headerApiKey" };

            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);

            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling DetectLanguage: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling DetectLanguage: " + response.ErrorMessage, response.ErrorMessage);

            return (List<InlineResponse20017>) ApiClient.Deserialize(response.Content, typeof(List<InlineResponse20017>), response.Headers);
        }

        /// <summary>
        /// Detect Sentiment Detect the sentiment (positive or negative) of a given text. The entire document is scored and also each individual sentence.
        /// </summary>
        /// <param name="text">The text for which the sentiment should be detected.</param>
        /// <returns>InlineResponse20018</returns>
        public InlineResponse20018 DetectSentiment (string text)
        {
            
            // verify the required parameter 'text' is set
            if (text == null) throw new ApiException(400, "Missing required parameter 'text' when calling DetectSentiment");
            

            var path = "/detect-sentiment";
            path = path.Replace("{format}", "json");
            
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;

             if (text != null) queryParams.Add("text", ApiClient.ParameterToString(text)); // query parameter
                                    
            // authentication setting, if any
            String[] authSettings = new String[] { "apiKey", "headerApiKey" };

            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);

            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling DetectSentiment: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling DetectSentiment: " + response.ErrorMessage, response.ErrorMessage);

            return (InlineResponse20018) ApiClient.Deserialize(response.Content, typeof(InlineResponse20018), response.Headers);
        }

        /// <summary>
        /// Extract Dates Extract dates from a given text. The API will return a list of dates with their positions in the text and the normalized form of the date. A large list of date formats is supported. For example, the text could contain dates in the form of \&quot;April 5th, 2035\&quot;, \&quot;04/05/2035\&quot;, or \&quot;05.04.2035\&quot;. The normalized date is the date in the form of a timestamp (milliseconds since 1970).
        /// </summary>
        /// <param name="text">The text from which dates should be extracted.</param>
        /// <returns>InlineResponse20021</returns>
        public InlineResponse20021 ExtractDates (string text)
        {
            
            // verify the required parameter 'text' is set
            if (text == null) throw new ApiException(400, "Missing required parameter 'text' when calling ExtractDates");
            

            var path = "/extract-dates";
            path = path.Replace("{format}", "json");
            
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;

             if (text != null) queryParams.Add("text", ApiClient.ParameterToString(text)); // query parameter
                                    
            // authentication setting, if any
            String[] authSettings = new String[] { "apiKey", "headerApiKey" };

            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);

            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling ExtractDates: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling ExtractDates: " + response.ErrorMessage, response.ErrorMessage);

            return (InlineResponse20021) ApiClient.Deserialize(response.Content, typeof(InlineResponse20021), response.Headers);
        }

        /// <summary>
        /// Extract Entities Extract entities from a text. An entity is a word or a group of words that represent a concept. For example, the word \&quot;Canada\&quot; represents the concept of a country. The word \&quot;Jim Carrey\&quot; represents the concept of a person. The word \&quot;Tesla\&quot; represents the concept of a company. The API will return a list of entities found in the text. The entities are classified into different types such as person, location, organization, etc.
        /// </summary>
        /// <param name="text">The text from which entities should be extracted.</param>
        /// <returns>InlineResponse20027</returns>
        public InlineResponse20027 ExtractEntities (string text)
        {
            
            // verify the required parameter 'text' is set
            if (text == null) throw new ApiException(400, "Missing required parameter 'text' when calling ExtractEntities");
            

            var path = "/extract-entities";
            path = path.Replace("{format}", "json");
            
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;

             if (text != null) queryParams.Add("text", ApiClient.ParameterToString(text)); // query parameter
                                    
            // authentication setting, if any
            String[] authSettings = new String[] { "apiKey", "headerApiKey" };

            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);

            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling ExtractEntities: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling ExtractEntities: " + response.ErrorMessage, response.ErrorMessage);

            return (InlineResponse20027) ApiClient.Deserialize(response.Content, typeof(InlineResponse20027), response.Headers);
        }

        /// <summary>
        /// List Word Synonyms Return synonyms of a word.
        /// </summary>
        /// <param name="word">The (noun) word for which a list of synonyms should be returned.</param>
        /// <returns>InlineResponse20022</returns>
        public InlineResponse20022 ListWordSynonyms (string word)
        {
            
            // verify the required parameter 'word' is set
            if (word == null) throw new ApiException(400, "Missing required parameter 'word' when calling ListWordSynonyms");
            

            var path = "/list-synonyms";
            path = path.Replace("{format}", "json");
            
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;

             if (word != null) queryParams.Add("word", ApiClient.ParameterToString(word)); // query parameter
                                    
            // authentication setting, if any
            String[] authSettings = new String[] { "apiKey", "headerApiKey" };

            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);

            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling ListWordSynonyms: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling ListWordSynonyms: " + response.ErrorMessage, response.ErrorMessage);

            return (InlineResponse20022) ApiClient.Deserialize(response.Content, typeof(InlineResponse20022), response.Headers);
        }

        /// <summary>
        /// Part of Speech Tagging Part of speech tagging is the process of marking up a word in a text as corresponding to a particular part of speech, based on both its definition and its context. This is a simple API that takes a text and returns the tagged text.
        /// </summary>
        /// <param name="text">The text to tag the part of speech.</param>
        /// <returns>InlineResponse20023</returns>
        public InlineResponse20023 PartOfSpeechTagging (string text)
        {
            
            // verify the required parameter 'text' is set
            if (text == null) throw new ApiException(400, "Missing required parameter 'text' when calling PartOfSpeechTagging");
            

            var path = "/tag-pos";
            path = path.Replace("{format}", "json");
            
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;

             if (text != null) queryParams.Add("text", ApiClient.ParameterToString(text)); // query parameter
                                    
            // authentication setting, if any
            String[] authSettings = new String[] { "apiKey", "headerApiKey" };

            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);

            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling PartOfSpeechTagging: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling PartOfSpeechTagging: " + response.ErrorMessage, response.ErrorMessage);

            return (InlineResponse20023) ApiClient.Deserialize(response.Content, typeof(InlineResponse20023), response.Headers);
        }

        /// <summary>
        /// Pluralize Word Find the plural form of a word.
        /// </summary>
        /// <param name="word">The (noun) word for which the plural form should be found.</param>
        /// <returns>InlineResponse20026</returns>
        public InlineResponse20026 PluralizeWord (string word)
        {
            
            // verify the required parameter 'word' is set
            if (word == null) throw new ApiException(400, "Missing required parameter 'word' when calling PluralizeWord");
            

            var path = "/pluralize-word";
            path = path.Replace("{format}", "json");
            
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;

             if (word != null) queryParams.Add("word", ApiClient.ParameterToString(word)); // query parameter
                                    
            // authentication setting, if any
            String[] authSettings = new String[] { "apiKey", "headerApiKey" };

            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);

            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling PluralizeWord: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling PluralizeWord: " + response.ErrorMessage, response.ErrorMessage);

            return (InlineResponse20026) ApiClient.Deserialize(response.Content, typeof(InlineResponse20026), response.Headers);
        }

        /// <summary>
        /// Score Readability Score the readability of a text. The readability score is based on the average length of the sentences and the average length of the words in the text. The text is score with multiple readability scores such as Flesch, Smog, ARI, LIX, Kincaid, Fog, and Coleman Liau.
        /// </summary>
        /// <param name="text">The text to score for readability.</param>
        /// <returns>InlineResponse20020</returns>
        public InlineResponse20020 ScoreReadability (string text)
        {
            
            // verify the required parameter 'text' is set
            if (text == null) throw new ApiException(400, "Missing required parameter 'text' when calling ScoreReadability");
            

            var path = "/score-readability";
            path = path.Replace("{format}", "json");
            
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;

             if (text != null) queryParams.Add("text", ApiClient.ParameterToString(text)); // query parameter
                                    
            // authentication setting, if any
            String[] authSettings = new String[] { "apiKey", "headerApiKey" };

            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);

            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling ScoreReadability: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling ScoreReadability: " + response.ErrorMessage, response.ErrorMessage);

            return (InlineResponse20020) ApiClient.Deserialize(response.Content, typeof(InlineResponse20020), response.Headers);
        }

        /// <summary>
        /// Score Text Score the readability, skimmability, interestingness, and style of a text. The readability score is based on the average length of the sentences and the average length of the words in the text. The text is scored with multiple readability scores such as Flesch, Smog, ARI, LIX, Kincaid, Fog, and Coleman Liau. Additionally, information such as the estimated reading time in seconds is returned.
        /// </summary>
        /// <param name="title">The title of the text to score.</param>
        /// <param name="text">The text to score for multiple metrics.</param>
        /// <returns>InlineResponse20019</returns>
        public InlineResponse20019 ScoreText (string title, string text)
        {
            
            // verify the required parameter 'title' is set
            if (title == null) throw new ApiException(400, "Missing required parameter 'title' when calling ScoreText");
            
            // verify the required parameter 'text' is set
            if (text == null) throw new ApiException(400, "Missing required parameter 'text' when calling ScoreText");
            

            var path = "/score-text";
            path = path.Replace("{format}", "json");
            
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;

             if (title != null) queryParams.Add("title", ApiClient.ParameterToString(title)); // query parameter
 if (text != null) queryParams.Add("text", ApiClient.ParameterToString(text)); // query parameter
                                    
            // authentication setting, if any
            String[] authSettings = new String[] { "apiKey", "headerApiKey" };

            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);

            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling ScoreText: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling ScoreText: " + response.ErrorMessage, response.ErrorMessage);

            return (InlineResponse20019) ApiClient.Deserialize(response.Content, typeof(InlineResponse20019), response.Headers);
        }

        /// <summary>
        /// Singularize Word Find the singular form of a word.
        /// </summary>
        /// <param name="word">The (noun) word for which the singular form should be found.</param>
        /// <returns>InlineResponse20025</returns>
        public InlineResponse20025 SingularizeWord (string word)
        {
            
            // verify the required parameter 'word' is set
            if (word == null) throw new ApiException(400, "Missing required parameter 'word' when calling SingularizeWord");
            

            var path = "/singularize-word";
            path = path.Replace("{format}", "json");
            
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;

             if (word != null) queryParams.Add("word", ApiClient.ParameterToString(word)); // query parameter
                                    
            // authentication setting, if any
            String[] authSettings = new String[] { "apiKey", "headerApiKey" };

            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);

            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling SingularizeWord: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling SingularizeWord: " + response.ErrorMessage, response.ErrorMessage);

            return (InlineResponse20025) ApiClient.Deserialize(response.Content, typeof(InlineResponse20025), response.Headers);
        }

        /// <summary>
        /// Text Stemming The Text Stemming API is used to get the root form of a word. It is useful for searching and natural language processing.
        /// </summary>
        /// <param name="text">The text to be stemmed.</param>
        /// <returns>InlineResponse20024</returns>
        public InlineResponse20024 TextStemming (string text)
        {
            
            // verify the required parameter 'text' is set
            if (text == null) throw new ApiException(400, "Missing required parameter 'text' when calling TextStemming");
            

            var path = "/stem-text";
            path = path.Replace("{format}", "json");
            
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;

             if (text != null) queryParams.Add("text", ApiClient.ParameterToString(text)); // query parameter
                                    
            // authentication setting, if any
            String[] authSettings = new String[] { "apiKey", "headerApiKey" };

            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);

            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling TextStemming: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling TextStemming: " + response.ErrorMessage, response.ErrorMessage);

            return (InlineResponse20024) ApiClient.Deserialize(response.Content, typeof(InlineResponse20024), response.Headers);
        }

    }
}
