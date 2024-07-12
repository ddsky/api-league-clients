/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.4.2
 * Contact: mail@apileague.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 *
 */

import ApiClient from '../ApiClient';

/**
 * The ReadKeyValueFromStore200Response model module.
 * @module model/ReadKeyValueFromStore200Response
 * @version 1.4.2
 */
class ReadKeyValueFromStore200Response {
    /**
     * Constructs a new <code>ReadKeyValueFromStore200Response</code>.
     * @alias module:model/ReadKeyValueFromStore200Response
     */
    constructor() { 
        
        ReadKeyValueFromStore200Response.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>ReadKeyValueFromStore200Response</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/ReadKeyValueFromStore200Response} obj Optional instance to populate.
     * @return {module:model/ReadKeyValueFromStore200Response} The populated <code>ReadKeyValueFromStore200Response</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new ReadKeyValueFromStore200Response();

            if (data.hasOwnProperty('value')) {
                obj['value'] = ApiClient.convertToType(data['value'], 'String');
            }
        }
        return obj;
    }

    /**
     * Validates the JSON data with respect to <code>ReadKeyValueFromStore200Response</code>.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @return {boolean} to indicate whether the JSON data is valid with respect to <code>ReadKeyValueFromStore200Response</code>.
     */
    static validateJSON(data) {
        // ensure the json data is a string
        if (data['value'] && !(typeof data['value'] === 'string' || data['value'] instanceof String)) {
            throw new Error("Expected the field `value` to be a primitive type in the JSON string but got " + data['value']);
        }

        return true;
    }


}



/**
 * @member {String} value
 */
ReadKeyValueFromStore200Response.prototype['value'] = undefined;






export default ReadKeyValueFromStore200Response;

