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
 * The DetectMainImageColor200ResponseInner model module.
 * @module model/DetectMainImageColor200ResponseInner
 * @version 1.0.0
 */
class DetectMainImageColor200ResponseInner {
    /**
     * Constructs a new <code>DetectMainImageColor200ResponseInner</code>.
     * @alias module:model/DetectMainImageColor200ResponseInner
     */
    constructor() { 
        
        DetectMainImageColor200ResponseInner.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>DetectMainImageColor200ResponseInner</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/DetectMainImageColor200ResponseInner} obj Optional instance to populate.
     * @return {module:model/DetectMainImageColor200ResponseInner} The populated <code>DetectMainImageColor200ResponseInner</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new DetectMainImageColor200ResponseInner();

            if (data.hasOwnProperty('specific_color')) {
                obj['specific_color'] = ApiClient.convertToType(data['specific_color'], 'String');
            }
            if (data.hasOwnProperty('main_color')) {
                obj['main_color'] = ApiClient.convertToType(data['main_color'], 'String');
            }
            if (data.hasOwnProperty('hex_code')) {
                obj['hex_code'] = ApiClient.convertToType(data['hex_code'], 'String');
            }
        }
        return obj;
    }

    /**
     * Validates the JSON data with respect to <code>DetectMainImageColor200ResponseInner</code>.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @return {boolean} to indicate whether the JSON data is valid with respect to <code>DetectMainImageColor200ResponseInner</code>.
     */
    static validateJSON(data) {
        // ensure the json data is a string
        if (data['specific_color'] && !(typeof data['specific_color'] === 'string' || data['specific_color'] instanceof String)) {
            throw new Error("Expected the field `specific_color` to be a primitive type in the JSON string but got " + data['specific_color']);
        }
        // ensure the json data is a string
        if (data['main_color'] && !(typeof data['main_color'] === 'string' || data['main_color'] instanceof String)) {
            throw new Error("Expected the field `main_color` to be a primitive type in the JSON string but got " + data['main_color']);
        }
        // ensure the json data is a string
        if (data['hex_code'] && !(typeof data['hex_code'] === 'string' || data['hex_code'] instanceof String)) {
            throw new Error("Expected the field `hex_code` to be a primitive type in the JSON string but got " + data['hex_code']);
        }

        return true;
    }


}



/**
 * @member {String} specific_color
 */
DetectMainImageColor200ResponseInner.prototype['specific_color'] = undefined;

/**
 * @member {String} main_color
 */
DetectMainImageColor200ResponseInner.prototype['main_color'] = undefined;

/**
 * @member {String} hex_code
 */
DetectMainImageColor200ResponseInner.prototype['hex_code'] = undefined;






export default DetectMainImageColor200ResponseInner;

