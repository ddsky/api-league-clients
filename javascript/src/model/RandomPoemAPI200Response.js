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
 * The RandomPoemAPI200Response model module.
 * @module model/RandomPoemAPI200Response
 * @version 1.6.4
 */
class RandomPoemAPI200Response {
    /**
     * Constructs a new <code>RandomPoemAPI200Response</code>.
     * @alias module:model/RandomPoemAPI200Response
     */
    constructor() { 
        
        RandomPoemAPI200Response.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>RandomPoemAPI200Response</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/RandomPoemAPI200Response} obj Optional instance to populate.
     * @return {module:model/RandomPoemAPI200Response} The populated <code>RandomPoemAPI200Response</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new RandomPoemAPI200Response();

            if (data.hasOwnProperty('title')) {
                obj['title'] = ApiClient.convertToType(data['title'], 'String');
            }
            if (data.hasOwnProperty('author')) {
                obj['author'] = ApiClient.convertToType(data['author'], 'String');
            }
            if (data.hasOwnProperty('poem')) {
                obj['poem'] = ApiClient.convertToType(data['poem'], 'String');
            }
        }
        return obj;
    }

    /**
     * Validates the JSON data with respect to <code>RandomPoemAPI200Response</code>.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @return {boolean} to indicate whether the JSON data is valid with respect to <code>RandomPoemAPI200Response</code>.
     */
    static validateJSON(data) {
        // ensure the json data is a string
        if (data['title'] && !(typeof data['title'] === 'string' || data['title'] instanceof String)) {
            throw new Error("Expected the field `title` to be a primitive type in the JSON string but got " + data['title']);
        }
        // ensure the json data is a string
        if (data['author'] && !(typeof data['author'] === 'string' || data['author'] instanceof String)) {
            throw new Error("Expected the field `author` to be a primitive type in the JSON string but got " + data['author']);
        }
        // ensure the json data is a string
        if (data['poem'] && !(typeof data['poem'] === 'string' || data['poem'] instanceof String)) {
            throw new Error("Expected the field `poem` to be a primitive type in the JSON string but got " + data['poem']);
        }

        return true;
    }


}



/**
 * @member {String} title
 */
RandomPoemAPI200Response.prototype['title'] = undefined;

/**
 * @member {String} author
 */
RandomPoemAPI200Response.prototype['author'] = undefined;

/**
 * @member {String} poem
 */
RandomPoemAPI200Response.prototype['poem'] = undefined;






export default RandomPoemAPI200Response;

