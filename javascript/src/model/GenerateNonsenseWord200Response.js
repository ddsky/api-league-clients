/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.0
 * Contact: mail@apileague.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 *
 */

import ApiClient from '../ApiClient';

/**
 * The GenerateNonsenseWord200Response model module.
 * @module model/GenerateNonsenseWord200Response
 * @version 1.0
 */
class GenerateNonsenseWord200Response {
    /**
     * Constructs a new <code>GenerateNonsenseWord200Response</code>.
     * @alias module:model/GenerateNonsenseWord200Response
     */
    constructor() { 
        
        GenerateNonsenseWord200Response.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>GenerateNonsenseWord200Response</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/GenerateNonsenseWord200Response} obj Optional instance to populate.
     * @return {module:model/GenerateNonsenseWord200Response} The populated <code>GenerateNonsenseWord200Response</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new GenerateNonsenseWord200Response();

            if (data.hasOwnProperty('word')) {
                obj['word'] = ApiClient.convertToType(data['word'], 'String');
            }
            if (data.hasOwnProperty('rating')) {
                obj['rating'] = ApiClient.convertToType(data['rating'], 'Number');
            }
        }
        return obj;
    }

    /**
     * Validates the JSON data with respect to <code>GenerateNonsenseWord200Response</code>.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @return {boolean} to indicate whether the JSON data is valid with respect to <code>GenerateNonsenseWord200Response</code>.
     */
    static validateJSON(data) {
        // ensure the json data is a string
        if (data['word'] && !(typeof data['word'] === 'string' || data['word'] instanceof String)) {
            throw new Error("Expected the field `word` to be a primitive type in the JSON string but got " + data['word']);
        }

        return true;
    }


}



/**
 * @member {String} word
 */
GenerateNonsenseWord200Response.prototype['word'] = undefined;

/**
 * @member {Number} rating
 */
GenerateNonsenseWord200Response.prototype['rating'] = undefined;






export default GenerateNonsenseWord200Response;

