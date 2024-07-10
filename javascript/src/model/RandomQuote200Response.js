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
 * The RandomQuote200Response model module.
 * @module model/RandomQuote200Response
 * @version 1.4.0
 */
class RandomQuote200Response {
    /**
     * Constructs a new <code>RandomQuote200Response</code>.
     * @alias module:model/RandomQuote200Response
     */
    constructor() { 
        
        RandomQuote200Response.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>RandomQuote200Response</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/RandomQuote200Response} obj Optional instance to populate.
     * @return {module:model/RandomQuote200Response} The populated <code>RandomQuote200Response</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new RandomQuote200Response();

            if (data.hasOwnProperty('author')) {
                obj['author'] = ApiClient.convertToType(data['author'], 'String');
            }
            if (data.hasOwnProperty('quote')) {
                obj['quote'] = ApiClient.convertToType(data['quote'], 'String');
            }
        }
        return obj;
    }

    /**
     * Validates the JSON data with respect to <code>RandomQuote200Response</code>.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @return {boolean} to indicate whether the JSON data is valid with respect to <code>RandomQuote200Response</code>.
     */
    static validateJSON(data) {
        // ensure the json data is a string
        if (data['author'] && !(typeof data['author'] === 'string' || data['author'] instanceof String)) {
            throw new Error("Expected the field `author` to be a primitive type in the JSON string but got " + data['author']);
        }
        // ensure the json data is a string
        if (data['quote'] && !(typeof data['quote'] === 'string' || data['quote'] instanceof String)) {
            throw new Error("Expected the field `quote` to be a primitive type in the JSON string but got " + data['quote']);
        }

        return true;
    }


}



/**
 * @member {String} author
 */
RandomQuote200Response.prototype['author'] = undefined;

/**
 * @member {String} quote
 */
RandomQuote200Response.prototype['quote'] = undefined;






export default RandomQuote200Response;

