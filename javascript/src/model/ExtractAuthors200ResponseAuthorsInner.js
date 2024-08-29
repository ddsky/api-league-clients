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
 * The ExtractAuthors200ResponseAuthorsInner model module.
 * @module model/ExtractAuthors200ResponseAuthorsInner
 * @version 1.6.3
 */
class ExtractAuthors200ResponseAuthorsInner {
    /**
     * Constructs a new <code>ExtractAuthors200ResponseAuthorsInner</code>.
     * @alias module:model/ExtractAuthors200ResponseAuthorsInner
     */
    constructor() { 
        
        ExtractAuthors200ResponseAuthorsInner.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>ExtractAuthors200ResponseAuthorsInner</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/ExtractAuthors200ResponseAuthorsInner} obj Optional instance to populate.
     * @return {module:model/ExtractAuthors200ResponseAuthorsInner} The populated <code>ExtractAuthors200ResponseAuthorsInner</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new ExtractAuthors200ResponseAuthorsInner();

            if (data.hasOwnProperty('link')) {
                obj['link'] = ApiClient.convertToType(data['link'], 'String');
            }
            if (data.hasOwnProperty('name')) {
                obj['name'] = ApiClient.convertToType(data['name'], 'String');
            }
        }
        return obj;
    }

    /**
     * Validates the JSON data with respect to <code>ExtractAuthors200ResponseAuthorsInner</code>.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @return {boolean} to indicate whether the JSON data is valid with respect to <code>ExtractAuthors200ResponseAuthorsInner</code>.
     */
    static validateJSON(data) {
        // ensure the json data is a string
        if (data['link'] && !(typeof data['link'] === 'string' || data['link'] instanceof String)) {
            throw new Error("Expected the field `link` to be a primitive type in the JSON string but got " + data['link']);
        }
        // ensure the json data is a string
        if (data['name'] && !(typeof data['name'] === 'string' || data['name'] instanceof String)) {
            throw new Error("Expected the field `name` to be a primitive type in the JSON string but got " + data['name']);
        }

        return true;
    }


}



/**
 * @member {String} link
 */
ExtractAuthors200ResponseAuthorsInner.prototype['link'] = undefined;

/**
 * @member {String} name
 */
ExtractAuthors200ResponseAuthorsInner.prototype['name'] = undefined;






export default ExtractAuthors200ResponseAuthorsInner;

