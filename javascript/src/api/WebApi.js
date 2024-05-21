/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.0.0
 * Contact: mail@apileague.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 *
 */


import ApiClient from "../ApiClient";
import ExtractAuthors200Response from '../model/ExtractAuthors200Response';
import ExtractContentFromAWebPage200Response from '../model/ExtractContentFromAWebPage200Response';
import ExtractPublishDate200Response from '../model/ExtractPublishDate200Response';
import SearchWeb200Response from '../model/SearchWeb200Response';

/**
* Web service.
* @module api/WebApi
* @version 1.1.0
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
     * Callback function to receive the result of the extractAuthors operation.
     * @callback module:api/WebApi~extractAuthorsCallback
     * @param {String} error Error message, if any.
     * @param {module:model/ExtractAuthors200Response} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Extract Authors
     * Extracts the authors from a given URL. This API is useful for extracting the authors from a blog post or news article. The API will return a list of authors with their names and links to their profiles if available.
     * @param {String} url The url with the article from which authors should be extracted.
     * @param {module:api/WebApi~extractAuthorsCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:model/ExtractAuthors200Response}
     */
    extractAuthors(url, callback) {
      let postBody = null;
      // verify the required parameter 'url' is set
      if (url === undefined || url === null) {
        throw new Error("Missing the required parameter 'url' when calling extractAuthors");
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
      let returnType = ExtractAuthors200Response;
      return this.apiClient.callApi(
        '/extract-authors', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the extractContentFromAWebPage operation.
     * @callback module:api/WebApi~extractContentFromAWebPageCallback
     * @param {String} error Error message, if any.
     * @param {module:model/ExtractContentFromAWebPage200Response} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Extract Content from a Web Page
     * Extract the main content from a web page. This API is useful for extracting the main text, title, and images from a web page. It can be used to create a summary of the content of a web page, or to extract the main content of a web page to display it in a different format.
     * @param {String} url The url for which the content will be extracted.
     * @param {module:api/WebApi~extractContentFromAWebPageCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:model/ExtractContentFromAWebPage200Response}
     */
    extractContentFromAWebPage(url, callback) {
      let postBody = null;
      // verify the required parameter 'url' is set
      if (url === undefined || url === null) {
        throw new Error("Missing the required parameter 'url' when calling extractContentFromAWebPage");
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
      let returnType = ExtractContentFromAWebPage200Response;
      return this.apiClient.callApi(
        '/extract-content', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the extractPublishDate operation.
     * @callback module:api/WebApi~extractPublishDateCallback
     * @param {String} error Error message, if any.
     * @param {module:model/ExtractPublishDate200Response} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Extract Publish Date
     * Extract the publish date of an article (news or blog). The API will return the publish date of the article if it can be found. The date returned is in the format YYYY-MM-DD.
     * @param {String} url The url for which the publish date should be extracted.
     * @param {module:api/WebApi~extractPublishDateCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:model/ExtractPublishDate200Response}
     */
    extractPublishDate(url, callback) {
      let postBody = null;
      // verify the required parameter 'url' is set
      if (url === undefined || url === null) {
        throw new Error("Missing the required parameter 'url' when calling extractPublishDate");
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
      let returnType = ExtractPublishDate200Response;
      return this.apiClient.callApi(
        '/extract-publish-date', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the searchWeb operation.
     * @callback module:api/WebApi~searchWebCallback
     * @param {String} error Error message, if any.
     * @param {module:model/SearchWeb200Response} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Search Web
     * Search the web for a given query. The API returns a list of results with the title, summary, and URL.
     * @param {String} query The search query.
     * @param {Object} opts Optional parameters
     * @param {Number} [number] The number of results to return in range [1,50]
     * @param {module:api/WebApi~searchWebCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:model/SearchWeb200Response}
     */
    searchWeb(query, opts, callback) {
      opts = opts || {};
      let postBody = null;
      // verify the required parameter 'query' is set
      if (query === undefined || query === null) {
        throw new Error("Missing the required parameter 'query' when calling searchWeb");
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
      let returnType = SearchWeb200Response;
      return this.apiClient.callApi(
        '/search-web', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }


}
