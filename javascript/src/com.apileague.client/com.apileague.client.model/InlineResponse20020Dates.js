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

import ApiClient from '../ApiClient';
import Null from './Null';

/**
 * The InlineResponse20020Dates model module.
 * @module com.apileague.client/com.apileague.client.model/InlineResponse20020Dates
 * @version 1.0
 */
class InlineResponse20020Dates {
    /**
     * Constructs a new <code>InlineResponse20020Dates</code>.
     * @alias module:com.apileague.client/com.apileague.client.model/InlineResponse20020Dates
     */
    constructor() { 
        
        InlineResponse20020Dates.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>InlineResponse20020Dates</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:com.apileague.client/com.apileague.client.model/InlineResponse20020Dates} obj Optional instance to populate.
     * @return {module:com.apileague.client/com.apileague.client.model/InlineResponse20020Dates} The populated <code>InlineResponse20020Dates</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new InlineResponse20020Dates();

            if (data.hasOwnProperty('start_position')) {
                obj['start_position'] = ApiClient.convertToType(data['start_position'], 'Number');
            }
            if (data.hasOwnProperty('date')) {
                obj['date'] = ApiClient.convertToType(data['date'], 'String');
            }
            if (data.hasOwnProperty('normalized_date')) {
                obj['normalized_date'] = ApiClient.convertToType(data['normalized_date'], Null);
            }
            if (data.hasOwnProperty('tag')) {
                obj['tag'] = ApiClient.convertToType(data['tag'], 'String');
            }
            if (data.hasOwnProperty('end_position')) {
                obj['end_position'] = ApiClient.convertToType(data['end_position'], 'Number');
            }
        }
        return obj;
    }


}

/**
 * @member {Number} start_position
 */
InlineResponse20020Dates.prototype['start_position'] = undefined;

/**
 * @member {String} date
 */
InlineResponse20020Dates.prototype['date'] = undefined;

/**
 * @member {module:com.apileague.client/com.apileague.client.model/Null} normalized_date
 */
InlineResponse20020Dates.prototype['normalized_date'] = undefined;

/**
 * @member {String} tag
 */
InlineResponse20020Dates.prototype['tag'] = undefined;

/**
 * @member {Number} end_position
 */
InlineResponse20020Dates.prototype['end_position'] = undefined;






export default InlineResponse20020Dates;

