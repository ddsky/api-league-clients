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
 * The RandomTrivia200Response model module.
 * @module model/RandomTrivia200Response
 * @version 1.4.0
 */
class RandomTrivia200Response {
    /**
     * Constructs a new <code>RandomTrivia200Response</code>.
     * @alias module:model/RandomTrivia200Response
     */
    constructor() { 
        
        RandomTrivia200Response.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>RandomTrivia200Response</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/RandomTrivia200Response} obj Optional instance to populate.
     * @return {module:model/RandomTrivia200Response} The populated <code>RandomTrivia200Response</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new RandomTrivia200Response();

            if (data.hasOwnProperty('trivia')) {
                obj['trivia'] = ApiClient.convertToType(data['trivia'], 'String');
            }
        }
        return obj;
    }

    /**
     * Validates the JSON data with respect to <code>RandomTrivia200Response</code>.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @return {boolean} to indicate whether the JSON data is valid with respect to <code>RandomTrivia200Response</code>.
     */
    static validateJSON(data) {
        // ensure the json data is a string
        if (data['trivia'] && !(typeof data['trivia'] === 'string' || data['trivia'] instanceof String)) {
            throw new Error("Expected the field `trivia` to be a primitive type in the JSON string but got " + data['trivia']);
        }

        return true;
    }


}



/**
 * @member {String} trivia
 */
RandomTrivia200Response.prototype['trivia'] = undefined;






export default RandomTrivia200Response;

