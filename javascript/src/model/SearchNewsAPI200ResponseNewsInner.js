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
 * The SearchNewsAPI200ResponseNewsInner model module.
 * @module model/SearchNewsAPI200ResponseNewsInner
 * @version 1.6.4
 */
class SearchNewsAPI200ResponseNewsInner {
    /**
     * Constructs a new <code>SearchNewsAPI200ResponseNewsInner</code>.
     * @alias module:model/SearchNewsAPI200ResponseNewsInner
     */
    constructor() { 
        
        SearchNewsAPI200ResponseNewsInner.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>SearchNewsAPI200ResponseNewsInner</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/SearchNewsAPI200ResponseNewsInner} obj Optional instance to populate.
     * @return {module:model/SearchNewsAPI200ResponseNewsInner} The populated <code>SearchNewsAPI200ResponseNewsInner</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new SearchNewsAPI200ResponseNewsInner();

            if (data.hasOwnProperty('summary')) {
                obj['summary'] = ApiClient.convertToType(data['summary'], 'String');
            }
            if (data.hasOwnProperty('image')) {
                obj['image'] = ApiClient.convertToType(data['image'], 'String');
            }
            if (data.hasOwnProperty('sentiment')) {
                obj['sentiment'] = ApiClient.convertToType(data['sentiment'], 'Number');
            }
            if (data.hasOwnProperty('language')) {
                obj['language'] = ApiClient.convertToType(data['language'], 'String');
            }
            if (data.hasOwnProperty('video')) {
                obj['video'] = ApiClient.convertToType(data['video'], 'String');
            }
            if (data.hasOwnProperty('title')) {
                obj['title'] = ApiClient.convertToType(data['title'], 'String');
            }
            if (data.hasOwnProperty('url')) {
                obj['url'] = ApiClient.convertToType(data['url'], 'String');
            }
            if (data.hasOwnProperty('source_country')) {
                obj['source_country'] = ApiClient.convertToType(data['source_country'], 'String');
            }
            if (data.hasOwnProperty('id')) {
                obj['id'] = ApiClient.convertToType(data['id'], 'Number');
            }
            if (data.hasOwnProperty('text')) {
                obj['text'] = ApiClient.convertToType(data['text'], 'String');
            }
            if (data.hasOwnProperty('category')) {
                obj['category'] = ApiClient.convertToType(data['category'], 'String');
            }
            if (data.hasOwnProperty('publish_date')) {
                obj['publish_date'] = ApiClient.convertToType(data['publish_date'], 'String');
            }
            if (data.hasOwnProperty('authors')) {
                obj['authors'] = ApiClient.convertToType(data['authors'], ['String']);
            }
        }
        return obj;
    }

    /**
     * Validates the JSON data with respect to <code>SearchNewsAPI200ResponseNewsInner</code>.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @return {boolean} to indicate whether the JSON data is valid with respect to <code>SearchNewsAPI200ResponseNewsInner</code>.
     */
    static validateJSON(data) {
        // ensure the json data is a string
        if (data['summary'] && !(typeof data['summary'] === 'string' || data['summary'] instanceof String)) {
            throw new Error("Expected the field `summary` to be a primitive type in the JSON string but got " + data['summary']);
        }
        // ensure the json data is a string
        if (data['image'] && !(typeof data['image'] === 'string' || data['image'] instanceof String)) {
            throw new Error("Expected the field `image` to be a primitive type in the JSON string but got " + data['image']);
        }
        // ensure the json data is a string
        if (data['language'] && !(typeof data['language'] === 'string' || data['language'] instanceof String)) {
            throw new Error("Expected the field `language` to be a primitive type in the JSON string but got " + data['language']);
        }
        // ensure the json data is a string
        if (data['video'] && !(typeof data['video'] === 'string' || data['video'] instanceof String)) {
            throw new Error("Expected the field `video` to be a primitive type in the JSON string but got " + data['video']);
        }
        // ensure the json data is a string
        if (data['title'] && !(typeof data['title'] === 'string' || data['title'] instanceof String)) {
            throw new Error("Expected the field `title` to be a primitive type in the JSON string but got " + data['title']);
        }
        // ensure the json data is a string
        if (data['url'] && !(typeof data['url'] === 'string' || data['url'] instanceof String)) {
            throw new Error("Expected the field `url` to be a primitive type in the JSON string but got " + data['url']);
        }
        // ensure the json data is a string
        if (data['source_country'] && !(typeof data['source_country'] === 'string' || data['source_country'] instanceof String)) {
            throw new Error("Expected the field `source_country` to be a primitive type in the JSON string but got " + data['source_country']);
        }
        // ensure the json data is a string
        if (data['text'] && !(typeof data['text'] === 'string' || data['text'] instanceof String)) {
            throw new Error("Expected the field `text` to be a primitive type in the JSON string but got " + data['text']);
        }
        // ensure the json data is a string
        if (data['category'] && !(typeof data['category'] === 'string' || data['category'] instanceof String)) {
            throw new Error("Expected the field `category` to be a primitive type in the JSON string but got " + data['category']);
        }
        // ensure the json data is a string
        if (data['publish_date'] && !(typeof data['publish_date'] === 'string' || data['publish_date'] instanceof String)) {
            throw new Error("Expected the field `publish_date` to be a primitive type in the JSON string but got " + data['publish_date']);
        }
        // ensure the json data is an array
        if (!Array.isArray(data['authors'])) {
            throw new Error("Expected the field `authors` to be an array in the JSON data but got " + data['authors']);
        }

        return true;
    }


}



/**
 * @member {String} summary
 */
SearchNewsAPI200ResponseNewsInner.prototype['summary'] = undefined;

/**
 * @member {String} image
 */
SearchNewsAPI200ResponseNewsInner.prototype['image'] = undefined;

/**
 * @member {Number} sentiment
 */
SearchNewsAPI200ResponseNewsInner.prototype['sentiment'] = undefined;

/**
 * @member {String} language
 */
SearchNewsAPI200ResponseNewsInner.prototype['language'] = undefined;

/**
 * @member {String} video
 */
SearchNewsAPI200ResponseNewsInner.prototype['video'] = undefined;

/**
 * @member {String} title
 */
SearchNewsAPI200ResponseNewsInner.prototype['title'] = undefined;

/**
 * @member {String} url
 */
SearchNewsAPI200ResponseNewsInner.prototype['url'] = undefined;

/**
 * @member {String} source_country
 */
SearchNewsAPI200ResponseNewsInner.prototype['source_country'] = undefined;

/**
 * @member {Number} id
 */
SearchNewsAPI200ResponseNewsInner.prototype['id'] = undefined;

/**
 * @member {String} text
 */
SearchNewsAPI200ResponseNewsInner.prototype['text'] = undefined;

/**
 * @member {String} category
 */
SearchNewsAPI200ResponseNewsInner.prototype['category'] = undefined;

/**
 * @member {String} publish_date
 */
SearchNewsAPI200ResponseNewsInner.prototype['publish_date'] = undefined;

/**
 * @member {Array.<String>} authors
 */
SearchNewsAPI200ResponseNewsInner.prototype['authors'] = undefined;






export default SearchNewsAPI200ResponseNewsInner;
