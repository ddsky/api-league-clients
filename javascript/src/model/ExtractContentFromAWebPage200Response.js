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
 * The ExtractContentFromAWebPage200Response model module.
 * @module model/ExtractContentFromAWebPage200Response
 * @version 1.6.3
 */
class ExtractContentFromAWebPage200Response {
    /**
     * Constructs a new <code>ExtractContentFromAWebPage200Response</code>.
     * @alias module:model/ExtractContentFromAWebPage200Response
     */
    constructor() { 
        
        ExtractContentFromAWebPage200Response.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>ExtractContentFromAWebPage200Response</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/ExtractContentFromAWebPage200Response} obj Optional instance to populate.
     * @return {module:model/ExtractContentFromAWebPage200Response} The populated <code>ExtractContentFromAWebPage200Response</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new ExtractContentFromAWebPage200Response();

            if (data.hasOwnProperty('title')) {
                obj['title'] = ApiClient.convertToType(data['title'], 'String');
            }
            if (data.hasOwnProperty('main_text')) {
                obj['main_text'] = ApiClient.convertToType(data['main_text'], 'String');
            }
            if (data.hasOwnProperty('main_html')) {
                obj['main_html'] = ApiClient.convertToType(data['main_html'], 'String');
            }
            if (data.hasOwnProperty('images')) {
                obj['images'] = ApiClient.convertToType(data['images'], ['String']);
            }
        }
        return obj;
    }

    /**
     * Validates the JSON data with respect to <code>ExtractContentFromAWebPage200Response</code>.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @return {boolean} to indicate whether the JSON data is valid with respect to <code>ExtractContentFromAWebPage200Response</code>.
     */
    static validateJSON(data) {
        // ensure the json data is a string
        if (data['title'] && !(typeof data['title'] === 'string' || data['title'] instanceof String)) {
            throw new Error("Expected the field `title` to be a primitive type in the JSON string but got " + data['title']);
        }
        // ensure the json data is a string
        if (data['main_text'] && !(typeof data['main_text'] === 'string' || data['main_text'] instanceof String)) {
            throw new Error("Expected the field `main_text` to be a primitive type in the JSON string but got " + data['main_text']);
        }
        // ensure the json data is a string
        if (data['main_html'] && !(typeof data['main_html'] === 'string' || data['main_html'] instanceof String)) {
            throw new Error("Expected the field `main_html` to be a primitive type in the JSON string but got " + data['main_html']);
        }
        // ensure the json data is an array
        if (!Array.isArray(data['images'])) {
            throw new Error("Expected the field `images` to be an array in the JSON data but got " + data['images']);
        }

        return true;
    }


}



/**
 * @member {String} title
 */
ExtractContentFromAWebPage200Response.prototype['title'] = undefined;

/**
 * @member {String} main_text
 */
ExtractContentFromAWebPage200Response.prototype['main_text'] = undefined;

/**
 * @member {String} main_html
 */
ExtractContentFromAWebPage200Response.prototype['main_html'] = undefined;

/**
 * @member {Array.<String>} images
 */
ExtractContentFromAWebPage200Response.prototype['images'] = undefined;






export default ExtractContentFromAWebPage200Response;

