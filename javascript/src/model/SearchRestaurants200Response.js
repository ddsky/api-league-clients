/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.3.0
 * Contact: mail@apileague.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 *
 */

import ApiClient from '../ApiClient';
import SearchRestaurants200ResponseRestaurantsInner from './SearchRestaurants200ResponseRestaurantsInner';

/**
 * The SearchRestaurants200Response model module.
 * @module model/SearchRestaurants200Response
 * @version 1.3.0
 */
class SearchRestaurants200Response {
    /**
     * Constructs a new <code>SearchRestaurants200Response</code>.
     * @alias module:model/SearchRestaurants200Response
     */
    constructor() { 
        
        SearchRestaurants200Response.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>SearchRestaurants200Response</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/SearchRestaurants200Response} obj Optional instance to populate.
     * @return {module:model/SearchRestaurants200Response} The populated <code>SearchRestaurants200Response</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new SearchRestaurants200Response();

            if (data.hasOwnProperty('restaurants')) {
                obj['restaurants'] = ApiClient.convertToType(data['restaurants'], [SearchRestaurants200ResponseRestaurantsInner]);
            }
        }
        return obj;
    }

    /**
     * Validates the JSON data with respect to <code>SearchRestaurants200Response</code>.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @return {boolean} to indicate whether the JSON data is valid with respect to <code>SearchRestaurants200Response</code>.
     */
    static validateJSON(data) {
        if (data['restaurants']) { // data not null
            // ensure the json data is an array
            if (!Array.isArray(data['restaurants'])) {
                throw new Error("Expected the field `restaurants` to be an array in the JSON data but got " + data['restaurants']);
            }
            // validate the optional field `restaurants` (array)
            for (const item of data['restaurants']) {
                SearchRestaurants200ResponseRestaurantsInner.validateJSON(item);
            };
        }

        return true;
    }


}



/**
 * @member {Array.<module:model/SearchRestaurants200ResponseRestaurantsInner>} restaurants
 */
SearchRestaurants200Response.prototype['restaurants'] = undefined;






export default SearchRestaurants200Response;

