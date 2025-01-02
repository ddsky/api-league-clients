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
import ExtractDatesAPI200ResponseDatesInner from './ExtractDatesAPI200ResponseDatesInner';

/**
 * The ExtractDatesAPI200Response model module.
 * @module model/ExtractDatesAPI200Response
 * @version 1.6.4
 */
class ExtractDatesAPI200Response {
    /**
     * Constructs a new <code>ExtractDatesAPI200Response</code>.
     * @alias module:model/ExtractDatesAPI200Response
     */
    constructor() { 
        
        ExtractDatesAPI200Response.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>ExtractDatesAPI200Response</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/ExtractDatesAPI200Response} obj Optional instance to populate.
     * @return {module:model/ExtractDatesAPI200Response} The populated <code>ExtractDatesAPI200Response</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new ExtractDatesAPI200Response();

            if (data.hasOwnProperty('dates')) {
                obj['dates'] = ApiClient.convertToType(data['dates'], [ExtractDatesAPI200ResponseDatesInner]);
            }
        }
        return obj;
    }

    /**
     * Validates the JSON data with respect to <code>ExtractDatesAPI200Response</code>.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @return {boolean} to indicate whether the JSON data is valid with respect to <code>ExtractDatesAPI200Response</code>.
     */
    static validateJSON(data) {
        if (data['dates']) { // data not null
            // ensure the json data is an array
            if (!Array.isArray(data['dates'])) {
                throw new Error("Expected the field `dates` to be an array in the JSON data but got " + data['dates']);
            }
            // validate the optional field `dates` (array)
            for (const item of data['dates']) {
                ExtractDatesAPI200ResponseDatesInner.validateJSON(item);
            };
        }

        return true;
    }


}



/**
 * @member {Array.<module:model/ExtractDatesAPI200ResponseDatesInner>} dates
 */
ExtractDatesAPI200Response.prototype['dates'] = undefined;






export default ExtractDatesAPI200Response;

