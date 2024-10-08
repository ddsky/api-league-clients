/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.6.3
 * Contact: mail@apileague.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 *
 */

import ApiClient from '../ApiClient';

/**
 * The TagPartOfSpeech200Response model module.
 * @module model/TagPartOfSpeech200Response
 * @version 1.6.3
 */
class TagPartOfSpeech200Response {
    /**
     * Constructs a new <code>TagPartOfSpeech200Response</code>.
     * @alias module:model/TagPartOfSpeech200Response
     */
    constructor() { 
        
        TagPartOfSpeech200Response.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>TagPartOfSpeech200Response</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/TagPartOfSpeech200Response} obj Optional instance to populate.
     * @return {module:model/TagPartOfSpeech200Response} The populated <code>TagPartOfSpeech200Response</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new TagPartOfSpeech200Response();

            if (data.hasOwnProperty('tagged_text')) {
                obj['tagged_text'] = ApiClient.convertToType(data['tagged_text'], 'String');
            }
        }
        return obj;
    }

    /**
     * Validates the JSON data with respect to <code>TagPartOfSpeech200Response</code>.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @return {boolean} to indicate whether the JSON data is valid with respect to <code>TagPartOfSpeech200Response</code>.
     */
    static validateJSON(data) {
        // ensure the json data is a string
        if (data['tagged_text'] && !(typeof data['tagged_text'] === 'string' || data['tagged_text'] instanceof String)) {
            throw new Error("Expected the field `tagged_text` to be a primitive type in the JSON string but got " + data['tagged_text']);
        }

        return true;
    }


}



/**
 * @member {String} tagged_text
 */
TagPartOfSpeech200Response.prototype['tagged_text'] = undefined;






export default TagPartOfSpeech200Response;

