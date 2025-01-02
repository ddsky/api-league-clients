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

/**
 * The DetectGenderByNameAPI200Response model module.
 * @module model/DetectGenderByNameAPI200Response
 * @version 1.6.4
 */
class DetectGenderByNameAPI200Response {
    /**
     * Constructs a new <code>DetectGenderByNameAPI200Response</code>.
     * @alias module:model/DetectGenderByNameAPI200Response
     */
    constructor() { 
        
        DetectGenderByNameAPI200Response.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>DetectGenderByNameAPI200Response</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/DetectGenderByNameAPI200Response} obj Optional instance to populate.
     * @return {module:model/DetectGenderByNameAPI200Response} The populated <code>DetectGenderByNameAPI200Response</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new DetectGenderByNameAPI200Response();

            if (data.hasOwnProperty('name')) {
                obj['name'] = ApiClient.convertToType(data['name'], 'String');
            }
            if (data.hasOwnProperty('probability_male')) {
                obj['probability_male'] = ApiClient.convertToType(data['probability_male'], 'Number');
            }
            if (data.hasOwnProperty('probability_female')) {
                obj['probability_female'] = ApiClient.convertToType(data['probability_female'], 'Number');
            }
            if (data.hasOwnProperty('popularity')) {
                obj['popularity'] = ApiClient.convertToType(data['popularity'], 'Number');
            }
        }
        return obj;
    }

    /**
     * Validates the JSON data with respect to <code>DetectGenderByNameAPI200Response</code>.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @return {boolean} to indicate whether the JSON data is valid with respect to <code>DetectGenderByNameAPI200Response</code>.
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
DetectGenderByNameAPI200Response.prototype['name'] = undefined;

/**
 * @member {Number} probability_male
 */
DetectGenderByNameAPI200Response.prototype['probability_male'] = undefined;

/**
 * @member {Number} probability_female
 */
DetectGenderByNameAPI200Response.prototype['probability_female'] = undefined;

/**
 * @member {Number} popularity
 */
DetectGenderByNameAPI200Response.prototype['popularity'] = undefined;






export default DetectGenderByNameAPI200Response;

