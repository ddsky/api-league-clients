/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.6.2
 * Contact: mail@apileague.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 *
 */

import ApiClient from '../ApiClient';

/**
 * The RandomRiddle200Response model module.
 * @module model/RandomRiddle200Response
 * @version 1.6.2
 */
class RandomRiddle200Response {
    /**
     * Constructs a new <code>RandomRiddle200Response</code>.
     * @alias module:model/RandomRiddle200Response
     */
    constructor() { 
        
        RandomRiddle200Response.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>RandomRiddle200Response</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/RandomRiddle200Response} obj Optional instance to populate.
     * @return {module:model/RandomRiddle200Response} The populated <code>RandomRiddle200Response</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new RandomRiddle200Response();

            if (data.hasOwnProperty('riddle')) {
                obj['riddle'] = ApiClient.convertToType(data['riddle'], 'String');
            }
            if (data.hasOwnProperty('answer')) {
                obj['answer'] = ApiClient.convertToType(data['answer'], 'String');
            }
            if (data.hasOwnProperty('difficulty')) {
                obj['difficulty'] = ApiClient.convertToType(data['difficulty'], 'String');
            }
        }
        return obj;
    }

    /**
     * Validates the JSON data with respect to <code>RandomRiddle200Response</code>.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @return {boolean} to indicate whether the JSON data is valid with respect to <code>RandomRiddle200Response</code>.
     */
    static validateJSON(data) {
        // ensure the json data is a string
        if (data['riddle'] && !(typeof data['riddle'] === 'string' || data['riddle'] instanceof String)) {
            throw new Error("Expected the field `riddle` to be a primitive type in the JSON string but got " + data['riddle']);
        }
        // ensure the json data is a string
        if (data['answer'] && !(typeof data['answer'] === 'string' || data['answer'] instanceof String)) {
            throw new Error("Expected the field `answer` to be a primitive type in the JSON string but got " + data['answer']);
        }
        // ensure the json data is a string
        if (data['difficulty'] && !(typeof data['difficulty'] === 'string' || data['difficulty'] instanceof String)) {
            throw new Error("Expected the field `difficulty` to be a primitive type in the JSON string but got " + data['difficulty']);
        }

        return true;
    }


}



/**
 * @member {String} riddle
 */
RandomRiddle200Response.prototype['riddle'] = undefined;

/**
 * @member {String} answer
 */
RandomRiddle200Response.prototype['answer'] = undefined;

/**
 * @member {String} difficulty
 */
RandomRiddle200Response.prototype['difficulty'] = undefined;






export default RandomRiddle200Response;

