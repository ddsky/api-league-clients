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
 * The SearchBooksAPI200ResponseBooksInnerInner model module.
 * @module model/SearchBooksAPI200ResponseBooksInnerInner
 * @version 1.6.4
 */
class SearchBooksAPI200ResponseBooksInnerInner {
    /**
     * Constructs a new <code>SearchBooksAPI200ResponseBooksInnerInner</code>.
     * @alias module:model/SearchBooksAPI200ResponseBooksInnerInner
     */
    constructor() { 
        
        SearchBooksAPI200ResponseBooksInnerInner.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>SearchBooksAPI200ResponseBooksInnerInner</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/SearchBooksAPI200ResponseBooksInnerInner} obj Optional instance to populate.
     * @return {module:model/SearchBooksAPI200ResponseBooksInnerInner} The populated <code>SearchBooksAPI200ResponseBooksInnerInner</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new SearchBooksAPI200ResponseBooksInnerInner();

            if (data.hasOwnProperty('title')) {
                obj['title'] = ApiClient.convertToType(data['title'], 'String');
            }
            if (data.hasOwnProperty('image')) {
                obj['image'] = ApiClient.convertToType(data['image'], 'String');
            }
            if (data.hasOwnProperty('id')) {
                obj['id'] = ApiClient.convertToType(data['id'], 'Number');
            }
        }
        return obj;
    }

    /**
     * Validates the JSON data with respect to <code>SearchBooksAPI200ResponseBooksInnerInner</code>.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @return {boolean} to indicate whether the JSON data is valid with respect to <code>SearchBooksAPI200ResponseBooksInnerInner</code>.
     */
    static validateJSON(data) {
        // ensure the json data is a string
        if (data['title'] && !(typeof data['title'] === 'string' || data['title'] instanceof String)) {
            throw new Error("Expected the field `title` to be a primitive type in the JSON string but got " + data['title']);
        }
        // ensure the json data is a string
        if (data['image'] && !(typeof data['image'] === 'string' || data['image'] instanceof String)) {
            throw new Error("Expected the field `image` to be a primitive type in the JSON string but got " + data['image']);
        }

        return true;
    }


}



/**
 * @member {String} title
 */
SearchBooksAPI200ResponseBooksInnerInner.prototype['title'] = undefined;

/**
 * @member {String} image
 */
SearchBooksAPI200ResponseBooksInnerInner.prototype['image'] = undefined;

/**
 * @member {Number} id
 */
SearchBooksAPI200ResponseBooksInnerInner.prototype['id'] = undefined;






export default SearchBooksAPI200ResponseBooksInnerInner;
