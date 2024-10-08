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

/**
 * The ExtractDates200ResponseDatesInner model module.
 * @module model/ExtractDates200ResponseDatesInner
 * @version 1.6.3
 */
class ExtractDates200ResponseDatesInner {
    /**
     * Constructs a new <code>ExtractDates200ResponseDatesInner</code>.
     * @alias module:model/ExtractDates200ResponseDatesInner
     */
    constructor() { 
        
        ExtractDates200ResponseDatesInner.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>ExtractDates200ResponseDatesInner</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/ExtractDates200ResponseDatesInner} obj Optional instance to populate.
     * @return {module:model/ExtractDates200ResponseDatesInner} The populated <code>ExtractDates200ResponseDatesInner</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new ExtractDates200ResponseDatesInner();

            if (data.hasOwnProperty('start_position')) {
                obj['start_position'] = ApiClient.convertToType(data['start_position'], 'Number');
            }
            if (data.hasOwnProperty('date')) {
                obj['date'] = ApiClient.convertToType(data['date'], 'String');
            }
            if (data.hasOwnProperty('normalized_date')) {
                obj['normalized_date'] = ApiClient.convertToType(data['normalized_date'], 'Number');
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

    /**
     * Validates the JSON data with respect to <code>ExtractDates200ResponseDatesInner</code>.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @return {boolean} to indicate whether the JSON data is valid with respect to <code>ExtractDates200ResponseDatesInner</code>.
     */
    static validateJSON(data) {
        // ensure the json data is a string
        if (data['date'] && !(typeof data['date'] === 'string' || data['date'] instanceof String)) {
            throw new Error("Expected the field `date` to be a primitive type in the JSON string but got " + data['date']);
        }
        // ensure the json data is a string
        if (data['tag'] && !(typeof data['tag'] === 'string' || data['tag'] instanceof String)) {
            throw new Error("Expected the field `tag` to be a primitive type in the JSON string but got " + data['tag']);
        }

        return true;
    }


}



/**
 * @member {Number} start_position
 */
ExtractDates200ResponseDatesInner.prototype['start_position'] = undefined;

/**
 * @member {String} date
 */
ExtractDates200ResponseDatesInner.prototype['date'] = undefined;

/**
 * @member {Number} normalized_date
 */
ExtractDates200ResponseDatesInner.prototype['normalized_date'] = undefined;

/**
 * @member {String} tag
 */
ExtractDates200ResponseDatesInner.prototype['tag'] = undefined;

/**
 * @member {Number} end_position
 */
ExtractDates200ResponseDatesInner.prototype['end_position'] = undefined;






export default ExtractDates200ResponseDatesInner;

