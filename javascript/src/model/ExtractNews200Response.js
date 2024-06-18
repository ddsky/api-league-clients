/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.3.0
 * Contact: mail@apileague.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 *
 */

import ApiClient from '../ApiClient';
import ExtractNews200ResponseImagesInner from './ExtractNews200ResponseImagesInner';
import ExtractNews200ResponseVideosInner from './ExtractNews200ResponseVideosInner';

/**
 * The ExtractNews200Response model module.
 * @module model/ExtractNews200Response
 * @version 1.3.0
 */
class ExtractNews200Response {
    /**
     * Constructs a new <code>ExtractNews200Response</code>.
     * @alias module:model/ExtractNews200Response
     */
    constructor() { 
        
        ExtractNews200Response.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>ExtractNews200Response</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/ExtractNews200Response} obj Optional instance to populate.
     * @return {module:model/ExtractNews200Response} The populated <code>ExtractNews200Response</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new ExtractNews200Response();

            if (data.hasOwnProperty('title')) {
                obj['title'] = ApiClient.convertToType(data['title'], 'String');
            }
            if (data.hasOwnProperty('text')) {
                obj['text'] = ApiClient.convertToType(data['text'], 'String');
            }
            if (data.hasOwnProperty('url')) {
                obj['url'] = ApiClient.convertToType(data['url'], 'String');
            }
            if (data.hasOwnProperty('images')) {
                obj['images'] = ApiClient.convertToType(data['images'], [ExtractNews200ResponseImagesInner]);
            }
            if (data.hasOwnProperty('videos')) {
                obj['videos'] = ApiClient.convertToType(data['videos'], [ExtractNews200ResponseVideosInner]);
            }
            if (data.hasOwnProperty('publish_date')) {
                obj['publish_date'] = ApiClient.convertToType(data['publish_date'], 'String');
            }
            if (data.hasOwnProperty('authors')) {
                obj['authors'] = ApiClient.convertToType(data['authors'], ['String']);
            }
            if (data.hasOwnProperty('language')) {
                obj['language'] = ApiClient.convertToType(data['language'], 'String');
            }
        }
        return obj;
    }

    /**
     * Validates the JSON data with respect to <code>ExtractNews200Response</code>.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @return {boolean} to indicate whether the JSON data is valid with respect to <code>ExtractNews200Response</code>.
     */
    static validateJSON(data) {
        // ensure the json data is a string
        if (data['title'] && !(typeof data['title'] === 'string' || data['title'] instanceof String)) {
            throw new Error("Expected the field `title` to be a primitive type in the JSON string but got " + data['title']);
        }
        // ensure the json data is a string
        if (data['text'] && !(typeof data['text'] === 'string' || data['text'] instanceof String)) {
            throw new Error("Expected the field `text` to be a primitive type in the JSON string but got " + data['text']);
        }
        // ensure the json data is a string
        if (data['url'] && !(typeof data['url'] === 'string' || data['url'] instanceof String)) {
            throw new Error("Expected the field `url` to be a primitive type in the JSON string but got " + data['url']);
        }
        if (data['images']) { // data not null
            // ensure the json data is an array
            if (!Array.isArray(data['images'])) {
                throw new Error("Expected the field `images` to be an array in the JSON data but got " + data['images']);
            }
            // validate the optional field `images` (array)
            for (const item of data['images']) {
                ExtractNews200ResponseImagesInner.validateJSON(item);
            };
        }
        if (data['videos']) { // data not null
            // ensure the json data is an array
            if (!Array.isArray(data['videos'])) {
                throw new Error("Expected the field `videos` to be an array in the JSON data but got " + data['videos']);
            }
            // validate the optional field `videos` (array)
            for (const item of data['videos']) {
                ExtractNews200ResponseVideosInner.validateJSON(item);
            };
        }
        // ensure the json data is a string
        if (data['publish_date'] && !(typeof data['publish_date'] === 'string' || data['publish_date'] instanceof String)) {
            throw new Error("Expected the field `publish_date` to be a primitive type in the JSON string but got " + data['publish_date']);
        }
        // ensure the json data is an array
        if (!Array.isArray(data['authors'])) {
            throw new Error("Expected the field `authors` to be an array in the JSON data but got " + data['authors']);
        }
        // ensure the json data is a string
        if (data['language'] && !(typeof data['language'] === 'string' || data['language'] instanceof String)) {
            throw new Error("Expected the field `language` to be a primitive type in the JSON string but got " + data['language']);
        }

        return true;
    }


}



/**
 * @member {String} title
 */
ExtractNews200Response.prototype['title'] = undefined;

/**
 * @member {String} text
 */
ExtractNews200Response.prototype['text'] = undefined;

/**
 * @member {String} url
 */
ExtractNews200Response.prototype['url'] = undefined;

/**
 * @member {Array.<module:model/ExtractNews200ResponseImagesInner>} images
 */
ExtractNews200Response.prototype['images'] = undefined;

/**
 * @member {Array.<module:model/ExtractNews200ResponseVideosInner>} videos
 */
ExtractNews200Response.prototype['videos'] = undefined;

/**
 * @member {String} publish_date
 */
ExtractNews200Response.prototype['publish_date'] = undefined;

/**
 * @member {Array.<String>} authors
 */
ExtractNews200Response.prototype['authors'] = undefined;

/**
 * @member {String} language
 */
ExtractNews200Response.prototype['language'] = undefined;






export default ExtractNews200Response;

