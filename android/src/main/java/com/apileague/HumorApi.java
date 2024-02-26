/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.0
 * Contact: mail@apileague.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

package com.apileague;

import com.apileague.client.ApiInvoker;
import com.apileague.client.ApiException;
import com.apileague.client.Pair;

import com.apileague.client.model.*;

import java.util.*;

import com.android.volley.Response;
import com.android.volley.VolleyError;

import com.apileague.client.model.InlineResponse2004;
import com.apileague.client.model.InlineResponse2004Jokes;
import com.apileague.client.model.InlineResponse2005;
import com.apileague.client.model.InlineResponse2006;
import com.apileague.client.model.InlineResponse2007;
import com.apileague.client.model.InlineResponse2008;

import org.apache.http.HttpEntity;
import org.apache.http.entity.mime.MultipartEntityBuilder;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeoutException;

public class HumorApi {
  String basePath = "https://api.apileague.com";
  ApiInvoker apiInvoker = ApiInvoker.getInstance();

  public void addHeader(String key, String value) {
    getInvoker().addDefaultHeader(key, value);
  }

  public ApiInvoker getInvoker() {
    return apiInvoker;
  }

  public void setBasePath(String basePath) {
    this.basePath = basePath;
  }

  public String getBasePath() {
    return basePath;
  }

  /**
  * Generate Nonsense Word
  * Generate a funny sounding nonsense word. This is useful for generating random words for games, naming things, or just for fun. The response will contain the generated word and a rating of how funny it is.
   * @return InlineResponse2008
  */
  public InlineResponse2008 generateNonsenseWord () throws TimeoutException, ExecutionException, InterruptedException, ApiException {
    Object postBody = null;

    // create path and map variables
    String path = "/generate-nonsense-word";

    // query params
    List<Pair> queryParams = new ArrayList<Pair>();
    // header params
    Map<String, String> headerParams = new HashMap<String, String>();
    // form params
    Map<String, String> formParams = new HashMap<String, String>();
    String[] contentTypes = {
    };
    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

    if (contentType.startsWith("multipart/form-data")) {
      // file uploading
      MultipartEntityBuilder localVarBuilder = MultipartEntityBuilder.create();
      HttpEntity httpEntity = localVarBuilder.build();
      postBody = httpEntity;
    } else {
      // normal form params
    }

    String[] authNames = new String[] { "apiKey", "headerApiKey" };

    try {
      String localVarResponse = apiInvoker.invokeAPI (basePath, path, "GET", queryParams, postBody, headerParams, formParams, contentType, authNames);
      if (localVarResponse != null) {
         return (InlineResponse2008) ApiInvoker.deserialize(localVarResponse, "", InlineResponse2008.class);
      } else {
         return null;
      }
    } catch (ApiException ex) {
       throw ex;
    } catch (InterruptedException ex) {
       throw ex;
    } catch (ExecutionException ex) {
      if (ex.getCause() instanceof VolleyError) {
        VolleyError volleyError = (VolleyError)ex.getCause();
        if (volleyError.networkResponse != null) {
          throw new ApiException(volleyError.networkResponse.statusCode, volleyError.getMessage());
        }
      }
      throw ex;
    } catch (TimeoutException ex) {
      throw ex;
    }
  }

      /**
   * Generate Nonsense Word
   * Generate a funny sounding nonsense word. This is useful for generating random words for games, naming things, or just for fun. The response will contain the generated word and a rating of how funny it is.

  */
  public void generateNonsenseWord (final Response.Listener<InlineResponse2008> responseListener, final Response.ErrorListener errorListener) {
    Object postBody = null;


    // create path and map variables
    String path = "/generate-nonsense-word".replaceAll("\\{format\\}","json");

    // query params
    List<Pair> queryParams = new ArrayList<Pair>();
    // header params
    Map<String, String> headerParams = new HashMap<String, String>();
    // form params
    Map<String, String> formParams = new HashMap<String, String>();



    String[] contentTypes = {
      
    };
    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

    if (contentType.startsWith("multipart/form-data")) {
      // file uploading
      MultipartEntityBuilder localVarBuilder = MultipartEntityBuilder.create();
      

      HttpEntity httpEntity = localVarBuilder.build();
      postBody = httpEntity;
    } else {
      // normal form params
          }

    String[] authNames = new String[] { "apiKey", "headerApiKey" };

    try {
      apiInvoker.invokeAPI(basePath, path, "GET", queryParams, postBody, headerParams, formParams, contentType, authNames,
        new Response.Listener<String>() {
          @Override
          public void onResponse(String localVarResponse) {
            try {
              responseListener.onResponse((InlineResponse2008) ApiInvoker.deserialize(localVarResponse,  "", InlineResponse2008.class));
            } catch (ApiException exception) {
               errorListener.onErrorResponse(new VolleyError(exception));
            }
          }
      }, new Response.ErrorListener() {
          @Override
          public void onErrorResponse(VolleyError error) {
            errorListener.onErrorResponse(error);
          }
      });
    } catch (ApiException ex) {
      errorListener.onErrorResponse(new VolleyError(ex));
    }
  }
  /**
  * Random Joke
  * This is a simple API that returns a random joke. You can filter the jokes by tags and keywords. To make sure they are safe for work, you could use the exclude-tags parameter to exclude jokes with certain tags such as \&quot;nsfw\&quot; or \&quot;religious\&quot;.
   * @param includeTags A comma-separated list of tags the jokes should have.
   * @param excludeTags A comma-separated list of tags the jokes must not have.
   * @param minRating The minimum rating in range [0.0,1.0] of the jokes.
   * @param maxLength The maximum length of the joke in letters.
   * @return InlineResponse2004Jokes
  */
  public InlineResponse2004Jokes randomJoke (String includeTags, String excludeTags, Double minRating, Integer maxLength) throws TimeoutException, ExecutionException, InterruptedException, ApiException {
    Object postBody = null;

    // create path and map variables
    String path = "/retrieve-random-joke";

    // query params
    List<Pair> queryParams = new ArrayList<Pair>();
    // header params
    Map<String, String> headerParams = new HashMap<String, String>();
    // form params
    Map<String, String> formParams = new HashMap<String, String>();
    queryParams.addAll(ApiInvoker.parameterToPairs("", "include-tags", includeTags));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "exclude-tags", excludeTags));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "min-rating", minRating));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "max-length", maxLength));
    String[] contentTypes = {
    };
    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

    if (contentType.startsWith("multipart/form-data")) {
      // file uploading
      MultipartEntityBuilder localVarBuilder = MultipartEntityBuilder.create();
      HttpEntity httpEntity = localVarBuilder.build();
      postBody = httpEntity;
    } else {
      // normal form params
    }

    String[] authNames = new String[] { "apiKey", "headerApiKey" };

    try {
      String localVarResponse = apiInvoker.invokeAPI (basePath, path, "GET", queryParams, postBody, headerParams, formParams, contentType, authNames);
      if (localVarResponse != null) {
         return (InlineResponse2004Jokes) ApiInvoker.deserialize(localVarResponse, "", InlineResponse2004Jokes.class);
      } else {
         return null;
      }
    } catch (ApiException ex) {
       throw ex;
    } catch (InterruptedException ex) {
       throw ex;
    } catch (ExecutionException ex) {
      if (ex.getCause() instanceof VolleyError) {
        VolleyError volleyError = (VolleyError)ex.getCause();
        if (volleyError.networkResponse != null) {
          throw new ApiException(volleyError.networkResponse.statusCode, volleyError.getMessage());
        }
      }
      throw ex;
    } catch (TimeoutException ex) {
      throw ex;
    }
  }

      /**
   * Random Joke
   * This is a simple API that returns a random joke. You can filter the jokes by tags and keywords. To make sure they are safe for work, you could use the exclude-tags parameter to exclude jokes with certain tags such as \&quot;nsfw\&quot; or \&quot;religious\&quot;.
   * @param includeTags A comma-separated list of tags the jokes should have.   * @param excludeTags A comma-separated list of tags the jokes must not have.   * @param minRating The minimum rating in range [0.0,1.0] of the jokes.   * @param maxLength The maximum length of the joke in letters.
  */
  public void randomJoke (String includeTags, String excludeTags, Double minRating, Integer maxLength, final Response.Listener<InlineResponse2004Jokes> responseListener, final Response.ErrorListener errorListener) {
    Object postBody = null;


    // create path and map variables
    String path = "/retrieve-random-joke".replaceAll("\\{format\\}","json");

    // query params
    List<Pair> queryParams = new ArrayList<Pair>();
    // header params
    Map<String, String> headerParams = new HashMap<String, String>();
    // form params
    Map<String, String> formParams = new HashMap<String, String>();

    queryParams.addAll(ApiInvoker.parameterToPairs("", "include-tags", includeTags));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "exclude-tags", excludeTags));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "min-rating", minRating));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "max-length", maxLength));


    String[] contentTypes = {
      
    };
    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

    if (contentType.startsWith("multipart/form-data")) {
      // file uploading
      MultipartEntityBuilder localVarBuilder = MultipartEntityBuilder.create();
      

      HttpEntity httpEntity = localVarBuilder.build();
      postBody = httpEntity;
    } else {
      // normal form params
          }

    String[] authNames = new String[] { "apiKey", "headerApiKey" };

    try {
      apiInvoker.invokeAPI(basePath, path, "GET", queryParams, postBody, headerParams, formParams, contentType, authNames,
        new Response.Listener<String>() {
          @Override
          public void onResponse(String localVarResponse) {
            try {
              responseListener.onResponse((InlineResponse2004Jokes) ApiInvoker.deserialize(localVarResponse,  "", InlineResponse2004Jokes.class));
            } catch (ApiException exception) {
               errorListener.onErrorResponse(new VolleyError(exception));
            }
          }
      }, new Response.ErrorListener() {
          @Override
          public void onErrorResponse(VolleyError error) {
            errorListener.onErrorResponse(error);
          }
      });
    } catch (ApiException ex) {
      errorListener.onErrorResponse(new VolleyError(ex));
    }
  }
  /**
  * Random Meme
  * Get a random meme out of over 200,000+ memes. To get the latest memes, you can use the max-age-days parameter.
   * @param keywords A comma-separated list of words that must occur in the meme.
   * @param keywordsInImage Whether the keywords must occur in the image.
   * @param mediaType The media type (either &#39;image&#39;, &#39;video&#39; or even specific format such as &#39;jpg&#39;, &#39;png&#39;, or &#39;gif&#39;).
   * @param minRating The minimum rating in range [0.0-1.0] of the meme.
   * @param maxAgeDays The maximum age of the meme in days.
   * @return InlineResponse2006
  */
  public InlineResponse2006 randomMeme (String keywords, Boolean keywordsInImage, String mediaType, Double minRating, Integer maxAgeDays) throws TimeoutException, ExecutionException, InterruptedException, ApiException {
    Object postBody = null;

    // create path and map variables
    String path = "/retrieve-random-meme";

    // query params
    List<Pair> queryParams = new ArrayList<Pair>();
    // header params
    Map<String, String> headerParams = new HashMap<String, String>();
    // form params
    Map<String, String> formParams = new HashMap<String, String>();
    queryParams.addAll(ApiInvoker.parameterToPairs("", "keywords", keywords));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "keywords-in-image", keywordsInImage));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "media-type", mediaType));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "min-rating", minRating));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "max-age-days", maxAgeDays));
    String[] contentTypes = {
    };
    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

    if (contentType.startsWith("multipart/form-data")) {
      // file uploading
      MultipartEntityBuilder localVarBuilder = MultipartEntityBuilder.create();
      HttpEntity httpEntity = localVarBuilder.build();
      postBody = httpEntity;
    } else {
      // normal form params
    }

    String[] authNames = new String[] { "apiKey", "headerApiKey" };

    try {
      String localVarResponse = apiInvoker.invokeAPI (basePath, path, "GET", queryParams, postBody, headerParams, formParams, contentType, authNames);
      if (localVarResponse != null) {
         return (InlineResponse2006) ApiInvoker.deserialize(localVarResponse, "", InlineResponse2006.class);
      } else {
         return null;
      }
    } catch (ApiException ex) {
       throw ex;
    } catch (InterruptedException ex) {
       throw ex;
    } catch (ExecutionException ex) {
      if (ex.getCause() instanceof VolleyError) {
        VolleyError volleyError = (VolleyError)ex.getCause();
        if (volleyError.networkResponse != null) {
          throw new ApiException(volleyError.networkResponse.statusCode, volleyError.getMessage());
        }
      }
      throw ex;
    } catch (TimeoutException ex) {
      throw ex;
    }
  }

      /**
   * Random Meme
   * Get a random meme out of over 200,000+ memes. To get the latest memes, you can use the max-age-days parameter.
   * @param keywords A comma-separated list of words that must occur in the meme.   * @param keywordsInImage Whether the keywords must occur in the image.   * @param mediaType The media type (either &#39;image&#39;, &#39;video&#39; or even specific format such as &#39;jpg&#39;, &#39;png&#39;, or &#39;gif&#39;).   * @param minRating The minimum rating in range [0.0-1.0] of the meme.   * @param maxAgeDays The maximum age of the meme in days.
  */
  public void randomMeme (String keywords, Boolean keywordsInImage, String mediaType, Double minRating, Integer maxAgeDays, final Response.Listener<InlineResponse2006> responseListener, final Response.ErrorListener errorListener) {
    Object postBody = null;


    // create path and map variables
    String path = "/retrieve-random-meme".replaceAll("\\{format\\}","json");

    // query params
    List<Pair> queryParams = new ArrayList<Pair>();
    // header params
    Map<String, String> headerParams = new HashMap<String, String>();
    // form params
    Map<String, String> formParams = new HashMap<String, String>();

    queryParams.addAll(ApiInvoker.parameterToPairs("", "keywords", keywords));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "keywords-in-image", keywordsInImage));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "media-type", mediaType));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "min-rating", minRating));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "max-age-days", maxAgeDays));


    String[] contentTypes = {
      
    };
    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

    if (contentType.startsWith("multipart/form-data")) {
      // file uploading
      MultipartEntityBuilder localVarBuilder = MultipartEntityBuilder.create();
      

      HttpEntity httpEntity = localVarBuilder.build();
      postBody = httpEntity;
    } else {
      // normal form params
          }

    String[] authNames = new String[] { "apiKey", "headerApiKey" };

    try {
      apiInvoker.invokeAPI(basePath, path, "GET", queryParams, postBody, headerParams, formParams, contentType, authNames,
        new Response.Listener<String>() {
          @Override
          public void onResponse(String localVarResponse) {
            try {
              responseListener.onResponse((InlineResponse2006) ApiInvoker.deserialize(localVarResponse,  "", InlineResponse2006.class));
            } catch (ApiException exception) {
               errorListener.onErrorResponse(new VolleyError(exception));
            }
          }
      }, new Response.ErrorListener() {
          @Override
          public void onErrorResponse(VolleyError error) {
            errorListener.onErrorResponse(error);
          }
      });
    } catch (ApiException ex) {
      errorListener.onErrorResponse(new VolleyError(ex));
    }
  }
  /**
  * Search Gifs
  * Search through hundreds of thousands of gifs to match any reaction you want. The gifs are returned in a list with the URL, width, and height of the gif.
   * @param query The search query.
   * @param number The number of gifs to return in range [1,10]
   * @return InlineResponse2007
  */
  public InlineResponse2007 searchGifs (String query, Integer number) throws TimeoutException, ExecutionException, InterruptedException, ApiException {
    Object postBody = null;
    // verify the required parameter 'query' is set
    if (query == null) {
      VolleyError error = new VolleyError("Missing the required parameter 'query' when calling searchGifs",
        new ApiException(400, "Missing the required parameter 'query' when calling searchGifs"));
    }

    // create path and map variables
    String path = "/search-gifs";

    // query params
    List<Pair> queryParams = new ArrayList<Pair>();
    // header params
    Map<String, String> headerParams = new HashMap<String, String>();
    // form params
    Map<String, String> formParams = new HashMap<String, String>();
    queryParams.addAll(ApiInvoker.parameterToPairs("", "query", query));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "number", number));
    String[] contentTypes = {
    };
    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

    if (contentType.startsWith("multipart/form-data")) {
      // file uploading
      MultipartEntityBuilder localVarBuilder = MultipartEntityBuilder.create();
      HttpEntity httpEntity = localVarBuilder.build();
      postBody = httpEntity;
    } else {
      // normal form params
    }

    String[] authNames = new String[] { "apiKey", "headerApiKey" };

    try {
      String localVarResponse = apiInvoker.invokeAPI (basePath, path, "GET", queryParams, postBody, headerParams, formParams, contentType, authNames);
      if (localVarResponse != null) {
         return (InlineResponse2007) ApiInvoker.deserialize(localVarResponse, "", InlineResponse2007.class);
      } else {
         return null;
      }
    } catch (ApiException ex) {
       throw ex;
    } catch (InterruptedException ex) {
       throw ex;
    } catch (ExecutionException ex) {
      if (ex.getCause() instanceof VolleyError) {
        VolleyError volleyError = (VolleyError)ex.getCause();
        if (volleyError.networkResponse != null) {
          throw new ApiException(volleyError.networkResponse.statusCode, volleyError.getMessage());
        }
      }
      throw ex;
    } catch (TimeoutException ex) {
      throw ex;
    }
  }

      /**
   * Search Gifs
   * Search through hundreds of thousands of gifs to match any reaction you want. The gifs are returned in a list with the URL, width, and height of the gif.
   * @param query The search query.   * @param number The number of gifs to return in range [1,10]
  */
  public void searchGifs (String query, Integer number, final Response.Listener<InlineResponse2007> responseListener, final Response.ErrorListener errorListener) {
    Object postBody = null;

    // verify the required parameter 'query' is set
    if (query == null) {
      VolleyError error = new VolleyError("Missing the required parameter 'query' when calling searchGifs",
        new ApiException(400, "Missing the required parameter 'query' when calling searchGifs"));
    }

    // create path and map variables
    String path = "/search-gifs".replaceAll("\\{format\\}","json");

    // query params
    List<Pair> queryParams = new ArrayList<Pair>();
    // header params
    Map<String, String> headerParams = new HashMap<String, String>();
    // form params
    Map<String, String> formParams = new HashMap<String, String>();

    queryParams.addAll(ApiInvoker.parameterToPairs("", "query", query));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "number", number));


    String[] contentTypes = {
      
    };
    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

    if (contentType.startsWith("multipart/form-data")) {
      // file uploading
      MultipartEntityBuilder localVarBuilder = MultipartEntityBuilder.create();
      

      HttpEntity httpEntity = localVarBuilder.build();
      postBody = httpEntity;
    } else {
      // normal form params
          }

    String[] authNames = new String[] { "apiKey", "headerApiKey" };

    try {
      apiInvoker.invokeAPI(basePath, path, "GET", queryParams, postBody, headerParams, formParams, contentType, authNames,
        new Response.Listener<String>() {
          @Override
          public void onResponse(String localVarResponse) {
            try {
              responseListener.onResponse((InlineResponse2007) ApiInvoker.deserialize(localVarResponse,  "", InlineResponse2007.class));
            } catch (ApiException exception) {
               errorListener.onErrorResponse(new VolleyError(exception));
            }
          }
      }, new Response.ErrorListener() {
          @Override
          public void onErrorResponse(VolleyError error) {
            errorListener.onErrorResponse(error);
          }
      });
    } catch (ApiException ex) {
      errorListener.onErrorResponse(new VolleyError(ex));
    }
  }
  /**
  * Search Jokes
  * With over 50,000 jokes, you should find something for any occasion. There are 27 categories/tags to choose from, but you can also search for very specific words within jokes.
   * @param keywords A comma-separated list of words that must occur in the joke.
   * @param includeTags A comma-separated list of tags the jokes should have.
   * @param excludeTags A comma-separated list of tags the jokes must not have.
   * @param minRating The minimum rating (0-10) of the jokes.
   * @param maxLength The maximum length of the joke in letters.
   * @param offset The number of jokes to skip, between 0 and 1000.
   * @param number The number of jokes, between 1 and 10.
   * @return InlineResponse2004
  */
  public InlineResponse2004 searchJokes (String keywords, String includeTags, String excludeTags, Double minRating, Double maxLength, Integer offset, Integer number) throws TimeoutException, ExecutionException, InterruptedException, ApiException {
    Object postBody = null;

    // create path and map variables
    String path = "/search-jokes";

    // query params
    List<Pair> queryParams = new ArrayList<Pair>();
    // header params
    Map<String, String> headerParams = new HashMap<String, String>();
    // form params
    Map<String, String> formParams = new HashMap<String, String>();
    queryParams.addAll(ApiInvoker.parameterToPairs("", "keywords", keywords));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "include-tags", includeTags));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "exclude-tags", excludeTags));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "min-rating", minRating));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "max-length", maxLength));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "offset", offset));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "number", number));
    String[] contentTypes = {
    };
    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

    if (contentType.startsWith("multipart/form-data")) {
      // file uploading
      MultipartEntityBuilder localVarBuilder = MultipartEntityBuilder.create();
      HttpEntity httpEntity = localVarBuilder.build();
      postBody = httpEntity;
    } else {
      // normal form params
    }

    String[] authNames = new String[] { "apiKey", "headerApiKey" };

    try {
      String localVarResponse = apiInvoker.invokeAPI (basePath, path, "GET", queryParams, postBody, headerParams, formParams, contentType, authNames);
      if (localVarResponse != null) {
         return (InlineResponse2004) ApiInvoker.deserialize(localVarResponse, "", InlineResponse2004.class);
      } else {
         return null;
      }
    } catch (ApiException ex) {
       throw ex;
    } catch (InterruptedException ex) {
       throw ex;
    } catch (ExecutionException ex) {
      if (ex.getCause() instanceof VolleyError) {
        VolleyError volleyError = (VolleyError)ex.getCause();
        if (volleyError.networkResponse != null) {
          throw new ApiException(volleyError.networkResponse.statusCode, volleyError.getMessage());
        }
      }
      throw ex;
    } catch (TimeoutException ex) {
      throw ex;
    }
  }

      /**
   * Search Jokes
   * With over 50,000 jokes, you should find something for any occasion. There are 27 categories/tags to choose from, but you can also search for very specific words within jokes.
   * @param keywords A comma-separated list of words that must occur in the joke.   * @param includeTags A comma-separated list of tags the jokes should have.   * @param excludeTags A comma-separated list of tags the jokes must not have.   * @param minRating The minimum rating (0-10) of the jokes.   * @param maxLength The maximum length of the joke in letters.   * @param offset The number of jokes to skip, between 0 and 1000.   * @param number The number of jokes, between 1 and 10.
  */
  public void searchJokes (String keywords, String includeTags, String excludeTags, Double minRating, Double maxLength, Integer offset, Integer number, final Response.Listener<InlineResponse2004> responseListener, final Response.ErrorListener errorListener) {
    Object postBody = null;


    // create path and map variables
    String path = "/search-jokes".replaceAll("\\{format\\}","json");

    // query params
    List<Pair> queryParams = new ArrayList<Pair>();
    // header params
    Map<String, String> headerParams = new HashMap<String, String>();
    // form params
    Map<String, String> formParams = new HashMap<String, String>();

    queryParams.addAll(ApiInvoker.parameterToPairs("", "keywords", keywords));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "include-tags", includeTags));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "exclude-tags", excludeTags));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "min-rating", minRating));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "max-length", maxLength));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "offset", offset));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "number", number));


    String[] contentTypes = {
      
    };
    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

    if (contentType.startsWith("multipart/form-data")) {
      // file uploading
      MultipartEntityBuilder localVarBuilder = MultipartEntityBuilder.create();
      

      HttpEntity httpEntity = localVarBuilder.build();
      postBody = httpEntity;
    } else {
      // normal form params
          }

    String[] authNames = new String[] { "apiKey", "headerApiKey" };

    try {
      apiInvoker.invokeAPI(basePath, path, "GET", queryParams, postBody, headerParams, formParams, contentType, authNames,
        new Response.Listener<String>() {
          @Override
          public void onResponse(String localVarResponse) {
            try {
              responseListener.onResponse((InlineResponse2004) ApiInvoker.deserialize(localVarResponse,  "", InlineResponse2004.class));
            } catch (ApiException exception) {
               errorListener.onErrorResponse(new VolleyError(exception));
            }
          }
      }, new Response.ErrorListener() {
          @Override
          public void onErrorResponse(VolleyError error) {
            errorListener.onErrorResponse(error);
          }
      });
    } catch (ApiException ex) {
      errorListener.onErrorResponse(new VolleyError(ex));
    }
  }
  /**
  * Search Memes
  * With over 200,000 memes, you&#39;ll surely find something funny. You can even search for text within memes and filter by user ratings.
   * @param keywords A comma-separated list of words that must occur in the meme.
   * @param keywordsInImage Whether the keywords must occur in the image.
   * @param mediaType The media type (either &#39;image&#39;, &#39;video&#39; or even specific format such as &#39;jpg&#39;, &#39;png&#39;, or &#39;gif&#39;).
   * @param minRating The minimum rating in range [0.0,1.0] of the meme.
   * @param maxAgeDays The maximum age of the meme in days.
   * @param offset The number of memes to skip, between 0 and 1000.
   * @param number The number of memes, between 0 and 10.
   * @return InlineResponse2005
  */
  public InlineResponse2005 searchMemes (String keywords, Boolean keywordsInImage, String mediaType, Double minRating, Integer maxAgeDays, Integer offset, Integer number) throws TimeoutException, ExecutionException, InterruptedException, ApiException {
    Object postBody = null;

    // create path and map variables
    String path = "/search-memes";

    // query params
    List<Pair> queryParams = new ArrayList<Pair>();
    // header params
    Map<String, String> headerParams = new HashMap<String, String>();
    // form params
    Map<String, String> formParams = new HashMap<String, String>();
    queryParams.addAll(ApiInvoker.parameterToPairs("", "keywords", keywords));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "keywords-in-image", keywordsInImage));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "media-type", mediaType));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "min-rating", minRating));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "max-age-days", maxAgeDays));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "offset", offset));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "number", number));
    String[] contentTypes = {
    };
    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

    if (contentType.startsWith("multipart/form-data")) {
      // file uploading
      MultipartEntityBuilder localVarBuilder = MultipartEntityBuilder.create();
      HttpEntity httpEntity = localVarBuilder.build();
      postBody = httpEntity;
    } else {
      // normal form params
    }

    String[] authNames = new String[] { "apiKey", "headerApiKey" };

    try {
      String localVarResponse = apiInvoker.invokeAPI (basePath, path, "GET", queryParams, postBody, headerParams, formParams, contentType, authNames);
      if (localVarResponse != null) {
         return (InlineResponse2005) ApiInvoker.deserialize(localVarResponse, "", InlineResponse2005.class);
      } else {
         return null;
      }
    } catch (ApiException ex) {
       throw ex;
    } catch (InterruptedException ex) {
       throw ex;
    } catch (ExecutionException ex) {
      if (ex.getCause() instanceof VolleyError) {
        VolleyError volleyError = (VolleyError)ex.getCause();
        if (volleyError.networkResponse != null) {
          throw new ApiException(volleyError.networkResponse.statusCode, volleyError.getMessage());
        }
      }
      throw ex;
    } catch (TimeoutException ex) {
      throw ex;
    }
  }

      /**
   * Search Memes
   * With over 200,000 memes, you&#39;ll surely find something funny. You can even search for text within memes and filter by user ratings.
   * @param keywords A comma-separated list of words that must occur in the meme.   * @param keywordsInImage Whether the keywords must occur in the image.   * @param mediaType The media type (either &#39;image&#39;, &#39;video&#39; or even specific format such as &#39;jpg&#39;, &#39;png&#39;, or &#39;gif&#39;).   * @param minRating The minimum rating in range [0.0,1.0] of the meme.   * @param maxAgeDays The maximum age of the meme in days.   * @param offset The number of memes to skip, between 0 and 1000.   * @param number The number of memes, between 0 and 10.
  */
  public void searchMemes (String keywords, Boolean keywordsInImage, String mediaType, Double minRating, Integer maxAgeDays, Integer offset, Integer number, final Response.Listener<InlineResponse2005> responseListener, final Response.ErrorListener errorListener) {
    Object postBody = null;


    // create path and map variables
    String path = "/search-memes".replaceAll("\\{format\\}","json");

    // query params
    List<Pair> queryParams = new ArrayList<Pair>();
    // header params
    Map<String, String> headerParams = new HashMap<String, String>();
    // form params
    Map<String, String> formParams = new HashMap<String, String>();

    queryParams.addAll(ApiInvoker.parameterToPairs("", "keywords", keywords));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "keywords-in-image", keywordsInImage));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "media-type", mediaType));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "min-rating", minRating));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "max-age-days", maxAgeDays));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "offset", offset));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "number", number));


    String[] contentTypes = {
      
    };
    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

    if (contentType.startsWith("multipart/form-data")) {
      // file uploading
      MultipartEntityBuilder localVarBuilder = MultipartEntityBuilder.create();
      

      HttpEntity httpEntity = localVarBuilder.build();
      postBody = httpEntity;
    } else {
      // normal form params
          }

    String[] authNames = new String[] { "apiKey", "headerApiKey" };

    try {
      apiInvoker.invokeAPI(basePath, path, "GET", queryParams, postBody, headerParams, formParams, contentType, authNames,
        new Response.Listener<String>() {
          @Override
          public void onResponse(String localVarResponse) {
            try {
              responseListener.onResponse((InlineResponse2005) ApiInvoker.deserialize(localVarResponse,  "", InlineResponse2005.class));
            } catch (ApiException exception) {
               errorListener.onErrorResponse(new VolleyError(exception));
            }
          }
      }, new Response.ErrorListener() {
          @Override
          public void onErrorResponse(VolleyError error) {
            errorListener.onErrorResponse(error);
          }
      });
    } catch (ApiException ex) {
      errorListener.onErrorResponse(new VolleyError(ex));
    }
  }
}
