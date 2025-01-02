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
 *
 */


import ApiClient from "../ApiClient";
import ExtractAuthorsAPI200Response from '../model/ExtractAuthorsAPI200Response';
import ExtractContentFromAWebPageAPI200Response from '../model/ExtractContentFromAWebPageAPI200Response';
import ExtractPublishDateAPI200Response from '../model/ExtractPublishDateAPI200Response';
import RetrievePageRankAPI200Response from '../model/RetrievePageRankAPI200Response';
import SearchWebAPI200Response from '../model/SearchWebAPI200Response';
import VerifyEmailAddressAPI200Response from '../model/VerifyEmailAddressAPI200Response';

/**
* Web service.
* @module api/WebApi
* @version 1.6.4
*/
export default class WebApi {

    /**
    * Constructs a new WebApi. 
    * @alias module:api/WebApi
    * @class
    * @param {module:ApiClient} [apiClient] Optional API client implementation to use,
    * default to {@link module:ApiClient#instance} if unspecified.
    */
    constructor(apiClient) {
        this.apiClient = apiClient || ApiClient.instance;
    }


    /**
     * Callback function to receive the result of the extractAuthorsAPI operation.
     * @callback module:api/WebApi~extractAuthorsAPICallback
     * @param {String} error Error message, if any.
     * @param {module:model/ExtractAuthorsAPI200Response} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Extract Authors API
     * Extracts the authors from a given URL. This API is useful for extracting the authors from a blog post or news article. The API will return a list of authors with their names and links to their profiles if available.
     * @param {String} url The url with the article from which authors should be extracted.
     * @param {module:api/WebApi~extractAuthorsAPICallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:model/ExtractAuthorsAPI200Response}
     */
    extractAuthorsAPI(url, callback) {
      let postBody = null;
      // verify the required parameter 'url' is set
      if (url === undefined || url === null) {
        throw new Error("Missing the required parameter 'url' when calling extractAuthorsAPI");
      }

      let pathParams = {
      };
      let queryParams = {
        'url': url
      };
      let headerParams = {
      };
      let formParams = {
      };

      let authNames = ['apiKey', 'headerApiKey'];
      let contentTypes = [];
      let accepts = ['application/json'];
      let returnType = ExtractAuthorsAPI200Response;
      return this.apiClient.callApi(
        '/extract-authors', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the extractContentFromAWebPageAPI operation.
     * @callback module:api/WebApi~extractContentFromAWebPageAPICallback
     * @param {String} error Error message, if any.
     * @param {module:model/ExtractContentFromAWebPageAPI200Response} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Extract Content from a Web Page API
     * Extract the main content from a web page. This API is useful for extracting the main text, title, and images from a web page. It can be used to create a summary of the content of a web page, or to extract the main content of a web page to display it in a different format.
     * @param {String} url The url for which the content will be extracted.
     * @param {module:api/WebApi~extractContentFromAWebPageAPICallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:model/ExtractContentFromAWebPageAPI200Response}
     */
    extractContentFromAWebPageAPI(url, callback) {
      let postBody = null;
      // verify the required parameter 'url' is set
      if (url === undefined || url === null) {
        throw new Error("Missing the required parameter 'url' when calling extractContentFromAWebPageAPI");
      }

      let pathParams = {
      };
      let queryParams = {
        'url': url
      };
      let headerParams = {
      };
      let formParams = {
      };

      let authNames = ['apiKey', 'headerApiKey'];
      let contentTypes = [];
      let accepts = ['application/json'];
      let returnType = ExtractContentFromAWebPageAPI200Response;
      return this.apiClient.callApi(
        '/extract-content', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the extractPublishDateAPI operation.
     * @callback module:api/WebApi~extractPublishDateAPICallback
     * @param {String} error Error message, if any.
     * @param {module:model/ExtractPublishDateAPI200Response} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Extract Publish Date API
     * Extract the publish date of an article (news or blog). The API will return the publish date of the article if it can be found. The date returned is in the format YYYY-MM-DD.
     * @param {String} url The url for which the publish date should be extracted.
     * @param {module:api/WebApi~extractPublishDateAPICallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:model/ExtractPublishDateAPI200Response}
     */
    extractPublishDateAPI(url, callback) {
      let postBody = null;
      // verify the required parameter 'url' is set
      if (url === undefined || url === null) {
        throw new Error("Missing the required parameter 'url' when calling extractPublishDateAPI");
      }

      let pathParams = {
      };
      let queryParams = {
        'url': url
      };
      let headerParams = {
      };
      let formParams = {
      };

      let authNames = ['apiKey', 'headerApiKey'];
      let contentTypes = [];
      let accepts = ['application/json'];
      let returnType = ExtractPublishDateAPI200Response;
      return this.apiClient.callApi(
        '/extract-publish-date', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the retrievePageRankAPI operation.
     * @callback module:api/WebApi~retrievePageRankAPICallback
     * @param {String} error Error message, if any.
     * @param {module:model/RetrievePageRankAPI200Response} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Retrieve Page Rank API
     * This API allows you to retrieve the page rank of a given URL. The API returns the page rank, the position of the URL in the search results, and the percentile of the page rank.
     * @param {String} domain The domain for which the page rank should be returned.
     * @param {module:api/WebApi~retrievePageRankAPICallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:model/RetrievePageRankAPI200Response}
     */
    retrievePageRankAPI(domain, callback) {
      let postBody = null;
      // verify the required parameter 'domain' is set
      if (domain === undefined || domain === null) {
        throw new Error("Missing the required parameter 'domain' when calling retrievePageRankAPI");
      }

      let pathParams = {
      };
      let queryParams = {
        'domain': domain
      };
      let headerParams = {
      };
      let formParams = {
      };

      let authNames = ['apiKey', 'headerApiKey'];
      let contentTypes = [];
      let accepts = ['application/json'];
      let returnType = RetrievePageRankAPI200Response;
      return this.apiClient.callApi(
        '/retrieve-page-rank', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the searchWebAPI operation.
     * @callback module:api/WebApi~searchWebAPICallback
     * @param {String} error Error message, if any.
     * @param {module:model/SearchWebAPI200Response} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Search Web API
     * Search the web for a given query. The API returns a list of results with the title, summary, and URL.
     * @param {String} query The search query.
     * @param {Object} opts Optional parameters
     * @param {Number} [number] The number of results to return in range [1,50]
     * @param {module:api/WebApi~searchWebAPICallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:model/SearchWebAPI200Response}
     */
    searchWebAPI(query, opts, callback) {
      opts = opts || {};
      let postBody = null;
      // verify the required parameter 'query' is set
      if (query === undefined || query === null) {
        throw new Error("Missing the required parameter 'query' when calling searchWebAPI");
      }

      let pathParams = {
      };
      let queryParams = {
        'query': query,
        'number': opts['number']
      };
      let headerParams = {
      };
      let formParams = {
      };

      let authNames = ['apiKey', 'headerApiKey'];
      let contentTypes = [];
      let accepts = ['application/json'];
      let returnType = SearchWebAPI200Response;
      return this.apiClient.callApi(
        '/search-web', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the verifyEmailAddressAPI operation.
     * @callback module:api/WebApi~verifyEmailAddressAPICallback
     * @param {String} error Error message, if any.
     * @param {module:model/VerifyEmailAddressAPI200Response} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Verify Email Address API
     * This email checker API allows you to validate an email address. The validation will parse the name if possible and check whether the email is not just a disposable junk email address. The API will also check if the email is from a free provider like Gmail, Yahoo, or Hotmail.
     * @param {String} email The email address to verify.
     * @param {module:api/WebApi~verifyEmailAddressAPICallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:model/VerifyEmailAddressAPI200Response}
     */
    verifyEmailAddressAPI(email, callback) {
      let postBody = null;
      // verify the required parameter 'email' is set
      if (email === undefined || email === null) {
        throw new Error("Missing the required parameter 'email' when calling verifyEmailAddressAPI");
      }

      let pathParams = {
      };
      let queryParams = {
        'email': email
      };
      let headerParams = {
      };
      let formParams = {
      };

      let authNames = ['apiKey', 'headerApiKey'];
      let contentTypes = [];
      let accepts = ['application/json'];
      let returnType = VerifyEmailAddressAPI200Response;
      return this.apiClient.callApi(
        '/verify-email', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }


}
