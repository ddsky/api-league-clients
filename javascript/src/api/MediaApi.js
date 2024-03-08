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
 *
 */


import ApiClient from "../ApiClient";
import DetectMainImageColor200ResponseInner from '../model/DetectMainImageColor200ResponseInner';
import SearchRoyaltyFreeImages200Response from '../model/SearchRoyaltyFreeImages200Response';

/**
* Media service.
* @module api/MediaApi
* @version 1.0
*/
export default class MediaApi {

    /**
    * Constructs a new MediaApi. 
    * @alias module:api/MediaApi
    * @class
    * @param {module:ApiClient} [apiClient] Optional API client implementation to use,
    * default to {@link module:ApiClient#instance} if unspecified.
    */
    constructor(apiClient) {
        this.apiClient = apiClient || ApiClient.instance;
    }


    /**
     * Callback function to receive the result of the detectMainImageColor operation.
     * @callback module:api/MediaApi~detectMainImageColorCallback
     * @param {String} error Error message, if any.
     * @param {Array.<module:model/DetectMainImageColor200ResponseInner>} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Detect Main Image Color
     * Detect the main color of an image. The API returns a list of colors and their hex codes. The API supports images in the following formats: JPEG, PNG, and GIF.
     * @param {String} url The url of the image for which the colors should be detected.
     * @param {module:api/MediaApi~detectMainImageColorCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link Array.<module:model/DetectMainImageColor200ResponseInner>}
     */
    detectMainImageColor(url, callback) {
      let postBody = null;
      // verify the required parameter 'url' is set
      if (url === undefined || url === null) {
        throw new Error("Missing the required parameter 'url' when calling detectMainImageColor");
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
      let returnType = [DetectMainImageColor200ResponseInner];
      return this.apiClient.callApi(
        '/detect-color', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the rescaleImage operation.
     * @callback module:api/MediaApi~rescaleImageCallback
     * @param {String} error Error message, if any.
     * @param {Object} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Rescale Image
     * Rescale an image to a specific width and height. The image will be resized to fit the specified width and height while maintaining the original aspect ratio unless the crop parameter is set to true. The image will be returned in the same format as the original image.
     * @param {String} url The url of the image to be rescaled.
     * @param {Number} width The desired width of the rescaled image.
     * @param {Number} height The desired height of the rescaled image.
     * @param {Boolean} crop Whether the image should be cropped. If true, the returned image will have exactly the given width and height and some content might have been cropped from the left/right or top/bottom. If this parameter is false, the image will keep its ratio but will be resized to fill the given box. Some content might be outside the box though.
     * @param {module:api/MediaApi~rescaleImageCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link Object}
     */
    rescaleImage(url, width, height, crop, callback) {
      let postBody = null;
      // verify the required parameter 'url' is set
      if (url === undefined || url === null) {
        throw new Error("Missing the required parameter 'url' when calling rescaleImage");
      }
      // verify the required parameter 'width' is set
      if (width === undefined || width === null) {
        throw new Error("Missing the required parameter 'width' when calling rescaleImage");
      }
      // verify the required parameter 'height' is set
      if (height === undefined || height === null) {
        throw new Error("Missing the required parameter 'height' when calling rescaleImage");
      }
      // verify the required parameter 'crop' is set
      if (crop === undefined || crop === null) {
        throw new Error("Missing the required parameter 'crop' when calling rescaleImage");
      }

      let pathParams = {
      };
      let queryParams = {
        'url': url,
        'width': width,
        'height': height,
        'crop': crop
      };
      let headerParams = {
      };
      let formParams = {
      };

      let authNames = ['apiKey', 'headerApiKey'];
      let contentTypes = [];
      let accepts = ['application/octet-stream'];
      let returnType = Object;
      return this.apiClient.callApi(
        '/rescale-image', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the searchRoyaltyFreeImages operation.
     * @callback module:api/MediaApi~searchRoyaltyFreeImagesCallback
     * @param {String} error Error message, if any.
     * @param {module:model/SearchRoyaltyFreeImages200Response} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Search Royalty Free Images
     * Search through hundreds of thousands of royalty free images to match any topic you want. The images are returned in a list with the URL, width, and height of the image. Additionally, you can find the license type and link of the image.
     * @param {String} query The search query.
     * @param {Object} opts Optional parameters
     * @param {Number} [number] The number of images to return in range [1,10]
     * @param {module:api/MediaApi~searchRoyaltyFreeImagesCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:model/SearchRoyaltyFreeImages200Response}
     */
    searchRoyaltyFreeImages(query, opts, callback) {
      opts = opts || {};
      let postBody = null;
      // verify the required parameter 'query' is set
      if (query === undefined || query === null) {
        throw new Error("Missing the required parameter 'query' when calling searchRoyaltyFreeImages");
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
      let returnType = SearchRoyaltyFreeImages200Response;
      return this.apiClient.callApi(
        '/search-images', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }


}