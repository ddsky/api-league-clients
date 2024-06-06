/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.2.0
 * Contact: mail@apileague.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 *
 */

import ApiClient from '../ApiClient';

/**
 * The ListWordSynonyms200Response model module.
 * @module model/ListWordSynonyms200Response
 * @version 1.2.0
 */
class ListWordSynonyms200Response {
    /**
     * Constructs a new <code>ListWordSynonyms200Response</code>.
     * @alias module:model/ListWordSynonyms200Response
     */
    constructor() { 
        
        ListWordSynonyms200Response.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>ListWordSynonyms200Response</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/ListWordSynonyms200Response} obj Optional instance to populate.
     * @return {module:model/ListWordSynonyms200Response} The populated <code>ListWordSynonyms200Response</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new ListWordSynonyms200Response();

            if (data.hasOwnProperty('synonyms')) {
                obj['synonyms'] = ApiClient.convertToType(data['synonyms'], ['String']);
            }
        }
        return obj;
    }

    /**
     * Validates the JSON data with respect to <code>ListWordSynonyms200Response</code>.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @return {boolean} to indicate whether the JSON data is valid with respect to <code>ListWordSynonyms200Response</code>.
     */
    static validateJSON(data) {
        // ensure the json data is an array
        if (!Array.isArray(data['synonyms'])) {
            throw new Error("Expected the field `synonyms` to be an array in the JSON data but got " + data['synonyms']);
        }

        return true;
    }


}



/**
 * @member {Array.<String>} synonyms
 */
ListWordSynonyms200Response.prototype['synonyms'] = undefined;






export default ListWordSynonyms200Response;

