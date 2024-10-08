/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.6.3
 * Contact: mail@apileague.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 *
 */

import ApiClient from '../ApiClient';
import ExtractDates200ResponseDatesInner from './ExtractDates200ResponseDatesInner';

/**
 * The ExtractDates200Response model module.
 * @module model/ExtractDates200Response
 * @version 1.6.3
 */
class ExtractDates200Response {
    /**
     * Constructs a new <code>ExtractDates200Response</code>.
     * @alias module:model/ExtractDates200Response
     */
    constructor() { 
        
        ExtractDates200Response.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>ExtractDates200Response</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/ExtractDates200Response} obj Optional instance to populate.
     * @return {module:model/ExtractDates200Response} The populated <code>ExtractDates200Response</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new ExtractDates200Response();

            if (data.hasOwnProperty('dates')) {
                obj['dates'] = ApiClient.convertToType(data['dates'], [ExtractDates200ResponseDatesInner]);
            }
        }
        return obj;
    }

    /**
     * Validates the JSON data with respect to <code>ExtractDates200Response</code>.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @return {boolean} to indicate whether the JSON data is valid with respect to <code>ExtractDates200Response</code>.
     */
    static validateJSON(data) {
        if (data['dates']) { // data not null
            // ensure the json data is an array
            if (!Array.isArray(data['dates'])) {
                throw new Error("Expected the field `dates` to be an array in the JSON data but got " + data['dates']);
            }
            // validate the optional field `dates` (array)
            for (const item of data['dates']) {
                ExtractDates200ResponseDatesInner.validateJSON(item);
            };
        }

        return true;
    }


}



/**
 * @member {Array.<module:model/ExtractDates200ResponseDatesInner>} dates
 */
ExtractDates200Response.prototype['dates'] = undefined;






export default ExtractDates200Response;

