/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.6.4
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

import com.apileague.client.model.ExtractNewsAPI200Response;
import com.apileague.client.model.SearchNewsAPI200Response;
import com.apileague.client.model.TopNewsAPI200Response;

import org.apache.http.HttpEntity;
import org.apache.http.entity.mime.MultipartEntityBuilder;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeoutException;

public class NewsApi {
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
  * Extract News API
  * Extract a news article from a website to a well structure JSON object. The API will return the title, text, URL, image, publish date, author, language, source country, and sentiment of the news article.
   * @param url The url of the news.
   * @param analyze Whether to analyze the news (extract entities etc.)
   * @return ExtractNewsAPI200Response
  */
  public ExtractNewsAPI200Response extractNewsAPI (String url, Boolean analyze) throws TimeoutException, ExecutionException, InterruptedException, ApiException {
    Object postBody = null;
    // verify the required parameter 'url' is set
    if (url == null) {
      VolleyError error = new VolleyError("Missing the required parameter 'url' when calling extractNewsAPI",
        new ApiException(400, "Missing the required parameter 'url' when calling extractNewsAPI"));
    }
    // verify the required parameter 'analyze' is set
    if (analyze == null) {
      VolleyError error = new VolleyError("Missing the required parameter 'analyze' when calling extractNewsAPI",
        new ApiException(400, "Missing the required parameter 'analyze' when calling extractNewsAPI"));
    }

    // create path and map variables
    String path = "/extract-news";

    // query params
    List<Pair> queryParams = new ArrayList<Pair>();
    // header params
    Map<String, String> headerParams = new HashMap<String, String>();
    // form params
    Map<String, String> formParams = new HashMap<String, String>();
    queryParams.addAll(ApiInvoker.parameterToPairs("", "url", url));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "analyze", analyze));
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
         return (ExtractNewsAPI200Response) ApiInvoker.deserialize(localVarResponse, "", ExtractNewsAPI200Response.class);
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
   * Extract News API
   * Extract a news article from a website to a well structure JSON object. The API will return the title, text, URL, image, publish date, author, language, source country, and sentiment of the news article.
   * @param url The url of the news.   * @param analyze Whether to analyze the news (extract entities etc.)
  */
  public void extractNewsAPI (String url, Boolean analyze, final Response.Listener<ExtractNewsAPI200Response> responseListener, final Response.ErrorListener errorListener) {
    Object postBody = null;

    // verify the required parameter 'url' is set
    if (url == null) {
      VolleyError error = new VolleyError("Missing the required parameter 'url' when calling extractNewsAPI",
        new ApiException(400, "Missing the required parameter 'url' when calling extractNewsAPI"));
    }
    // verify the required parameter 'analyze' is set
    if (analyze == null) {
      VolleyError error = new VolleyError("Missing the required parameter 'analyze' when calling extractNewsAPI",
        new ApiException(400, "Missing the required parameter 'analyze' when calling extractNewsAPI"));
    }

    // create path and map variables
    String path = "/extract-news".replaceAll("\\{format\\}","json");

    // query params
    List<Pair> queryParams = new ArrayList<Pair>();
    // header params
    Map<String, String> headerParams = new HashMap<String, String>();
    // form params
    Map<String, String> formParams = new HashMap<String, String>();

    queryParams.addAll(ApiInvoker.parameterToPairs("", "url", url));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "analyze", analyze));


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
              responseListener.onResponse((ExtractNewsAPI200Response) ApiInvoker.deserialize(localVarResponse,  "", ExtractNewsAPI200Response.class));
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
  * Search News API
  * Search and filter millions of news from over 200 countries in 90 languages by text, date, location, category, language, and more. The API returns a list of news articles matching the given criteria. You can set as many filtering parameters as you like, but you have to set at least one, e.g. text or language.
   * @param text The text to match in the news content (at least 3 characters, maximum 100 characters). By default all query terms are expected, you can use an uppercase OR to search for any terms, e.g. tesla OR ford. You can also exclude terms by putting a minus sign (-) in front of the term, e.g. tesla -ford.
   * @param sourceCountries A comma-separated list of ISO 3166 country codes from which the news should originate.
   * @param language The ISO 6391 language code of the news.
   * @param minSentiment The minimal sentiment of the news in range [-1,1].
   * @param maxSentiment The maximal sentiment of the news in range [-1,1].
   * @param earliestPublishDate The news must have been published after this date.
   * @param latestPublishDate The news must have been published before this date.
   * @param newsSources A comma-separated list of news sources from which the news should originate.
   * @param authors A comma-separated list of author names. Only news from any of the given authors will be returned.
   * @param categories A comma-separated list of categories. Only news from any of the given categories will be returned. Possible categories are politics, sports, business, technology, entertainment, health, science, lifestyle, travel, culture, education, environment, other.
   * @param entities Filter news by entities (ORG, PER, or LOC).
   * @param locationFilter Filter news by radius around a certain location. Format is \&quot;latitude,longitude,radius in kilometers\&quot;
   * @param sort The sorting criteria (publish-time).
   * @param sortDirection Whether to sort ascending or descending (ASC or DESC).
   * @param offset The number of news to skip in range [0,10000]
   * @param number The number of news to return in range [1,100]
   * @return SearchNewsAPI200Response
  */
  public SearchNewsAPI200Response searchNewsAPI (String text, String sourceCountries, String language, Double minSentiment, Double maxSentiment, String earliestPublishDate, String latestPublishDate, String newsSources, String authors, String categories, String entities, String locationFilter, String sort, String sortDirection, Integer offset, Integer number) throws TimeoutException, ExecutionException, InterruptedException, ApiException {
    Object postBody = null;

    // create path and map variables
    String path = "/search-news";

    // query params
    List<Pair> queryParams = new ArrayList<Pair>();
    // header params
    Map<String, String> headerParams = new HashMap<String, String>();
    // form params
    Map<String, String> formParams = new HashMap<String, String>();
    queryParams.addAll(ApiInvoker.parameterToPairs("", "text", text));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "source-countries", sourceCountries));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "language", language));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "min-sentiment", minSentiment));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "max-sentiment", maxSentiment));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "earliest-publish-date", earliestPublishDate));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "latest-publish-date", latestPublishDate));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "news-sources", newsSources));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "authors", authors));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "categories", categories));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "entities", entities));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "location-filter", locationFilter));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "sort", sort));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "sort-direction", sortDirection));
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
         return (SearchNewsAPI200Response) ApiInvoker.deserialize(localVarResponse, "", SearchNewsAPI200Response.class);
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
   * Search News API
   * Search and filter millions of news from over 200 countries in 90 languages by text, date, location, category, language, and more. The API returns a list of news articles matching the given criteria. You can set as many filtering parameters as you like, but you have to set at least one, e.g. text or language.
   * @param text The text to match in the news content (at least 3 characters, maximum 100 characters). By default all query terms are expected, you can use an uppercase OR to search for any terms, e.g. tesla OR ford. You can also exclude terms by putting a minus sign (-) in front of the term, e.g. tesla -ford.   * @param sourceCountries A comma-separated list of ISO 3166 country codes from which the news should originate.   * @param language The ISO 6391 language code of the news.   * @param minSentiment The minimal sentiment of the news in range [-1,1].   * @param maxSentiment The maximal sentiment of the news in range [-1,1].   * @param earliestPublishDate The news must have been published after this date.   * @param latestPublishDate The news must have been published before this date.   * @param newsSources A comma-separated list of news sources from which the news should originate.   * @param authors A comma-separated list of author names. Only news from any of the given authors will be returned.   * @param categories A comma-separated list of categories. Only news from any of the given categories will be returned. Possible categories are politics, sports, business, technology, entertainment, health, science, lifestyle, travel, culture, education, environment, other.   * @param entities Filter news by entities (ORG, PER, or LOC).   * @param locationFilter Filter news by radius around a certain location. Format is \&quot;latitude,longitude,radius in kilometers\&quot;   * @param sort The sorting criteria (publish-time).   * @param sortDirection Whether to sort ascending or descending (ASC or DESC).   * @param offset The number of news to skip in range [0,10000]   * @param number The number of news to return in range [1,100]
  */
  public void searchNewsAPI (String text, String sourceCountries, String language, Double minSentiment, Double maxSentiment, String earliestPublishDate, String latestPublishDate, String newsSources, String authors, String categories, String entities, String locationFilter, String sort, String sortDirection, Integer offset, Integer number, final Response.Listener<SearchNewsAPI200Response> responseListener, final Response.ErrorListener errorListener) {
    Object postBody = null;


    // create path and map variables
    String path = "/search-news".replaceAll("\\{format\\}","json");

    // query params
    List<Pair> queryParams = new ArrayList<Pair>();
    // header params
    Map<String, String> headerParams = new HashMap<String, String>();
    // form params
    Map<String, String> formParams = new HashMap<String, String>();

    queryParams.addAll(ApiInvoker.parameterToPairs("", "text", text));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "source-countries", sourceCountries));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "language", language));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "min-sentiment", minSentiment));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "max-sentiment", maxSentiment));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "earliest-publish-date", earliestPublishDate));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "latest-publish-date", latestPublishDate));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "news-sources", newsSources));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "authors", authors));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "categories", categories));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "entities", entities));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "location-filter", locationFilter));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "sort", sort));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "sort-direction", sortDirection));
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
              responseListener.onResponse((SearchNewsAPI200Response) ApiInvoker.deserialize(localVarResponse,  "", SearchNewsAPI200Response.class));
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
  * Top News API
  * Get the top news from a country (over 220 are supported) in a language (over 90 are supported) for a specific date. The top news are clustered from multiple sources in the given country. The more news in a cluster the higher the cluster is ranked.
   * @param sourceCountry The ISO 3166 country code of the country for which top news should be retrieved.
   * @param language The ISO 6391 language code of the top news. The language must be one spoken in the source-country.
   * @param date The date for which the top news should be retrieved. If no date is given, the current day is assumed.
   * @param headlinesOnly Whether to only return basic information such as id, title, and url of the news.
   * @return TopNewsAPI200Response
  */
  public TopNewsAPI200Response topNewsAPI (String sourceCountry, String language, String date, Boolean headlinesOnly) throws TimeoutException, ExecutionException, InterruptedException, ApiException {
    Object postBody = null;
    // verify the required parameter 'sourceCountry' is set
    if (sourceCountry == null) {
      VolleyError error = new VolleyError("Missing the required parameter 'sourceCountry' when calling topNewsAPI",
        new ApiException(400, "Missing the required parameter 'sourceCountry' when calling topNewsAPI"));
    }
    // verify the required parameter 'language' is set
    if (language == null) {
      VolleyError error = new VolleyError("Missing the required parameter 'language' when calling topNewsAPI",
        new ApiException(400, "Missing the required parameter 'language' when calling topNewsAPI"));
    }

    // create path and map variables
    String path = "/retrieve-top-news";

    // query params
    List<Pair> queryParams = new ArrayList<Pair>();
    // header params
    Map<String, String> headerParams = new HashMap<String, String>();
    // form params
    Map<String, String> formParams = new HashMap<String, String>();
    queryParams.addAll(ApiInvoker.parameterToPairs("", "source-country", sourceCountry));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "language", language));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "date", date));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "headlines-only", headlinesOnly));
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
         return (TopNewsAPI200Response) ApiInvoker.deserialize(localVarResponse, "", TopNewsAPI200Response.class);
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
   * Top News API
   * Get the top news from a country (over 220 are supported) in a language (over 90 are supported) for a specific date. The top news are clustered from multiple sources in the given country. The more news in a cluster the higher the cluster is ranked.
   * @param sourceCountry The ISO 3166 country code of the country for which top news should be retrieved.   * @param language The ISO 6391 language code of the top news. The language must be one spoken in the source-country.   * @param date The date for which the top news should be retrieved. If no date is given, the current day is assumed.   * @param headlinesOnly Whether to only return basic information such as id, title, and url of the news.
  */
  public void topNewsAPI (String sourceCountry, String language, String date, Boolean headlinesOnly, final Response.Listener<TopNewsAPI200Response> responseListener, final Response.ErrorListener errorListener) {
    Object postBody = null;

    // verify the required parameter 'sourceCountry' is set
    if (sourceCountry == null) {
      VolleyError error = new VolleyError("Missing the required parameter 'sourceCountry' when calling topNewsAPI",
        new ApiException(400, "Missing the required parameter 'sourceCountry' when calling topNewsAPI"));
    }
    // verify the required parameter 'language' is set
    if (language == null) {
      VolleyError error = new VolleyError("Missing the required parameter 'language' when calling topNewsAPI",
        new ApiException(400, "Missing the required parameter 'language' when calling topNewsAPI"));
    }

    // create path and map variables
    String path = "/retrieve-top-news".replaceAll("\\{format\\}","json");

    // query params
    List<Pair> queryParams = new ArrayList<Pair>();
    // header params
    Map<String, String> headerParams = new HashMap<String, String>();
    // form params
    Map<String, String> formParams = new HashMap<String, String>();

    queryParams.addAll(ApiInvoker.parameterToPairs("", "source-country", sourceCountry));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "language", language));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "date", date));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "headlines-only", headlinesOnly));


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
              responseListener.onResponse((TopNewsAPI200Response) ApiInvoker.deserialize(localVarResponse,  "", TopNewsAPI200Response.class));
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
