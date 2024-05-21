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
import ConvertUnits200Response from '../model/ConvertUnits200Response';

/**
* Math service.
* @module api/MathApi
* @version 1.1.0
*/
export default class MathApi {

    /**
    * Constructs a new MathApi. 
    * @alias module:api/MathApi
    * @class
    * @param {module:ApiClient} [apiClient] Optional API client implementation to use,
    * default to {@link module:ApiClient#instance} if unspecified.
    */
    constructor(apiClient) {
        this.apiClient = apiClient || ApiClient.instance;
    }


    /**
     * Callback function to receive the result of the convertUnits operation.
     * @callback module:api/MathApi~convertUnitsCallback
     * @param {String} error Error message, if any.
     * @param {module:model/ConvertUnits200Response} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Convert Units
     * Convert units from one to another. The API returns the amount and the unit of the target unit.
     * @param {Number} sourceAmount The source amount.
     * @param {String} sourceUnit The source unit.
     * @param {String} targetUnit The unit to which should be converted.
     * @param {Object} opts Optional parameters
     * @param {String} [foodName] An optional food name. For converting foods the food is relevant as they have different densities.
     * @param {module:api/MathApi~convertUnitsCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:model/ConvertUnits200Response}
     */
    convertUnits(sourceAmount, sourceUnit, targetUnit, opts, callback) {
      opts = opts || {};
      let postBody = null;
      // verify the required parameter 'sourceAmount' is set
      if (sourceAmount === undefined || sourceAmount === null) {
        throw new Error("Missing the required parameter 'sourceAmount' when calling convertUnits");
      }
      // verify the required parameter 'sourceUnit' is set
      if (sourceUnit === undefined || sourceUnit === null) {
        throw new Error("Missing the required parameter 'sourceUnit' when calling convertUnits");
      }
      // verify the required parameter 'targetUnit' is set
      if (targetUnit === undefined || targetUnit === null) {
        throw new Error("Missing the required parameter 'targetUnit' when calling convertUnits");
      }

      let pathParams = {
      };
      let queryParams = {
        'source-amount': sourceAmount,
        'source-unit': sourceUnit,
        'target-unit': targetUnit,
        'food-name': opts['foodName']
      };
      let headerParams = {
      };
      let formParams = {
      };

      let authNames = ['apiKey', 'headerApiKey'];
      let contentTypes = [];
      let accepts = ['application/json'];
      let returnType = ConvertUnits200Response;
      return this.apiClient.callApi(
        '/convert-units', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }


}
