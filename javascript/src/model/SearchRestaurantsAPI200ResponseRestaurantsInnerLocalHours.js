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
import SearchRestaurantsAPI200ResponseRestaurantsInnerLocalHoursOperational from './SearchRestaurantsAPI200ResponseRestaurantsInnerLocalHoursOperational';

/**
 * The SearchRestaurantsAPI200ResponseRestaurantsInnerLocalHours model module.
 * @module model/SearchRestaurantsAPI200ResponseRestaurantsInnerLocalHours
 * @version 1.6.4
 */
class SearchRestaurantsAPI200ResponseRestaurantsInnerLocalHours {
    /**
     * Constructs a new <code>SearchRestaurantsAPI200ResponseRestaurantsInnerLocalHours</code>.
     * @alias module:model/SearchRestaurantsAPI200ResponseRestaurantsInnerLocalHours
     */
    constructor() { 
        
        SearchRestaurantsAPI200ResponseRestaurantsInnerLocalHours.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>SearchRestaurantsAPI200ResponseRestaurantsInnerLocalHours</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/SearchRestaurantsAPI200ResponseRestaurantsInnerLocalHours} obj Optional instance to populate.
     * @return {module:model/SearchRestaurantsAPI200ResponseRestaurantsInnerLocalHours} The populated <code>SearchRestaurantsAPI200ResponseRestaurantsInnerLocalHours</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new SearchRestaurantsAPI200ResponseRestaurantsInnerLocalHours();

            if (data.hasOwnProperty('operational')) {
                obj['operational'] = SearchRestaurantsAPI200ResponseRestaurantsInnerLocalHoursOperational.constructFromObject(data['operational']);
            }
            if (data.hasOwnProperty('delivery')) {
                obj['delivery'] = SearchRestaurantsAPI200ResponseRestaurantsInnerLocalHoursOperational.constructFromObject(data['delivery']);
            }
            if (data.hasOwnProperty('pickup')) {
                obj['pickup'] = SearchRestaurantsAPI200ResponseRestaurantsInnerLocalHoursOperational.constructFromObject(data['pickup']);
            }
            if (data.hasOwnProperty('dine_in')) {
                obj['dine_in'] = SearchRestaurantsAPI200ResponseRestaurantsInnerLocalHoursOperational.constructFromObject(data['dine_in']);
            }
        }
        return obj;
    }

    /**
     * Validates the JSON data with respect to <code>SearchRestaurantsAPI200ResponseRestaurantsInnerLocalHours</code>.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @return {boolean} to indicate whether the JSON data is valid with respect to <code>SearchRestaurantsAPI200ResponseRestaurantsInnerLocalHours</code>.
     */
    static validateJSON(data) {
        // validate the optional field `operational`
        if (data['operational']) { // data not null
          SearchRestaurantsAPI200ResponseRestaurantsInnerLocalHoursOperational.validateJSON(data['operational']);
        }
        // validate the optional field `delivery`
        if (data['delivery']) { // data not null
          SearchRestaurantsAPI200ResponseRestaurantsInnerLocalHoursOperational.validateJSON(data['delivery']);
        }
        // validate the optional field `pickup`
        if (data['pickup']) { // data not null
          SearchRestaurantsAPI200ResponseRestaurantsInnerLocalHoursOperational.validateJSON(data['pickup']);
        }
        // validate the optional field `dine_in`
        if (data['dine_in']) { // data not null
          SearchRestaurantsAPI200ResponseRestaurantsInnerLocalHoursOperational.validateJSON(data['dine_in']);
        }

        return true;
    }


}



/**
 * @member {module:model/SearchRestaurantsAPI200ResponseRestaurantsInnerLocalHoursOperational} operational
 */
SearchRestaurantsAPI200ResponseRestaurantsInnerLocalHours.prototype['operational'] = undefined;

/**
 * @member {module:model/SearchRestaurantsAPI200ResponseRestaurantsInnerLocalHoursOperational} delivery
 */
SearchRestaurantsAPI200ResponseRestaurantsInnerLocalHours.prototype['delivery'] = undefined;

/**
 * @member {module:model/SearchRestaurantsAPI200ResponseRestaurantsInnerLocalHoursOperational} pickup
 */
SearchRestaurantsAPI200ResponseRestaurantsInnerLocalHours.prototype['pickup'] = undefined;

/**
 * @member {module:model/SearchRestaurantsAPI200ResponseRestaurantsInnerLocalHoursOperational} dine_in
 */
SearchRestaurantsAPI200ResponseRestaurantsInnerLocalHours.prototype['dine_in'] = undefined;






export default SearchRestaurantsAPI200ResponseRestaurantsInnerLocalHours;
