/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.5.0
 * Contact: mail@apileague.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 *
 */


import ApiClient from "../ApiClient";
import ReadKeyValueFromStore200Response from '../model/ReadKeyValueFromStore200Response';
import StoreKeyValueGET200Response from '../model/StoreKeyValueGET200Response';

/**
* Storage service.
* @module api/StorageApi
* @version 1.5.0
*/
export default class StorageApi {

    /**
    * Constructs a new StorageApi. 
    * @alias module:api/StorageApi
    * @class
    * @param {module:ApiClient} [apiClient] Optional API client implementation to use,
    * default to {@link module:ApiClient#instance} if unspecified.
    */
    constructor(apiClient) {
        this.apiClient = apiClient || ApiClient.instance;
    }


    /**
     * Callback function to receive the result of the readKeyValueFromStore operation.
     * @callback module:api/StorageApi~readKeyValueFromStoreCallback
     * @param {String} error Error message, if any.
     * @param {module:model/ReadKeyValueFromStore200Response} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Read Key Value from Store
     * Read a value from the key-value store. The key-value store is a simple storage system that allows you to store and retrieve data using a key. The data is stored in the cloud and can be accessed from anywhere. You can use the key-value store to store any type of data, such as text or numbers. The key-value store is a great way to store data that you want to access from multiple devices or locations.
     * @param {String} key The key for which the value is stored (max length 255 characters).
     * @param {module:api/StorageApi~readKeyValueFromStoreCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:model/ReadKeyValueFromStore200Response}
     */
    readKeyValueFromStore(key, callback) {
      let postBody = null;
      // verify the required parameter 'key' is set
      if (key === undefined || key === null) {
        throw new Error("Missing the required parameter 'key' when calling readKeyValueFromStore");
      }

      let pathParams = {
      };
      let queryParams = {
        'key': key
      };
      let headerParams = {
      };
      let formParams = {
      };

      let authNames = ['apiKey', 'headerApiKey'];
      let contentTypes = [];
      let accepts = ['application/json'];
      let returnType = ReadKeyValueFromStore200Response;
      return this.apiClient.callApi(
        '/read-key-value', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the storeKeyValueGET operation.
     * @callback module:api/StorageApi~storeKeyValueGETCallback
     * @param {String} error Error message, if any.
     * @param {module:model/StoreKeyValueGET200Response} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Store Key Value (GET)
     * Store a value in the key-value store. The key-value store is a simple storage system that allows you to store and retrieve data using a key. The data is stored in the cloud and can be accessed from anywhere. You can use the key-value store to store any type of data, such as text or numbers. The key-value store is a great way to store data that you want to access from multiple devices or locations.
     * @param {String} key The key for which the value is stored (max length 255 characters).
     * @param {String} value The value that is supposed to be stored (max length 10,000 characters).
     * @param {module:api/StorageApi~storeKeyValueGETCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:model/StoreKeyValueGET200Response}
     */
    storeKeyValueGET(key, value, callback) {
      let postBody = null;
      // verify the required parameter 'key' is set
      if (key === undefined || key === null) {
        throw new Error("Missing the required parameter 'key' when calling storeKeyValueGET");
      }
      // verify the required parameter 'value' is set
      if (value === undefined || value === null) {
        throw new Error("Missing the required parameter 'value' when calling storeKeyValueGET");
      }

      let pathParams = {
      };
      let queryParams = {
        'key': key,
        'value': value
      };
      let headerParams = {
      };
      let formParams = {
      };

      let authNames = ['apiKey', 'headerApiKey'];
      let contentTypes = [];
      let accepts = ['application/json'];
      let returnType = StoreKeyValueGET200Response;
      return this.apiClient.callApi(
        '/store-key-value', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }


}
