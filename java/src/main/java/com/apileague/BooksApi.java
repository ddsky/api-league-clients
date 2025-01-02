/*
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

import com.apileague.client.ApiCallback;
import com.apileague.client.ApiClient;
import com.apileague.client.ApiException;
import com.apileague.client.ApiResponse;
import com.apileague.client.Configuration;
import com.apileague.client.Pair;
import com.apileague.client.ProgressRequestBody;
import com.apileague.client.ProgressResponseBody;

import com.google.gson.reflect.TypeToken;

import java.io.IOException;


import com.apileague.client.model.FindSimilarBooksAPI200Response;
import com.apileague.client.model.SearchBooksAPI200Response;

import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class BooksApi {
    private ApiClient localVarApiClient;
    private int localHostIndex;
    private String localCustomBaseUrl;

    public BooksApi() {
        this(Configuration.getDefaultApiClient());
    }

    public BooksApi(ApiClient apiClient) {
        this.localVarApiClient = apiClient;
    }

    public ApiClient getApiClient() {
        return localVarApiClient;
    }

    public void setApiClient(ApiClient apiClient) {
        this.localVarApiClient = apiClient;
    }

    public int getHostIndex() {
        return localHostIndex;
    }

    public void setHostIndex(int hostIndex) {
        this.localHostIndex = hostIndex;
    }

    public String getCustomBaseUrl() {
        return localCustomBaseUrl;
    }

    public void setCustomBaseUrl(String customBaseUrl) {
        this.localCustomBaseUrl = customBaseUrl;
    }

    /**
     * Build call for findSimilarBooksAPI
     * @param id The id of the book to which similar books should be found. (required)
     * @param number The number of similar books to return in range [1,100] (optional)
     * @param _callback Callback for upload/download progress
     * @return Call to execute
     * @throws ApiException If fail to serialize the request body object
     * @http.response.details
     <table summary="Response Details" border="1">
        <tr><td> Status Code </td><td> Description </td><td> Response Headers </td></tr>
        <tr><td> 200 </td><td> Success </td><td>  -  </td></tr>
        <tr><td> 401 </td><td> Unauthorized </td><td>  -  </td></tr>
        <tr><td> 402 </td><td> Payment Required </td><td>  -  </td></tr>
        <tr><td> 403 </td><td> Forbidden </td><td>  -  </td></tr>
        <tr><td> 404 </td><td> Not Found </td><td>  -  </td></tr>
        <tr><td> 406 </td><td> Not Acceptable </td><td>  -  </td></tr>
        <tr><td> 429 </td><td> Too Many Requests </td><td>  -  </td></tr>
     </table>
     * Read entire docs
     * @see <a href="https://apileague.com/apis/find-similar-books-api/">Find Similar Books API Documentation</a>
     */
    public okhttp3.Call findSimilarBooksAPICall(Integer id, Integer number, final ApiCallback _callback) throws ApiException {
        String basePath = null;
        // Operation Servers
        String[] localBasePaths = new String[] {  };

        // Determine Base Path to Use
        if (localCustomBaseUrl != null){
            basePath = localCustomBaseUrl;
        } else if ( localBasePaths.length > 0 ) {
            basePath = localBasePaths[localHostIndex];
        } else {
            basePath = null;
        }

        Object localVarPostBody = null;

        // create path and map variables
        String localVarPath = "/list-similar-books";

        List<Pair> localVarQueryParams = new ArrayList<Pair>();
        List<Pair> localVarCollectionQueryParams = new ArrayList<Pair>();
        Map<String, String> localVarHeaderParams = new HashMap<String, String>();
        Map<String, String> localVarCookieParams = new HashMap<String, String>();
        Map<String, Object> localVarFormParams = new HashMap<String, Object>();

        if (id != null) {
            localVarQueryParams.addAll(localVarApiClient.parameterToPair("id", id));
        }

        if (number != null) {
            localVarQueryParams.addAll(localVarApiClient.parameterToPair("number", number));
        }

        final String[] localVarAccepts = {
            "application/json"
        };
        final String localVarAccept = localVarApiClient.selectHeaderAccept(localVarAccepts);
        if (localVarAccept != null) {
            localVarHeaderParams.put("Accept", localVarAccept);
        }

        final String[] localVarContentTypes = {
        };
        final String localVarContentType = localVarApiClient.selectHeaderContentType(localVarContentTypes);
        if (localVarContentType != null) {
            localVarHeaderParams.put("Content-Type", localVarContentType);
        }

        String[] localVarAuthNames = new String[] { "apiKey", "headerApiKey" };
        return localVarApiClient.buildCall(basePath, localVarPath, "GET", localVarQueryParams, localVarCollectionQueryParams, localVarPostBody, localVarHeaderParams, localVarCookieParams, localVarFormParams, localVarAuthNames, _callback);
    }

    @SuppressWarnings("rawtypes")
    private okhttp3.Call findSimilarBooksAPIValidateBeforeCall(Integer id, Integer number, final ApiCallback _callback) throws ApiException {
        // verify the required parameter 'id' is set
        if (id == null) {
            throw new ApiException("Missing the required parameter 'id' when calling findSimilarBooksAPI(Async)");
        }

        return findSimilarBooksAPICall(id, number, _callback);

    }

    /**
     * Find Similar Books API
     * Find books that are similar to the given book (based on a set of over 4 million books). This is useful for recommending books to users based on their reading history or preferences. The response will contain a list of similar books with their title, id, and cover image.
     * @param id The id of the book to which similar books should be found. (required)
     * @param number The number of similar books to return in range [1,100] (optional)
     * @return FindSimilarBooksAPI200Response
     * @throws ApiException If fail to call the API, e.g. server error or cannot deserialize the response body
     * @http.response.details
     <table summary="Response Details" border="1">
        <tr><td> Status Code </td><td> Description </td><td> Response Headers </td></tr>
        <tr><td> 200 </td><td> Success </td><td>  -  </td></tr>
        <tr><td> 401 </td><td> Unauthorized </td><td>  -  </td></tr>
        <tr><td> 402 </td><td> Payment Required </td><td>  -  </td></tr>
        <tr><td> 403 </td><td> Forbidden </td><td>  -  </td></tr>
        <tr><td> 404 </td><td> Not Found </td><td>  -  </td></tr>
        <tr><td> 406 </td><td> Not Acceptable </td><td>  -  </td></tr>
        <tr><td> 429 </td><td> Too Many Requests </td><td>  -  </td></tr>
     </table>
     * Read entire docs
     * @see <a href="https://apileague.com/apis/find-similar-books-api/">Find Similar Books API Documentation</a>
     */
    public FindSimilarBooksAPI200Response findSimilarBooksAPI(Integer id, Integer number) throws ApiException {
        ApiResponse<FindSimilarBooksAPI200Response> localVarResp = findSimilarBooksAPIWithHttpInfo(id, number);
        return localVarResp.getData();
    }

    /**
     * Find Similar Books API
     * Find books that are similar to the given book (based on a set of over 4 million books). This is useful for recommending books to users based on their reading history or preferences. The response will contain a list of similar books with their title, id, and cover image.
     * @param id The id of the book to which similar books should be found. (required)
     * @param number The number of similar books to return in range [1,100] (optional)
     * @return ApiResponse&lt;FindSimilarBooksAPI200Response&gt;
     * @throws ApiException If fail to call the API, e.g. server error or cannot deserialize the response body
     * @http.response.details
     <table summary="Response Details" border="1">
        <tr><td> Status Code </td><td> Description </td><td> Response Headers </td></tr>
        <tr><td> 200 </td><td> Success </td><td>  -  </td></tr>
        <tr><td> 401 </td><td> Unauthorized </td><td>  -  </td></tr>
        <tr><td> 402 </td><td> Payment Required </td><td>  -  </td></tr>
        <tr><td> 403 </td><td> Forbidden </td><td>  -  </td></tr>
        <tr><td> 404 </td><td> Not Found </td><td>  -  </td></tr>
        <tr><td> 406 </td><td> Not Acceptable </td><td>  -  </td></tr>
        <tr><td> 429 </td><td> Too Many Requests </td><td>  -  </td></tr>
     </table>
     * Read entire docs
     * @see <a href="https://apileague.com/apis/find-similar-books-api/">Find Similar Books API Documentation</a>
     */
    public ApiResponse<FindSimilarBooksAPI200Response> findSimilarBooksAPIWithHttpInfo(Integer id, Integer number) throws ApiException {
        okhttp3.Call localVarCall = findSimilarBooksAPIValidateBeforeCall(id, number, null);
        Type localVarReturnType = new TypeToken<FindSimilarBooksAPI200Response>(){}.getType();
        return localVarApiClient.execute(localVarCall, localVarReturnType);
    }

    /**
     * Find Similar Books API (asynchronously)
     * Find books that are similar to the given book (based on a set of over 4 million books). This is useful for recommending books to users based on their reading history or preferences. The response will contain a list of similar books with their title, id, and cover image.
     * @param id The id of the book to which similar books should be found. (required)
     * @param number The number of similar books to return in range [1,100] (optional)
     * @param _callback The callback to be executed when the API call finishes
     * @return The request call
     * @throws ApiException If fail to process the API call, e.g. serializing the request body object
     * @http.response.details
     <table summary="Response Details" border="1">
        <tr><td> Status Code </td><td> Description </td><td> Response Headers </td></tr>
        <tr><td> 200 </td><td> Success </td><td>  -  </td></tr>
        <tr><td> 401 </td><td> Unauthorized </td><td>  -  </td></tr>
        <tr><td> 402 </td><td> Payment Required </td><td>  -  </td></tr>
        <tr><td> 403 </td><td> Forbidden </td><td>  -  </td></tr>
        <tr><td> 404 </td><td> Not Found </td><td>  -  </td></tr>
        <tr><td> 406 </td><td> Not Acceptable </td><td>  -  </td></tr>
        <tr><td> 429 </td><td> Too Many Requests </td><td>  -  </td></tr>
     </table>
     * Read entire docs
     * @see <a href="https://apileague.com/apis/find-similar-books-api/">Find Similar Books API Documentation</a>
     */
    public okhttp3.Call findSimilarBooksAPIAsync(Integer id, Integer number, final ApiCallback<FindSimilarBooksAPI200Response> _callback) throws ApiException {

        okhttp3.Call localVarCall = findSimilarBooksAPIValidateBeforeCall(id, number, _callback);
        Type localVarReturnType = new TypeToken<FindSimilarBooksAPI200Response>(){}.getType();
        localVarApiClient.executeAsync(localVarCall, localVarReturnType, _callback);
        return localVarCall;
    }
    /**
     * Build call for searchBooksAPI
     * @param query The search query. (optional)
     * @param earliestPublishYear The books must have been published after this year. (optional)
     * @param latestPublishYear The books must have been published before this year. (optional)
     * @param minRating The minimum rating the book must have gotten in the interval [0,1]. (optional)
     * @param maxRating The maximum rating the book must have gotten in the interval [0,1]. (optional)
     * @param genres A comma-separated list of genres. Only books from any of the given genres will be returned. (optional)
     * @param authors A comma-separated list of author ids or names. Only books from any of the given authors will be returned. You can retrieve author ids from the search authors endpoint. Pass author names is slower and if two authors have the same name you can&#39;t disambiguate. (optional)
     * @param isbn Only the book matching the ISBN-13 will be returned (optional)
     * @param oclc Only the book matching the OCLC will be returned (optional)
     * @param sort The sorting criteria (publish-date or rating). (optional)
     * @param sortDirection Whether to sort ascending or descending (ASC or DESC). (optional)
     * @param groupResults Whether to group similar editions of the same book. (optional)
     * @param offset The number of books to skip in range [0,1000] (optional)
     * @param number The number of books to return in range [1,100] (optional)
     * @param _callback Callback for upload/download progress
     * @return Call to execute
     * @throws ApiException If fail to serialize the request body object
     * @http.response.details
     <table summary="Response Details" border="1">
        <tr><td> Status Code </td><td> Description </td><td> Response Headers </td></tr>
        <tr><td> 200 </td><td> Success </td><td>  -  </td></tr>
        <tr><td> 401 </td><td> Unauthorized </td><td>  -  </td></tr>
        <tr><td> 402 </td><td> Payment Required </td><td>  -  </td></tr>
        <tr><td> 403 </td><td> Forbidden </td><td>  -  </td></tr>
        <tr><td> 404 </td><td> Not Found </td><td>  -  </td></tr>
        <tr><td> 406 </td><td> Not Acceptable </td><td>  -  </td></tr>
        <tr><td> 429 </td><td> Too Many Requests </td><td>  -  </td></tr>
     </table>
     * Read entire docs
     * @see <a href="https://apileague.com/apis/search-books-api/">Search Books API Documentation</a>
     */
    public okhttp3.Call searchBooksAPICall(String query, Integer earliestPublishYear, Integer latestPublishYear, Double minRating, Double maxRating, String genres, String authors, String isbn, String oclc, String sort, String sortDirection, Boolean groupResults, Integer offset, Integer number, final ApiCallback _callback) throws ApiException {
        String basePath = null;
        // Operation Servers
        String[] localBasePaths = new String[] {  };

        // Determine Base Path to Use
        if (localCustomBaseUrl != null){
            basePath = localCustomBaseUrl;
        } else if ( localBasePaths.length > 0 ) {
            basePath = localBasePaths[localHostIndex];
        } else {
            basePath = null;
        }

        Object localVarPostBody = null;

        // create path and map variables
        String localVarPath = "/search-books";

        List<Pair> localVarQueryParams = new ArrayList<Pair>();
        List<Pair> localVarCollectionQueryParams = new ArrayList<Pair>();
        Map<String, String> localVarHeaderParams = new HashMap<String, String>();
        Map<String, String> localVarCookieParams = new HashMap<String, String>();
        Map<String, Object> localVarFormParams = new HashMap<String, Object>();

        if (query != null) {
            localVarQueryParams.addAll(localVarApiClient.parameterToPair("query", query));
        }

        if (earliestPublishYear != null) {
            localVarQueryParams.addAll(localVarApiClient.parameterToPair("earliest-publish-year", earliestPublishYear));
        }

        if (latestPublishYear != null) {
            localVarQueryParams.addAll(localVarApiClient.parameterToPair("latest-publish-year", latestPublishYear));
        }

        if (minRating != null) {
            localVarQueryParams.addAll(localVarApiClient.parameterToPair("min-rating", minRating));
        }

        if (maxRating != null) {
            localVarQueryParams.addAll(localVarApiClient.parameterToPair("max-rating", maxRating));
        }

        if (genres != null) {
            localVarQueryParams.addAll(localVarApiClient.parameterToPair("genres", genres));
        }

        if (authors != null) {
            localVarQueryParams.addAll(localVarApiClient.parameterToPair("authors", authors));
        }

        if (isbn != null) {
            localVarQueryParams.addAll(localVarApiClient.parameterToPair("isbn", isbn));
        }

        if (oclc != null) {
            localVarQueryParams.addAll(localVarApiClient.parameterToPair("oclc", oclc));
        }

        if (sort != null) {
            localVarQueryParams.addAll(localVarApiClient.parameterToPair("sort", sort));
        }

        if (sortDirection != null) {
            localVarQueryParams.addAll(localVarApiClient.parameterToPair("sort-direction", sortDirection));
        }

        if (groupResults != null) {
            localVarQueryParams.addAll(localVarApiClient.parameterToPair("group-results", groupResults));
        }

        if (offset != null) {
            localVarQueryParams.addAll(localVarApiClient.parameterToPair("offset", offset));
        }

        if (number != null) {
            localVarQueryParams.addAll(localVarApiClient.parameterToPair("number", number));
        }

        final String[] localVarAccepts = {
            "application/json"
        };
        final String localVarAccept = localVarApiClient.selectHeaderAccept(localVarAccepts);
        if (localVarAccept != null) {
            localVarHeaderParams.put("Accept", localVarAccept);
        }

        final String[] localVarContentTypes = {
        };
        final String localVarContentType = localVarApiClient.selectHeaderContentType(localVarContentTypes);
        if (localVarContentType != null) {
            localVarHeaderParams.put("Content-Type", localVarContentType);
        }

        String[] localVarAuthNames = new String[] { "apiKey", "headerApiKey" };
        return localVarApiClient.buildCall(basePath, localVarPath, "GET", localVarQueryParams, localVarCollectionQueryParams, localVarPostBody, localVarHeaderParams, localVarCookieParams, localVarFormParams, localVarAuthNames, _callback);
    }

    @SuppressWarnings("rawtypes")
    private okhttp3.Call searchBooksAPIValidateBeforeCall(String query, Integer earliestPublishYear, Integer latestPublishYear, Double minRating, Double maxRating, String genres, String authors, String isbn, String oclc, String sort, String sortDirection, Boolean groupResults, Integer offset, Integer number, final ApiCallback _callback) throws ApiException {
        return searchBooksAPICall(query, earliestPublishYear, latestPublishYear, minRating, maxRating, genres, authors, isbn, oclc, sort, sortDirection, groupResults, offset, number, _callback);

    }

    /**
     * Search Books API
     * Search and filter over 4 million books based on matching a query, the ISBN, rating, and more fields. The query is semantically parsed using our own large ontology. That means you can search paranormal books and the ontology knows that Aliens, Werewolves, Ghosts, and Shapeshifters fall into that category.
     * @param query The search query. (optional)
     * @param earliestPublishYear The books must have been published after this year. (optional)
     * @param latestPublishYear The books must have been published before this year. (optional)
     * @param minRating The minimum rating the book must have gotten in the interval [0,1]. (optional)
     * @param maxRating The maximum rating the book must have gotten in the interval [0,1]. (optional)
     * @param genres A comma-separated list of genres. Only books from any of the given genres will be returned. (optional)
     * @param authors A comma-separated list of author ids or names. Only books from any of the given authors will be returned. You can retrieve author ids from the search authors endpoint. Pass author names is slower and if two authors have the same name you can&#39;t disambiguate. (optional)
     * @param isbn Only the book matching the ISBN-13 will be returned (optional)
     * @param oclc Only the book matching the OCLC will be returned (optional)
     * @param sort The sorting criteria (publish-date or rating). (optional)
     * @param sortDirection Whether to sort ascending or descending (ASC or DESC). (optional)
     * @param groupResults Whether to group similar editions of the same book. (optional)
     * @param offset The number of books to skip in range [0,1000] (optional)
     * @param number The number of books to return in range [1,100] (optional)
     * @return SearchBooksAPI200Response
     * @throws ApiException If fail to call the API, e.g. server error or cannot deserialize the response body
     * @http.response.details
     <table summary="Response Details" border="1">
        <tr><td> Status Code </td><td> Description </td><td> Response Headers </td></tr>
        <tr><td> 200 </td><td> Success </td><td>  -  </td></tr>
        <tr><td> 401 </td><td> Unauthorized </td><td>  -  </td></tr>
        <tr><td> 402 </td><td> Payment Required </td><td>  -  </td></tr>
        <tr><td> 403 </td><td> Forbidden </td><td>  -  </td></tr>
        <tr><td> 404 </td><td> Not Found </td><td>  -  </td></tr>
        <tr><td> 406 </td><td> Not Acceptable </td><td>  -  </td></tr>
        <tr><td> 429 </td><td> Too Many Requests </td><td>  -  </td></tr>
     </table>
     * Read entire docs
     * @see <a href="https://apileague.com/apis/search-books-api/">Search Books API Documentation</a>
     */
    public SearchBooksAPI200Response searchBooksAPI(String query, Integer earliestPublishYear, Integer latestPublishYear, Double minRating, Double maxRating, String genres, String authors, String isbn, String oclc, String sort, String sortDirection, Boolean groupResults, Integer offset, Integer number) throws ApiException {
        ApiResponse<SearchBooksAPI200Response> localVarResp = searchBooksAPIWithHttpInfo(query, earliestPublishYear, latestPublishYear, minRating, maxRating, genres, authors, isbn, oclc, sort, sortDirection, groupResults, offset, number);
        return localVarResp.getData();
    }

    /**
     * Search Books API
     * Search and filter over 4 million books based on matching a query, the ISBN, rating, and more fields. The query is semantically parsed using our own large ontology. That means you can search paranormal books and the ontology knows that Aliens, Werewolves, Ghosts, and Shapeshifters fall into that category.
     * @param query The search query. (optional)
     * @param earliestPublishYear The books must have been published after this year. (optional)
     * @param latestPublishYear The books must have been published before this year. (optional)
     * @param minRating The minimum rating the book must have gotten in the interval [0,1]. (optional)
     * @param maxRating The maximum rating the book must have gotten in the interval [0,1]. (optional)
     * @param genres A comma-separated list of genres. Only books from any of the given genres will be returned. (optional)
     * @param authors A comma-separated list of author ids or names. Only books from any of the given authors will be returned. You can retrieve author ids from the search authors endpoint. Pass author names is slower and if two authors have the same name you can&#39;t disambiguate. (optional)
     * @param isbn Only the book matching the ISBN-13 will be returned (optional)
     * @param oclc Only the book matching the OCLC will be returned (optional)
     * @param sort The sorting criteria (publish-date or rating). (optional)
     * @param sortDirection Whether to sort ascending or descending (ASC or DESC). (optional)
     * @param groupResults Whether to group similar editions of the same book. (optional)
     * @param offset The number of books to skip in range [0,1000] (optional)
     * @param number The number of books to return in range [1,100] (optional)
     * @return ApiResponse&lt;SearchBooksAPI200Response&gt;
     * @throws ApiException If fail to call the API, e.g. server error or cannot deserialize the response body
     * @http.response.details
     <table summary="Response Details" border="1">
        <tr><td> Status Code </td><td> Description </td><td> Response Headers </td></tr>
        <tr><td> 200 </td><td> Success </td><td>  -  </td></tr>
        <tr><td> 401 </td><td> Unauthorized </td><td>  -  </td></tr>
        <tr><td> 402 </td><td> Payment Required </td><td>  -  </td></tr>
        <tr><td> 403 </td><td> Forbidden </td><td>  -  </td></tr>
        <tr><td> 404 </td><td> Not Found </td><td>  -  </td></tr>
        <tr><td> 406 </td><td> Not Acceptable </td><td>  -  </td></tr>
        <tr><td> 429 </td><td> Too Many Requests </td><td>  -  </td></tr>
     </table>
     * Read entire docs
     * @see <a href="https://apileague.com/apis/search-books-api/">Search Books API Documentation</a>
     */
    public ApiResponse<SearchBooksAPI200Response> searchBooksAPIWithHttpInfo(String query, Integer earliestPublishYear, Integer latestPublishYear, Double minRating, Double maxRating, String genres, String authors, String isbn, String oclc, String sort, String sortDirection, Boolean groupResults, Integer offset, Integer number) throws ApiException {
        okhttp3.Call localVarCall = searchBooksAPIValidateBeforeCall(query, earliestPublishYear, latestPublishYear, minRating, maxRating, genres, authors, isbn, oclc, sort, sortDirection, groupResults, offset, number, null);
        Type localVarReturnType = new TypeToken<SearchBooksAPI200Response>(){}.getType();
        return localVarApiClient.execute(localVarCall, localVarReturnType);
    }

    /**
     * Search Books API (asynchronously)
     * Search and filter over 4 million books based on matching a query, the ISBN, rating, and more fields. The query is semantically parsed using our own large ontology. That means you can search paranormal books and the ontology knows that Aliens, Werewolves, Ghosts, and Shapeshifters fall into that category.
     * @param query The search query. (optional)
     * @param earliestPublishYear The books must have been published after this year. (optional)
     * @param latestPublishYear The books must have been published before this year. (optional)
     * @param minRating The minimum rating the book must have gotten in the interval [0,1]. (optional)
     * @param maxRating The maximum rating the book must have gotten in the interval [0,1]. (optional)
     * @param genres A comma-separated list of genres. Only books from any of the given genres will be returned. (optional)
     * @param authors A comma-separated list of author ids or names. Only books from any of the given authors will be returned. You can retrieve author ids from the search authors endpoint. Pass author names is slower and if two authors have the same name you can&#39;t disambiguate. (optional)
     * @param isbn Only the book matching the ISBN-13 will be returned (optional)
     * @param oclc Only the book matching the OCLC will be returned (optional)
     * @param sort The sorting criteria (publish-date or rating). (optional)
     * @param sortDirection Whether to sort ascending or descending (ASC or DESC). (optional)
     * @param groupResults Whether to group similar editions of the same book. (optional)
     * @param offset The number of books to skip in range [0,1000] (optional)
     * @param number The number of books to return in range [1,100] (optional)
     * @param _callback The callback to be executed when the API call finishes
     * @return The request call
     * @throws ApiException If fail to process the API call, e.g. serializing the request body object
     * @http.response.details
     <table summary="Response Details" border="1">
        <tr><td> Status Code </td><td> Description </td><td> Response Headers </td></tr>
        <tr><td> 200 </td><td> Success </td><td>  -  </td></tr>
        <tr><td> 401 </td><td> Unauthorized </td><td>  -  </td></tr>
        <tr><td> 402 </td><td> Payment Required </td><td>  -  </td></tr>
        <tr><td> 403 </td><td> Forbidden </td><td>  -  </td></tr>
        <tr><td> 404 </td><td> Not Found </td><td>  -  </td></tr>
        <tr><td> 406 </td><td> Not Acceptable </td><td>  -  </td></tr>
        <tr><td> 429 </td><td> Too Many Requests </td><td>  -  </td></tr>
     </table>
     * Read entire docs
     * @see <a href="https://apileague.com/apis/search-books-api/">Search Books API Documentation</a>
     */
    public okhttp3.Call searchBooksAPIAsync(String query, Integer earliestPublishYear, Integer latestPublishYear, Double minRating, Double maxRating, String genres, String authors, String isbn, String oclc, String sort, String sortDirection, Boolean groupResults, Integer offset, Integer number, final ApiCallback<SearchBooksAPI200Response> _callback) throws ApiException {

        okhttp3.Call localVarCall = searchBooksAPIValidateBeforeCall(query, earliestPublishYear, latestPublishYear, minRating, maxRating, genres, authors, isbn, oclc, sort, sortDirection, groupResults, offset, number, _callback);
        Type localVarReturnType = new TypeToken<SearchBooksAPI200Response>(){}.getType();
        localVarApiClient.executeAsync(localVarCall, localVarReturnType, _callback);
        return localVarCall;
    }
}
