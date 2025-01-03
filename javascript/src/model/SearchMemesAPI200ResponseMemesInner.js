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
 * The SearchMemesAPI200ResponseMemesInner model module.
 * @module model/SearchMemesAPI200ResponseMemesInner
 * @version 1.6.4
 */
class SearchMemesAPI200ResponseMemesInner {
    /**
     * Constructs a new <code>SearchMemesAPI200ResponseMemesInner</code>.
     * @alias module:model/SearchMemesAPI200ResponseMemesInner
     */
    constructor() { 
        
        SearchMemesAPI200ResponseMemesInner.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>SearchMemesAPI200ResponseMemesInner</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/SearchMemesAPI200ResponseMemesInner} obj Optional instance to populate.
     * @return {module:model/SearchMemesAPI200ResponseMemesInner} The populated <code>SearchMemesAPI200ResponseMemesInner</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new SearchMemesAPI200ResponseMemesInner();

            if (data.hasOwnProperty('type')) {
                obj['type'] = ApiClient.convertToType(data['type'], 'String');
            }
            if (data.hasOwnProperty('description')) {
                obj['description'] = ApiClient.convertToType(data['description'], 'String');
            }
            if (data.hasOwnProperty('url')) {
                obj['url'] = ApiClient.convertToType(data['url'], 'String');
            }
        }
        return obj;
    }

    /**
     * Validates the JSON data with respect to <code>SearchMemesAPI200ResponseMemesInner</code>.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @return {boolean} to indicate whether the JSON data is valid with respect to <code>SearchMemesAPI200ResponseMemesInner</code>.
     */
    static validateJSON(data) {
        // ensure the json data is a string
        if (data['type'] && !(typeof data['type'] === 'string' || data['type'] instanceof String)) {
            throw new Error("Expected the field `type` to be a primitive type in the JSON string but got " + data['type']);
        }
        // ensure the json data is a string
        if (data['description'] && !(typeof data['description'] === 'string' || data['description'] instanceof String)) {
            throw new Error("Expected the field `description` to be a primitive type in the JSON string but got " + data['description']);
        }
        // ensure the json data is a string
        if (data['url'] && !(typeof data['url'] === 'string' || data['url'] instanceof String)) {
            throw new Error("Expected the field `url` to be a primitive type in the JSON string but got " + data['url']);
        }

        return true;
    }


}



/**
 * @member {String} type
 */
SearchMemesAPI200ResponseMemesInner.prototype['type'] = undefined;

/**
 * @member {String} description
 */
SearchMemesAPI200ResponseMemesInner.prototype['description'] = undefined;

/**
 * @member {String} url
 */
SearchMemesAPI200ResponseMemesInner.prototype['url'] = undefined;






export default SearchMemesAPI200ResponseMemesInner;

