/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.4.0
 * Contact: mail@apileague.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 *
 */

import ApiClient from '../ApiClient';

/**
 * The DetectGenderByName200Response model module.
 * @module model/DetectGenderByName200Response
 * @version 1.4.0
 */
class DetectGenderByName200Response {
    /**
     * Constructs a new <code>DetectGenderByName200Response</code>.
     * @alias module:model/DetectGenderByName200Response
     */
    constructor() { 
        
        DetectGenderByName200Response.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>DetectGenderByName200Response</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/DetectGenderByName200Response} obj Optional instance to populate.
     * @return {module:model/DetectGenderByName200Response} The populated <code>DetectGenderByName200Response</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new DetectGenderByName200Response();

            if (data.hasOwnProperty('name')) {
                obj['name'] = ApiClient.convertToType(data['name'], 'String');
            }
            if (data.hasOwnProperty('probability_male')) {
                obj['probability_male'] = ApiClient.convertToType(data['probability_male'], 'Number');
            }
        }
        return obj;
    }

    /**
     * Validates the JSON data with respect to <code>DetectGenderByName200Response</code>.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @return {boolean} to indicate whether the JSON data is valid with respect to <code>DetectGenderByName200Response</code>.
     */
    static validateJSON(data) {
        // ensure the json data is a string
        if (data['name'] && !(typeof data['name'] === 'string' || data['name'] instanceof String)) {
            throw new Error("Expected the field `name` to be a primitive type in the JSON string but got " + data['name']);
        }

        return true;
    }


}



/**
 * @member {String} name
 */
DetectGenderByName200Response.prototype['name'] = undefined;

/**
 * @member {Number} probability_male
 */
DetectGenderByName200Response.prototype['probability_male'] = undefined;






export default DetectGenderByName200Response;

