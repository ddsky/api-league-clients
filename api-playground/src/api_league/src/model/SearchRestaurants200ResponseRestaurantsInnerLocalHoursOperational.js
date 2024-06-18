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

import ApiClient from '../ApiClient';

/**
 * The SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational model module.
 * @module model/SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational
 * @version 1.0.0
 */
class SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational {
    /**
     * Constructs a new <code>SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational</code>.
     * @alias module:model/SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational
     */
    constructor() { 
        
        SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational} obj Optional instance to populate.
     * @return {module:model/SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational} The populated <code>SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational();

            if (data.hasOwnProperty('sunday')) {
                obj['sunday'] = ApiClient.convertToType(data['sunday'], 'String');
            }
            if (data.hasOwnProperty('saturday')) {
                obj['saturday'] = ApiClient.convertToType(data['saturday'], 'String');
            }
            if (data.hasOwnProperty('tuesday')) {
                obj['tuesday'] = ApiClient.convertToType(data['tuesday'], 'String');
            }
            if (data.hasOwnProperty('thursday')) {
                obj['thursday'] = ApiClient.convertToType(data['thursday'], 'String');
            }
            if (data.hasOwnProperty('friday')) {
                obj['friday'] = ApiClient.convertToType(data['friday'], 'String');
            }
            if (data.hasOwnProperty('wednesday')) {
                obj['wednesday'] = ApiClient.convertToType(data['wednesday'], 'String');
            }
            if (data.hasOwnProperty('monday')) {
                obj['monday'] = ApiClient.convertToType(data['monday'], 'String');
            }
        }
        return obj;
    }

    /**
     * Validates the JSON data with respect to <code>SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational</code>.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @return {boolean} to indicate whether the JSON data is valid with respect to <code>SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational</code>.
     */
    static validateJSON(data) {
        // ensure the json data is a string
        if (data['sunday'] && !(typeof data['sunday'] === 'string' || data['sunday'] instanceof String)) {
            throw new Error("Expected the field `sunday` to be a primitive type in the JSON string but got " + data['sunday']);
        }
        // ensure the json data is a string
        if (data['saturday'] && !(typeof data['saturday'] === 'string' || data['saturday'] instanceof String)) {
            throw new Error("Expected the field `saturday` to be a primitive type in the JSON string but got " + data['saturday']);
        }
        // ensure the json data is a string
        if (data['tuesday'] && !(typeof data['tuesday'] === 'string' || data['tuesday'] instanceof String)) {
            throw new Error("Expected the field `tuesday` to be a primitive type in the JSON string but got " + data['tuesday']);
        }
        // ensure the json data is a string
        if (data['thursday'] && !(typeof data['thursday'] === 'string' || data['thursday'] instanceof String)) {
            throw new Error("Expected the field `thursday` to be a primitive type in the JSON string but got " + data['thursday']);
        }
        // ensure the json data is a string
        if (data['friday'] && !(typeof data['friday'] === 'string' || data['friday'] instanceof String)) {
            throw new Error("Expected the field `friday` to be a primitive type in the JSON string but got " + data['friday']);
        }
        // ensure the json data is a string
        if (data['wednesday'] && !(typeof data['wednesday'] === 'string' || data['wednesday'] instanceof String)) {
            throw new Error("Expected the field `wednesday` to be a primitive type in the JSON string but got " + data['wednesday']);
        }
        // ensure the json data is a string
        if (data['monday'] && !(typeof data['monday'] === 'string' || data['monday'] instanceof String)) {
            throw new Error("Expected the field `monday` to be a primitive type in the JSON string but got " + data['monday']);
        }

        return true;
    }


}



/**
 * @member {String} sunday
 */
SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational.prototype['sunday'] = undefined;

/**
 * @member {String} saturday
 */
SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational.prototype['saturday'] = undefined;

/**
 * @member {String} tuesday
 */
SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational.prototype['tuesday'] = undefined;

/**
 * @member {String} thursday
 */
SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational.prototype['thursday'] = undefined;

/**
 * @member {String} friday
 */
SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational.prototype['friday'] = undefined;

/**
 * @member {String} wednesday
 */
SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational.prototype['wednesday'] = undefined;

/**
 * @member {String} monday
 */
SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational.prototype['monday'] = undefined;






export default SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational;
