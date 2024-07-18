/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.5.0
 * Contact: mail@apileague.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 *
 */

import ApiClient from '../ApiClient';

/**
 * The SingularizeWord200Response model module.
 * @module model/SingularizeWord200Response
 * @version 1.5.0
 */
class SingularizeWord200Response {
    /**
     * Constructs a new <code>SingularizeWord200Response</code>.
     * @alias module:model/SingularizeWord200Response
     */
    constructor() { 
        
        SingularizeWord200Response.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>SingularizeWord200Response</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/SingularizeWord200Response} obj Optional instance to populate.
     * @return {module:model/SingularizeWord200Response} The populated <code>SingularizeWord200Response</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new SingularizeWord200Response();

            if (data.hasOwnProperty('original')) {
                obj['original'] = ApiClient.convertToType(data['original'], 'String');
            }
            if (data.hasOwnProperty('singular')) {
                obj['singular'] = ApiClient.convertToType(data['singular'], 'String');
            }
        }
        return obj;
    }

    /**
     * Validates the JSON data with respect to <code>SingularizeWord200Response</code>.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @return {boolean} to indicate whether the JSON data is valid with respect to <code>SingularizeWord200Response</code>.
     */
    static validateJSON(data) {
        // ensure the json data is a string
        if (data['original'] && !(typeof data['original'] === 'string' || data['original'] instanceof String)) {
            throw new Error("Expected the field `original` to be a primitive type in the JSON string but got " + data['original']);
        }
        // ensure the json data is a string
        if (data['singular'] && !(typeof data['singular'] === 'string' || data['singular'] instanceof String)) {
            throw new Error("Expected the field `singular` to be a primitive type in the JSON string but got " + data['singular']);
        }

        return true;
    }


}



/**
 * @member {String} original
 */
SingularizeWord200Response.prototype['original'] = undefined;

/**
 * @member {String} singular
 */
SingularizeWord200Response.prototype['singular'] = undefined;






export default SingularizeWord200Response;

