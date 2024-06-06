/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.2.0
 * Contact: mail@apileague.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 *
 */

import ApiClient from '../ApiClient';
import SearchRestaurants200ResponseRestaurantsInnerAddress from './SearchRestaurants200ResponseRestaurantsInnerAddress';
import SearchRestaurants200ResponseRestaurantsInnerLocalHours from './SearchRestaurants200ResponseRestaurantsInnerLocalHours';

/**
 * The SearchRestaurants200ResponseRestaurantsInner model module.
 * @module model/SearchRestaurants200ResponseRestaurantsInner
 * @version 1.2.0
 */
class SearchRestaurants200ResponseRestaurantsInner {
    /**
     * Constructs a new <code>SearchRestaurants200ResponseRestaurantsInner</code>.
     * @alias module:model/SearchRestaurants200ResponseRestaurantsInner
     */
    constructor() { 
        
        SearchRestaurants200ResponseRestaurantsInner.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>SearchRestaurants200ResponseRestaurantsInner</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/SearchRestaurants200ResponseRestaurantsInner} obj Optional instance to populate.
     * @return {module:model/SearchRestaurants200ResponseRestaurantsInner} The populated <code>SearchRestaurants200ResponseRestaurantsInner</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new SearchRestaurants200ResponseRestaurantsInner();

            if (data.hasOwnProperty('offers_third_party_delivery')) {
                obj['offers_third_party_delivery'] = ApiClient.convertToType(data['offers_third_party_delivery'], 'Boolean');
            }
            if (data.hasOwnProperty('address')) {
                obj['address'] = SearchRestaurants200ResponseRestaurantsInnerAddress.constructFromObject(data['address']);
            }
            if (data.hasOwnProperty('supports_upc_codes')) {
                obj['supports_upc_codes'] = ApiClient.convertToType(data['supports_upc_codes'], 'Boolean');
            }
            if (data.hasOwnProperty('is_open')) {
                obj['is_open'] = ApiClient.convertToType(data['is_open'], 'Boolean');
            }
            if (data.hasOwnProperty('description')) {
                obj['description'] = ApiClient.convertToType(data['description'], 'String');
            }
            if (data.hasOwnProperty('weighted_rating_value')) {
                obj['weighted_rating_value'] = ApiClient.convertToType(data['weighted_rating_value'], 'Number');
            }
            if (data.hasOwnProperty('type')) {
                obj['type'] = ApiClient.convertToType(data['type'], 'String');
            }
            if (data.hasOwnProperty('offers_first_party_delivery')) {
                obj['offers_first_party_delivery'] = ApiClient.convertToType(data['offers_first_party_delivery'], 'Boolean');
            }
            if (data.hasOwnProperty('aggregated_rating_count')) {
                obj['aggregated_rating_count'] = ApiClient.convertToType(data['aggregated_rating_count'], 'Number');
            }
            if (data.hasOwnProperty('pickup_enabled')) {
                obj['pickup_enabled'] = ApiClient.convertToType(data['pickup_enabled'], 'Boolean');
            }
            if (data.hasOwnProperty('cuisines')) {
                obj['cuisines'] = ApiClient.convertToType(data['cuisines'], ['String']);
            }
            if (data.hasOwnProperty('miles')) {
                obj['miles'] = ApiClient.convertToType(data['miles'], 'Number');
            }
            if (data.hasOwnProperty('dollar_signs')) {
                obj['dollar_signs'] = ApiClient.convertToType(data['dollar_signs'], 'Number');
            }
            if (data.hasOwnProperty('delivery_enabled')) {
                obj['delivery_enabled'] = ApiClient.convertToType(data['delivery_enabled'], 'Boolean');
            }
            if (data.hasOwnProperty('name')) {
                obj['name'] = ApiClient.convertToType(data['name'], 'String');
            }
            if (data.hasOwnProperty('phone_number')) {
                obj['phone_number'] = ApiClient.convertToType(data['phone_number'], 'Number');
            }
            if (data.hasOwnProperty('_id')) {
                obj['_id'] = ApiClient.convertToType(data['_id'], 'String');
            }
            if (data.hasOwnProperty('local_hours')) {
                obj['local_hours'] = SearchRestaurants200ResponseRestaurantsInnerLocalHours.constructFromObject(data['local_hours']);
            }
        }
        return obj;
    }

    /**
     * Validates the JSON data with respect to <code>SearchRestaurants200ResponseRestaurantsInner</code>.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @return {boolean} to indicate whether the JSON data is valid with respect to <code>SearchRestaurants200ResponseRestaurantsInner</code>.
     */
    static validateJSON(data) {
        // validate the optional field `address`
        if (data['address']) { // data not null
          SearchRestaurants200ResponseRestaurantsInnerAddress.validateJSON(data['address']);
        }
        // ensure the json data is a string
        if (data['description'] && !(typeof data['description'] === 'string' || data['description'] instanceof String)) {
            throw new Error("Expected the field `description` to be a primitive type in the JSON string but got " + data['description']);
        }
        // ensure the json data is a string
        if (data['type'] && !(typeof data['type'] === 'string' || data['type'] instanceof String)) {
            throw new Error("Expected the field `type` to be a primitive type in the JSON string but got " + data['type']);
        }
        // ensure the json data is an array
        if (!Array.isArray(data['cuisines'])) {
            throw new Error("Expected the field `cuisines` to be an array in the JSON data but got " + data['cuisines']);
        }
        // ensure the json data is a string
        if (data['name'] && !(typeof data['name'] === 'string' || data['name'] instanceof String)) {
            throw new Error("Expected the field `name` to be a primitive type in the JSON string but got " + data['name']);
        }
        // ensure the json data is a string
        if (data['_id'] && !(typeof data['_id'] === 'string' || data['_id'] instanceof String)) {
            throw new Error("Expected the field `_id` to be a primitive type in the JSON string but got " + data['_id']);
        }
        // validate the optional field `local_hours`
        if (data['local_hours']) { // data not null
          SearchRestaurants200ResponseRestaurantsInnerLocalHours.validateJSON(data['local_hours']);
        }

        return true;
    }


}



/**
 * @member {Boolean} offers_third_party_delivery
 */
SearchRestaurants200ResponseRestaurantsInner.prototype['offers_third_party_delivery'] = undefined;

/**
 * @member {module:model/SearchRestaurants200ResponseRestaurantsInnerAddress} address
 */
SearchRestaurants200ResponseRestaurantsInner.prototype['address'] = undefined;

/**
 * @member {Boolean} supports_upc_codes
 */
SearchRestaurants200ResponseRestaurantsInner.prototype['supports_upc_codes'] = undefined;

/**
 * @member {Boolean} is_open
 */
SearchRestaurants200ResponseRestaurantsInner.prototype['is_open'] = undefined;

/**
 * @member {String} description
 */
SearchRestaurants200ResponseRestaurantsInner.prototype['description'] = undefined;

/**
 * @member {Number} weighted_rating_value
 */
SearchRestaurants200ResponseRestaurantsInner.prototype['weighted_rating_value'] = undefined;

/**
 * @member {String} type
 */
SearchRestaurants200ResponseRestaurantsInner.prototype['type'] = undefined;

/**
 * @member {Boolean} offers_first_party_delivery
 */
SearchRestaurants200ResponseRestaurantsInner.prototype['offers_first_party_delivery'] = undefined;

/**
 * @member {Number} aggregated_rating_count
 */
SearchRestaurants200ResponseRestaurantsInner.prototype['aggregated_rating_count'] = undefined;

/**
 * @member {Boolean} pickup_enabled
 */
SearchRestaurants200ResponseRestaurantsInner.prototype['pickup_enabled'] = undefined;

/**
 * @member {Array.<String>} cuisines
 */
SearchRestaurants200ResponseRestaurantsInner.prototype['cuisines'] = undefined;

/**
 * @member {Number} miles
 */
SearchRestaurants200ResponseRestaurantsInner.prototype['miles'] = undefined;

/**
 * @member {Number} dollar_signs
 */
SearchRestaurants200ResponseRestaurantsInner.prototype['dollar_signs'] = undefined;

/**
 * @member {Boolean} delivery_enabled
 */
SearchRestaurants200ResponseRestaurantsInner.prototype['delivery_enabled'] = undefined;

/**
 * @member {String} name
 */
SearchRestaurants200ResponseRestaurantsInner.prototype['name'] = undefined;

/**
 * @member {Number} phone_number
 */
SearchRestaurants200ResponseRestaurantsInner.prototype['phone_number'] = undefined;

/**
 * @member {String} _id
 */
SearchRestaurants200ResponseRestaurantsInner.prototype['_id'] = undefined;

/**
 * @member {module:model/SearchRestaurants200ResponseRestaurantsInnerLocalHours} local_hours
 */
SearchRestaurants200ResponseRestaurantsInner.prototype['local_hours'] = undefined;






export default SearchRestaurants200ResponseRestaurantsInner;

