/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.3.0
 * Contact: mail@apileague.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 *
 */

import ApiClient from '../ApiClient';

/**
 * The CorrectSpelling200Response model module.
 * @module model/CorrectSpelling200Response
 * @version 1.3.0
 */
class CorrectSpelling200Response {
    /**
     * Constructs a new <code>CorrectSpelling200Response</code>.
     * @alias module:model/CorrectSpelling200Response
     */
    constructor() { 
        
        CorrectSpelling200Response.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>CorrectSpelling200Response</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/CorrectSpelling200Response} obj Optional instance to populate.
     * @return {module:model/CorrectSpelling200Response} The populated <code>CorrectSpelling200Response</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new CorrectSpelling200Response();

            if (data.hasOwnProperty('corrected_text')) {
                obj['corrected_text'] = ApiClient.convertToType(data['corrected_text'], 'String');
            }
        }
        return obj;
    }

    /**
     * Validates the JSON data with respect to <code>CorrectSpelling200Response</code>.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @return {boolean} to indicate whether the JSON data is valid with respect to <code>CorrectSpelling200Response</code>.
     */
    static validateJSON(data) {
        // ensure the json data is a string
        if (data['corrected_text'] && !(typeof data['corrected_text'] === 'string' || data['corrected_text'] instanceof String)) {
            throw new Error("Expected the field `corrected_text` to be a primitive type in the JSON string but got " + data['corrected_text']);
        }

        return true;
    }


}



/**
 * @member {String} corrected_text
 */
CorrectSpelling200Response.prototype['corrected_text'] = undefined;






export default CorrectSpelling200Response;

