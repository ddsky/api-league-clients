/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.4.2
 * Contact: mail@apileague.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 *
 */


import ApiClient from "../ApiClient";
import RandomPoem200Response from '../model/RandomPoem200Response';

/**
* Art service.
* @module api/ArtApi
* @version 1.4.2
*/
export default class ArtApi {

    /**
    * Constructs a new ArtApi. 
    * @alias module:api/ArtApi
    * @class
    * @param {module:ApiClient} [apiClient] Optional API client implementation to use,
    * default to {@link module:ApiClient#instance} if unspecified.
    */
    constructor(apiClient) {
        this.apiClient = apiClient || ApiClient.instance;
    }


    /**
     * Callback function to receive the result of the imageToAsciiArtByURL operation.
     * @callback module:api/ArtApi~imageToAsciiArtByURLCallback
     * @param {String} error Error message, if any.
     * @param {String} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Image to Ascii Art by URL
     * Convert an image to ASCII art. You can pass the image URL as a query parameter. The API returns the ASCII art as plain text. This endpoint is using the GET method and an image URL as a query parameter.
     * @param {String} url The URL to the image.
     * @param {Object} opts Optional parameters
     * @param {Number} [width] The maximum width of the image (default 400, max. 500).
     * @param {Number} [height] The maximum height of the image (default 400, max. 500).
     * @param {module:api/ArtApi~imageToAsciiArtByURLCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link String}
     */
    imageToAsciiArtByURL(url, opts, callback) {
      opts = opts || {};
      let postBody = null;
      // verify the required parameter 'url' is set
      if (url === undefined || url === null) {
        throw new Error("Missing the required parameter 'url' when calling imageToAsciiArtByURL");
      }

      let pathParams = {
      };
      let queryParams = {
        'url': url,
        'width': opts['width'],
        'height': opts['height']
      };
      let headerParams = {
      };
      let formParams = {
      };

      let authNames = ['apiKey', 'headerApiKey'];
      let contentTypes = [];
      let accepts = ['text/plain'];
      let returnType = 'String';
      return this.apiClient.callApi(
        '/convert-image-to-ascii-txt', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the randomPoem operation.
     * @callback module:api/ArtApi~randomPoemCallback
     * @param {String} error Error message, if any.
     * @param {module:model/RandomPoem200Response} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Random Poem
     * Retrieve a random poem by many famous authors. You can filter poem's by length (number of lines).
     * @param {Object} opts Optional parameters
     * @param {Number} [minLines] The minimum number of lines of the poem.
     * @param {Number} [maxLines] The maximum number of lines of the poem.
     * @param {module:api/ArtApi~randomPoemCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:model/RandomPoem200Response}
     */
    randomPoem(opts, callback) {
      opts = opts || {};
      let postBody = null;

      let pathParams = {
      };
      let queryParams = {
        'min-lines': opts['minLines'],
        'max-lines': opts['maxLines']
      };
      let headerParams = {
      };
      let formParams = {
      };

      let authNames = ['apiKey', 'headerApiKey'];
      let contentTypes = [];
      let accepts = ['application/json'];
      let returnType = RandomPoem200Response;
      return this.apiClient.callApi(
        '/retrieve-random-poem', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }


}
