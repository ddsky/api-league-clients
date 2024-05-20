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
 * The SearchRestaurants200ResponseRestaurantsInnerAddress model module.
 * @module model/SearchRestaurants200ResponseRestaurantsInnerAddress
 * @version 1.0.0
 */
class SearchRestaurants200ResponseRestaurantsInnerAddress {
    /**
     * Constructs a new <code>SearchRestaurants200ResponseRestaurantsInnerAddress</code>.
     * @alias module:model/SearchRestaurants200ResponseRestaurantsInnerAddress
     */
    constructor() { 
        
        SearchRestaurants200ResponseRestaurantsInnerAddress.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>SearchRestaurants200ResponseRestaurantsInnerAddress</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/SearchRestaurants200ResponseRestaurantsInnerAddress} obj Optional instance to populate.
     * @return {module:model/SearchRestaurants200ResponseRestaurantsInnerAddress} The populated <code>SearchRestaurants200ResponseRestaurantsInnerAddress</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new SearchRestaurants200ResponseRestaurantsInnerAddress();

            if (data.hasOwnProperty('zipcode')) {
                obj['zipcode'] = ApiClient.convertToType(data['zipcode'], 'String');
            }
            if (data.hasOwnProperty('country')) {
                obj['country'] = ApiClient.convertToType(data['country'], 'String');
            }
            if (data.hasOwnProperty('city')) {
                obj['city'] = ApiClient.convertToType(data['city'], 'String');
            }
            if (data.hasOwnProperty('latitude')) {
                obj['latitude'] = ApiClient.convertToType(data['latitude'], 'Number');
            }
            if (data.hasOwnProperty('lon')) {
                obj['lon'] = ApiClient.convertToType(data['lon'], 'Number');
            }
            if (data.hasOwnProperty('street_addr_2')) {
                obj['street_addr_2'] = ApiClient.convertToType(data['street_addr_2'], 'String');
            }
            if (data.hasOwnProperty('state')) {
                obj['state'] = ApiClient.convertToType(data['state'], 'String');
            }
            if (data.hasOwnProperty('street_addr')) {
                obj['street_addr'] = ApiClient.convertToType(data['street_addr'], 'String');
            }
            if (data.hasOwnProperty('lat')) {
                obj['lat'] = ApiClient.convertToType(data['lat'], 'Number');
            }
            if (data.hasOwnProperty('longitude')) {
                obj['longitude'] = ApiClient.convertToType(data['longitude'], 'Number');
            }
        }
        return obj;
    }

    /**
     * Validates the JSON data with respect to <code>SearchRestaurants200ResponseRestaurantsInnerAddress</code>.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @return {boolean} to indicate whether the JSON data is valid with respect to <code>SearchRestaurants200ResponseRestaurantsInnerAddress</code>.
     */
    static validateJSON(data) {
        // ensure the json data is a string
        if (data['zipcode'] && !(typeof data['zipcode'] === 'string' || data['zipcode'] instanceof String)) {
            throw new Error("Expected the field `zipcode` to be a primitive type in the JSON string but got " + data['zipcode']);
        }
        // ensure the json data is a string
        if (data['country'] && !(typeof data['country'] === 'string' || data['country'] instanceof String)) {
            throw new Error("Expected the field `country` to be a primitive type in the JSON string but got " + data['country']);
        }
        // ensure the json data is a string
        if (data['city'] && !(typeof data['city'] === 'string' || data['city'] instanceof String)) {
            throw new Error("Expected the field `city` to be a primitive type in the JSON string but got " + data['city']);
        }
        // ensure the json data is a string
        if (data['street_addr_2'] && !(typeof data['street_addr_2'] === 'string' || data['street_addr_2'] instanceof String)) {
            throw new Error("Expected the field `street_addr_2` to be a primitive type in the JSON string but got " + data['street_addr_2']);
        }
        // ensure the json data is a string
        if (data['state'] && !(typeof data['state'] === 'string' || data['state'] instanceof String)) {
            throw new Error("Expected the field `state` to be a primitive type in the JSON string but got " + data['state']);
        }
        // ensure the json data is a string
        if (data['street_addr'] && !(typeof data['street_addr'] === 'string' || data['street_addr'] instanceof String)) {
            throw new Error("Expected the field `street_addr` to be a primitive type in the JSON string but got " + data['street_addr']);
        }

        return true;
    }


}



/**
 * @member {String} zipcode
 */
SearchRestaurants200ResponseRestaurantsInnerAddress.prototype['zipcode'] = undefined;

/**
 * @member {String} country
 */
SearchRestaurants200ResponseRestaurantsInnerAddress.prototype['country'] = undefined;

/**
 * @member {String} city
 */
SearchRestaurants200ResponseRestaurantsInnerAddress.prototype['city'] = undefined;

/**
 * @member {Number} latitude
 */
SearchRestaurants200ResponseRestaurantsInnerAddress.prototype['latitude'] = undefined;

/**
 * @member {Number} lon
 */
SearchRestaurants200ResponseRestaurantsInnerAddress.prototype['lon'] = undefined;

/**
 * @member {String} street_addr_2
 */
SearchRestaurants200ResponseRestaurantsInnerAddress.prototype['street_addr_2'] = undefined;

/**
 * @member {String} state
 */
SearchRestaurants200ResponseRestaurantsInnerAddress.prototype['state'] = undefined;

/**
 * @member {String} street_addr
 */
SearchRestaurants200ResponseRestaurantsInnerAddress.prototype['street_addr'] = undefined;

/**
 * @member {Number} lat
 */
SearchRestaurants200ResponseRestaurantsInnerAddress.prototype['lat'] = undefined;

/**
 * @member {Number} longitude
 */
SearchRestaurants200ResponseRestaurantsInnerAddress.prototype['longitude'] = undefined;






export default SearchRestaurants200ResponseRestaurantsInnerAddress;

