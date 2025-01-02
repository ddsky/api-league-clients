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

import ApiClient from '../ApiClient';
import SearchDrinksAPI200ResponseDrinksInner from './SearchDrinksAPI200ResponseDrinksInner';

/**
 * The SearchDrinksAPI200Response model module.
 * @module model/SearchDrinksAPI200Response
 * @version 1.6.4
 */
class SearchDrinksAPI200Response {
    /**
     * Constructs a new <code>SearchDrinksAPI200Response</code>.
     * @alias module:model/SearchDrinksAPI200Response
     */
    constructor() { 
        
        SearchDrinksAPI200Response.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>SearchDrinksAPI200Response</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/SearchDrinksAPI200Response} obj Optional instance to populate.
     * @return {module:model/SearchDrinksAPI200Response} The populated <code>SearchDrinksAPI200Response</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new SearchDrinksAPI200Response();

            if (data.hasOwnProperty('offset')) {
                obj['offset'] = ApiClient.convertToType(data['offset'], 'Number');
            }
            if (data.hasOwnProperty('number')) {
                obj['number'] = ApiClient.convertToType(data['number'], 'Number');
            }
            if (data.hasOwnProperty('drinks')) {
                obj['drinks'] = ApiClient.convertToType(data['drinks'], [SearchDrinksAPI200ResponseDrinksInner]);
            }
            if (data.hasOwnProperty('total_results')) {
                obj['total_results'] = ApiClient.convertToType(data['total_results'], 'Number');
            }
        }
        return obj;
    }

    /**
     * Validates the JSON data with respect to <code>SearchDrinksAPI200Response</code>.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @return {boolean} to indicate whether the JSON data is valid with respect to <code>SearchDrinksAPI200Response</code>.
     */
    static validateJSON(data) {
        if (data['drinks']) { // data not null
            // ensure the json data is an array
            if (!Array.isArray(data['drinks'])) {
                throw new Error("Expected the field `drinks` to be an array in the JSON data but got " + data['drinks']);
            }
            // validate the optional field `drinks` (array)
            for (const item of data['drinks']) {
                SearchDrinksAPI200ResponseDrinksInner.validateJSON(item);
            };
        }

        return true;
    }


}



/**
 * @member {Number} offset
 */
SearchDrinksAPI200Response.prototype['offset'] = undefined;

/**
 * @member {Number} number
 */
SearchDrinksAPI200Response.prototype['number'] = undefined;

/**
 * @member {Array.<module:model/SearchDrinksAPI200ResponseDrinksInner>} drinks
 */
SearchDrinksAPI200Response.prototype['drinks'] = undefined;

/**
 * @member {Number} total_results
 */
SearchDrinksAPI200Response.prototype['total_results'] = undefined;






export default SearchDrinksAPI200Response;
