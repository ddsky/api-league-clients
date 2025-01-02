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
 * The RetrieveRecipeInformationAPI200ResponseCredits model module.
 * @module model/RetrieveRecipeInformationAPI200ResponseCredits
 * @version 1.6.4
 */
class RetrieveRecipeInformationAPI200ResponseCredits {
    /**
     * Constructs a new <code>RetrieveRecipeInformationAPI200ResponseCredits</code>.
     * @alias module:model/RetrieveRecipeInformationAPI200ResponseCredits
     */
    constructor() { 
        
        RetrieveRecipeInformationAPI200ResponseCredits.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>RetrieveRecipeInformationAPI200ResponseCredits</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/RetrieveRecipeInformationAPI200ResponseCredits} obj Optional instance to populate.
     * @return {module:model/RetrieveRecipeInformationAPI200ResponseCredits} The populated <code>RetrieveRecipeInformationAPI200ResponseCredits</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new RetrieveRecipeInformationAPI200ResponseCredits();

            if (data.hasOwnProperty('license')) {
                obj['license'] = ApiClient.convertToType(data['license'], 'String');
            }
            if (data.hasOwnProperty('text')) {
                obj['text'] = ApiClient.convertToType(data['text'], 'String');
            }
            if (data.hasOwnProperty('source_name')) {
                obj['source_name'] = ApiClient.convertToType(data['source_name'], 'String');
            }
            if (data.hasOwnProperty('source_url')) {
                obj['source_url'] = ApiClient.convertToType(data['source_url'], 'String');
            }
        }
        return obj;
    }

    /**
     * Validates the JSON data with respect to <code>RetrieveRecipeInformationAPI200ResponseCredits</code>.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @return {boolean} to indicate whether the JSON data is valid with respect to <code>RetrieveRecipeInformationAPI200ResponseCredits</code>.
     */
    static validateJSON(data) {
        // ensure the json data is a string
        if (data['license'] && !(typeof data['license'] === 'string' || data['license'] instanceof String)) {
            throw new Error("Expected the field `license` to be a primitive type in the JSON string but got " + data['license']);
        }
        // ensure the json data is a string
        if (data['text'] && !(typeof data['text'] === 'string' || data['text'] instanceof String)) {
            throw new Error("Expected the field `text` to be a primitive type in the JSON string but got " + data['text']);
        }
        // ensure the json data is a string
        if (data['source_name'] && !(typeof data['source_name'] === 'string' || data['source_name'] instanceof String)) {
            throw new Error("Expected the field `source_name` to be a primitive type in the JSON string but got " + data['source_name']);
        }
        // ensure the json data is a string
        if (data['source_url'] && !(typeof data['source_url'] === 'string' || data['source_url'] instanceof String)) {
            throw new Error("Expected the field `source_url` to be a primitive type in the JSON string but got " + data['source_url']);
        }

        return true;
    }


}



/**
 * @member {String} license
 */
RetrieveRecipeInformationAPI200ResponseCredits.prototype['license'] = undefined;

/**
 * @member {String} text
 */
RetrieveRecipeInformationAPI200ResponseCredits.prototype['text'] = undefined;

/**
 * @member {String} source_name
 */
RetrieveRecipeInformationAPI200ResponseCredits.prototype['source_name'] = undefined;

/**
 * @member {String} source_url
 */
RetrieveRecipeInformationAPI200ResponseCredits.prototype['source_url'] = undefined;






export default RetrieveRecipeInformationAPI200ResponseCredits;
