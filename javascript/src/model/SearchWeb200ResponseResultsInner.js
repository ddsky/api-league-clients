/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.5.0
 * Contact: mail@apileague.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 *
 */

import ApiClient from '../ApiClient';

/**
 * The SearchWeb200ResponseResultsInner model module.
 * @module model/SearchWeb200ResponseResultsInner
 * @version 1.5.0
 */
class SearchWeb200ResponseResultsInner {
    /**
     * Constructs a new <code>SearchWeb200ResponseResultsInner</code>.
     * @alias module:model/SearchWeb200ResponseResultsInner
     */
    constructor() { 
        
        SearchWeb200ResponseResultsInner.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>SearchWeb200ResponseResultsInner</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/SearchWeb200ResponseResultsInner} obj Optional instance to populate.
     * @return {module:model/SearchWeb200ResponseResultsInner} The populated <code>SearchWeb200ResponseResultsInner</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new SearchWeb200ResponseResultsInner();

            if (data.hasOwnProperty('title')) {
                obj['title'] = ApiClient.convertToType(data['title'], 'String');
            }
            if (data.hasOwnProperty('summary')) {
                obj['summary'] = ApiClient.convertToType(data['summary'], 'String');
            }
            if (data.hasOwnProperty('url')) {
                obj['url'] = ApiClient.convertToType(data['url'], 'String');
            }
        }
        return obj;
    }

    /**
     * Validates the JSON data with respect to <code>SearchWeb200ResponseResultsInner</code>.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @return {boolean} to indicate whether the JSON data is valid with respect to <code>SearchWeb200ResponseResultsInner</code>.
     */
    static validateJSON(data) {
        // ensure the json data is a string
        if (data['title'] && !(typeof data['title'] === 'string' || data['title'] instanceof String)) {
            throw new Error("Expected the field `title` to be a primitive type in the JSON string but got " + data['title']);
        }
        // ensure the json data is a string
        if (data['summary'] && !(typeof data['summary'] === 'string' || data['summary'] instanceof String)) {
            throw new Error("Expected the field `summary` to be a primitive type in the JSON string but got " + data['summary']);
        }
        // ensure the json data is a string
        if (data['url'] && !(typeof data['url'] === 'string' || data['url'] instanceof String)) {
            throw new Error("Expected the field `url` to be a primitive type in the JSON string but got " + data['url']);
        }

        return true;
    }


}



/**
 * @member {String} title
 */
SearchWeb200ResponseResultsInner.prototype['title'] = undefined;

/**
 * @member {String} summary
 */
SearchWeb200ResponseResultsInner.prototype['summary'] = undefined;

/**
 * @member {String} url
 */
SearchWeb200ResponseResultsInner.prototype['url'] = undefined;






export default SearchWeb200ResponseResultsInner;

