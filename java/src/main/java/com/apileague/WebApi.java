/*
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


import com.apileague.client.model.ExtractAuthors200Response;
import com.apileague.client.model.ExtractContentFromAWebPage200Response;
import com.apileague.client.model.ExtractPublishDate200Response;
import com.apileague.client.model.SearchWeb200Response;

import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class WebApi {
    private ApiClient localVarApiClient;
    private int localHostIndex;
    private String localCustomBaseUrl;

    public WebApi() {
        this(Configuration.getDefaultApiClient());
    }

    public WebApi(ApiClient apiClient) {
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
     * Build call for extractAuthors
     * @param url The url with the article from which authors should be extracted. (required)
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
     * @see <a href="https://apileague.com/apis/extract-authors-api/">Extract Authors Documentation</a>
     */
    public okhttp3.Call extractAuthorsCall(String url, final ApiCallback _callback) throws ApiException {
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
        String localVarPath = "/extract-authors";

        List<Pair> localVarQueryParams = new ArrayList<Pair>();
        List<Pair> localVarCollectionQueryParams = new ArrayList<Pair>();
        Map<String, String> localVarHeaderParams = new HashMap<String, String>();
        Map<String, String> localVarCookieParams = new HashMap<String, String>();
        Map<String, Object> localVarFormParams = new HashMap<String, Object>();

        if (url != null) {
            localVarQueryParams.addAll(localVarApiClient.parameterToPair("url", url));
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
    private okhttp3.Call extractAuthorsValidateBeforeCall(String url, final ApiCallback _callback) throws ApiException {
        // verify the required parameter 'url' is set
        if (url == null) {
            throw new ApiException("Missing the required parameter 'url' when calling extractAuthors(Async)");
        }

        return extractAuthorsCall(url, _callback);

    }

    /**
     * Extract Authors
     * Extracts the authors from a given URL. This API is useful for extracting the authors from a blog post or news article. The API will return a list of authors with their names and links to their profiles if available.
     * @param url The url with the article from which authors should be extracted. (required)
     * @return ExtractAuthors200Response
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
     * @see <a href="https://apileague.com/apis/extract-authors-api/">Extract Authors Documentation</a>
     */
    public ExtractAuthors200Response extractAuthors(String url) throws ApiException {
        ApiResponse<ExtractAuthors200Response> localVarResp = extractAuthorsWithHttpInfo(url);
        return localVarResp.getData();
    }

    /**
     * Extract Authors
     * Extracts the authors from a given URL. This API is useful for extracting the authors from a blog post or news article. The API will return a list of authors with their names and links to their profiles if available.
     * @param url The url with the article from which authors should be extracted. (required)
     * @return ApiResponse&lt;ExtractAuthors200Response&gt;
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
     * @see <a href="https://apileague.com/apis/extract-authors-api/">Extract Authors Documentation</a>
     */
    public ApiResponse<ExtractAuthors200Response> extractAuthorsWithHttpInfo(String url) throws ApiException {
        okhttp3.Call localVarCall = extractAuthorsValidateBeforeCall(url, null);
        Type localVarReturnType = new TypeToken<ExtractAuthors200Response>(){}.getType();
        return localVarApiClient.execute(localVarCall, localVarReturnType);
    }

    /**
     * Extract Authors (asynchronously)
     * Extracts the authors from a given URL. This API is useful for extracting the authors from a blog post or news article. The API will return a list of authors with their names and links to their profiles if available.
     * @param url The url with the article from which authors should be extracted. (required)
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
     * @see <a href="https://apileague.com/apis/extract-authors-api/">Extract Authors Documentation</a>
     */
    public okhttp3.Call extractAuthorsAsync(String url, final ApiCallback<ExtractAuthors200Response> _callback) throws ApiException {

        okhttp3.Call localVarCall = extractAuthorsValidateBeforeCall(url, _callback);
        Type localVarReturnType = new TypeToken<ExtractAuthors200Response>(){}.getType();
        localVarApiClient.executeAsync(localVarCall, localVarReturnType, _callback);
        return localVarCall;
    }
    /**
     * Build call for extractContentFromAWebPage
     * @param url The url for which the content will be extracted. (required)
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
     * @see <a href="https://apileague.com/apis/extract-web-content-api/">Extract Content from a Web Page Documentation</a>
     */
    public okhttp3.Call extractContentFromAWebPageCall(String url, final ApiCallback _callback) throws ApiException {
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
        String localVarPath = "/extract-content";

        List<Pair> localVarQueryParams = new ArrayList<Pair>();
        List<Pair> localVarCollectionQueryParams = new ArrayList<Pair>();
        Map<String, String> localVarHeaderParams = new HashMap<String, String>();
        Map<String, String> localVarCookieParams = new HashMap<String, String>();
        Map<String, Object> localVarFormParams = new HashMap<String, Object>();

        if (url != null) {
            localVarQueryParams.addAll(localVarApiClient.parameterToPair("url", url));
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
    private okhttp3.Call extractContentFromAWebPageValidateBeforeCall(String url, final ApiCallback _callback) throws ApiException {
        // verify the required parameter 'url' is set
        if (url == null) {
            throw new ApiException("Missing the required parameter 'url' when calling extractContentFromAWebPage(Async)");
        }

        return extractContentFromAWebPageCall(url, _callback);

    }

    /**
     * Extract Content from a Web Page
     * Extract the main content from a web page. This API is useful for extracting the main text, title, and images from a web page. It can be used to create a summary of the content of a web page, or to extract the main content of a web page to display it in a different format.
     * @param url The url for which the content will be extracted. (required)
     * @return ExtractContentFromAWebPage200Response
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
     * @see <a href="https://apileague.com/apis/extract-web-content-api/">Extract Content from a Web Page Documentation</a>
     */
    public ExtractContentFromAWebPage200Response extractContentFromAWebPage(String url) throws ApiException {
        ApiResponse<ExtractContentFromAWebPage200Response> localVarResp = extractContentFromAWebPageWithHttpInfo(url);
        return localVarResp.getData();
    }

    /**
     * Extract Content from a Web Page
     * Extract the main content from a web page. This API is useful for extracting the main text, title, and images from a web page. It can be used to create a summary of the content of a web page, or to extract the main content of a web page to display it in a different format.
     * @param url The url for which the content will be extracted. (required)
     * @return ApiResponse&lt;ExtractContentFromAWebPage200Response&gt;
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
     * @see <a href="https://apileague.com/apis/extract-web-content-api/">Extract Content from a Web Page Documentation</a>
     */
    public ApiResponse<ExtractContentFromAWebPage200Response> extractContentFromAWebPageWithHttpInfo(String url) throws ApiException {
        okhttp3.Call localVarCall = extractContentFromAWebPageValidateBeforeCall(url, null);
        Type localVarReturnType = new TypeToken<ExtractContentFromAWebPage200Response>(){}.getType();
        return localVarApiClient.execute(localVarCall, localVarReturnType);
    }

    /**
     * Extract Content from a Web Page (asynchronously)
     * Extract the main content from a web page. This API is useful for extracting the main text, title, and images from a web page. It can be used to create a summary of the content of a web page, or to extract the main content of a web page to display it in a different format.
     * @param url The url for which the content will be extracted. (required)
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
     * @see <a href="https://apileague.com/apis/extract-web-content-api/">Extract Content from a Web Page Documentation</a>
     */
    public okhttp3.Call extractContentFromAWebPageAsync(String url, final ApiCallback<ExtractContentFromAWebPage200Response> _callback) throws ApiException {

        okhttp3.Call localVarCall = extractContentFromAWebPageValidateBeforeCall(url, _callback);
        Type localVarReturnType = new TypeToken<ExtractContentFromAWebPage200Response>(){}.getType();
        localVarApiClient.executeAsync(localVarCall, localVarReturnType, _callback);
        return localVarCall;
    }
    /**
     * Build call for extractPublishDate
     * @param url The url for which the publish date should be extracted. (required)
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
     * @see <a href="https://apileague.com/apis/extract-publish-date-api/">Extract Publish Date Documentation</a>
     */
    public okhttp3.Call extractPublishDateCall(String url, final ApiCallback _callback) throws ApiException {
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
        String localVarPath = "/extract-publish-date";

        List<Pair> localVarQueryParams = new ArrayList<Pair>();
        List<Pair> localVarCollectionQueryParams = new ArrayList<Pair>();
        Map<String, String> localVarHeaderParams = new HashMap<String, String>();
        Map<String, String> localVarCookieParams = new HashMap<String, String>();
        Map<String, Object> localVarFormParams = new HashMap<String, Object>();

        if (url != null) {
            localVarQueryParams.addAll(localVarApiClient.parameterToPair("url", url));
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
    private okhttp3.Call extractPublishDateValidateBeforeCall(String url, final ApiCallback _callback) throws ApiException {
        // verify the required parameter 'url' is set
        if (url == null) {
            throw new ApiException("Missing the required parameter 'url' when calling extractPublishDate(Async)");
        }

        return extractPublishDateCall(url, _callback);

    }

    /**
     * Extract Publish Date
     * Extract the publish date of an article (news or blog). The API will return the publish date of the article if it can be found. The date returned is in the format YYYY-MM-DD.
     * @param url The url for which the publish date should be extracted. (required)
     * @return ExtractPublishDate200Response
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
     * @see <a href="https://apileague.com/apis/extract-publish-date-api/">Extract Publish Date Documentation</a>
     */
    public ExtractPublishDate200Response extractPublishDate(String url) throws ApiException {
        ApiResponse<ExtractPublishDate200Response> localVarResp = extractPublishDateWithHttpInfo(url);
        return localVarResp.getData();
    }

    /**
     * Extract Publish Date
     * Extract the publish date of an article (news or blog). The API will return the publish date of the article if it can be found. The date returned is in the format YYYY-MM-DD.
     * @param url The url for which the publish date should be extracted. (required)
     * @return ApiResponse&lt;ExtractPublishDate200Response&gt;
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
     * @see <a href="https://apileague.com/apis/extract-publish-date-api/">Extract Publish Date Documentation</a>
     */
    public ApiResponse<ExtractPublishDate200Response> extractPublishDateWithHttpInfo(String url) throws ApiException {
        okhttp3.Call localVarCall = extractPublishDateValidateBeforeCall(url, null);
        Type localVarReturnType = new TypeToken<ExtractPublishDate200Response>(){}.getType();
        return localVarApiClient.execute(localVarCall, localVarReturnType);
    }

    /**
     * Extract Publish Date (asynchronously)
     * Extract the publish date of an article (news or blog). The API will return the publish date of the article if it can be found. The date returned is in the format YYYY-MM-DD.
     * @param url The url for which the publish date should be extracted. (required)
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
     * @see <a href="https://apileague.com/apis/extract-publish-date-api/">Extract Publish Date Documentation</a>
     */
    public okhttp3.Call extractPublishDateAsync(String url, final ApiCallback<ExtractPublishDate200Response> _callback) throws ApiException {

        okhttp3.Call localVarCall = extractPublishDateValidateBeforeCall(url, _callback);
        Type localVarReturnType = new TypeToken<ExtractPublishDate200Response>(){}.getType();
        localVarApiClient.executeAsync(localVarCall, localVarReturnType, _callback);
        return localVarCall;
    }
    /**
     * Build call for searchWeb
     * @param query The search query. (required)
     * @param number The number of results to return in range [1,50] (optional)
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
     * @see <a href="https://apileague.com/apis/web-search-api/">Search Web Documentation</a>
     */
    public okhttp3.Call searchWebCall(String query, Integer number, final ApiCallback _callback) throws ApiException {
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
        String localVarPath = "/search-web";

        List<Pair> localVarQueryParams = new ArrayList<Pair>();
        List<Pair> localVarCollectionQueryParams = new ArrayList<Pair>();
        Map<String, String> localVarHeaderParams = new HashMap<String, String>();
        Map<String, String> localVarCookieParams = new HashMap<String, String>();
        Map<String, Object> localVarFormParams = new HashMap<String, Object>();

        if (query != null) {
            localVarQueryParams.addAll(localVarApiClient.parameterToPair("query", query));
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
    private okhttp3.Call searchWebValidateBeforeCall(String query, Integer number, final ApiCallback _callback) throws ApiException {
        // verify the required parameter 'query' is set
        if (query == null) {
            throw new ApiException("Missing the required parameter 'query' when calling searchWeb(Async)");
        }

        return searchWebCall(query, number, _callback);

    }

    /**
     * Search Web
     * Search the web for a given query. The API returns a list of results with the title, summary, and URL.
     * @param query The search query. (required)
     * @param number The number of results to return in range [1,50] (optional)
     * @return SearchWeb200Response
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
     * @see <a href="https://apileague.com/apis/web-search-api/">Search Web Documentation</a>
     */
    public SearchWeb200Response searchWeb(String query, Integer number) throws ApiException {
        ApiResponse<SearchWeb200Response> localVarResp = searchWebWithHttpInfo(query, number);
        return localVarResp.getData();
    }

    /**
     * Search Web
     * Search the web for a given query. The API returns a list of results with the title, summary, and URL.
     * @param query The search query. (required)
     * @param number The number of results to return in range [1,50] (optional)
     * @return ApiResponse&lt;SearchWeb200Response&gt;
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
     * @see <a href="https://apileague.com/apis/web-search-api/">Search Web Documentation</a>
     */
    public ApiResponse<SearchWeb200Response> searchWebWithHttpInfo(String query, Integer number) throws ApiException {
        okhttp3.Call localVarCall = searchWebValidateBeforeCall(query, number, null);
        Type localVarReturnType = new TypeToken<SearchWeb200Response>(){}.getType();
        return localVarApiClient.execute(localVarCall, localVarReturnType);
    }

    /**
     * Search Web (asynchronously)
     * Search the web for a given query. The API returns a list of results with the title, summary, and URL.
     * @param query The search query. (required)
     * @param number The number of results to return in range [1,50] (optional)
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
     * @see <a href="https://apileague.com/apis/web-search-api/">Search Web Documentation</a>
     */
    public okhttp3.Call searchWebAsync(String query, Integer number, final ApiCallback<SearchWeb200Response> _callback) throws ApiException {

        okhttp3.Call localVarCall = searchWebValidateBeforeCall(query, number, _callback);
        Type localVarReturnType = new TypeToken<SearchWeb200Response>(){}.getType();
        localVarApiClient.executeAsync(localVarCall, localVarReturnType, _callback);
        return localVarCall;
    }
}
