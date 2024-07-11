/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.4.1
 * Contact: mail@apileague.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 *
 */

import ApiClient from '../ApiClient';

/**
 * The DetectLanguage200ResponseInner model module.
 * @module model/DetectLanguage200ResponseInner
 * @version 1.4.1
 */
class DetectLanguage200ResponseInner {
    /**
     * Constructs a new <code>DetectLanguage200ResponseInner</code>.
     * @alias module:model/DetectLanguage200ResponseInner
     */
    constructor() { 
        
        DetectLanguage200ResponseInner.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>DetectLanguage200ResponseInner</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/DetectLanguage200ResponseInner} obj Optional instance to populate.
     * @return {module:model/DetectLanguage200ResponseInner} The populated <code>DetectLanguage200ResponseInner</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new DetectLanguage200ResponseInner();

            if (data.hasOwnProperty('language')) {
                obj['language'] = ApiClient.convertToType(data['language'], 'String');
            }
            if (data.hasOwnProperty('confidence')) {
                obj['confidence'] = ApiClient.convertToType(data['confidence'], 'Number');
            }
        }
        return obj;
    }

    /**
     * Validates the JSON data with respect to <code>DetectLanguage200ResponseInner</code>.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @return {boolean} to indicate whether the JSON data is valid with respect to <code>DetectLanguage200ResponseInner</code>.
     */
    static validateJSON(data) {
        // ensure the json data is a string
        if (data['language'] && !(typeof data['language'] === 'string' || data['language'] instanceof String)) {
            throw new Error("Expected the field `language` to be a primitive type in the JSON string but got " + data['language']);
        }

        return true;
    }


}



/**
 * @member {String} language
 */
DetectLanguage200ResponseInner.prototype['language'] = undefined;

/**
 * @member {Number} confidence
 */
DetectLanguage200ResponseInner.prototype['confidence'] = undefined;






export default DetectLanguage200ResponseInner;

