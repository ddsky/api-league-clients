/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.6.2
 * Contact: mail@apileague.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 *
 */

import ApiClient from '../ApiClient';
import SearchRoyaltyFreeImages200ResponseImagesInnerLicense from './SearchRoyaltyFreeImages200ResponseImagesInnerLicense';

/**
 * The SearchRoyaltyFreeImages200ResponseImagesInner model module.
 * @module model/SearchRoyaltyFreeImages200ResponseImagesInner
 * @version 1.6.2
 */
class SearchRoyaltyFreeImages200ResponseImagesInner {
    /**
     * Constructs a new <code>SearchRoyaltyFreeImages200ResponseImagesInner</code>.
     * @alias module:model/SearchRoyaltyFreeImages200ResponseImagesInner
     */
    constructor() { 
        
        SearchRoyaltyFreeImages200ResponseImagesInner.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>SearchRoyaltyFreeImages200ResponseImagesInner</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/SearchRoyaltyFreeImages200ResponseImagesInner} obj Optional instance to populate.
     * @return {module:model/SearchRoyaltyFreeImages200ResponseImagesInner} The populated <code>SearchRoyaltyFreeImages200ResponseImagesInner</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new SearchRoyaltyFreeImages200ResponseImagesInner();

            if (data.hasOwnProperty('width')) {
                obj['width'] = ApiClient.convertToType(data['width'], 'Number');
            }
            if (data.hasOwnProperty('license')) {
                obj['license'] = SearchRoyaltyFreeImages200ResponseImagesInnerLicense.constructFromObject(data['license']);
            }
            if (data.hasOwnProperty('thumbnail')) {
                obj['thumbnail'] = ApiClient.convertToType(data['thumbnail'], 'String');
            }
            if (data.hasOwnProperty('id')) {
                obj['id'] = ApiClient.convertToType(data['id'], 'String');
            }
            if (data.hasOwnProperty('url')) {
                obj['url'] = ApiClient.convertToType(data['url'], 'String');
            }
            if (data.hasOwnProperty('height')) {
                obj['height'] = ApiClient.convertToType(data['height'], 'Number');
            }
        }
        return obj;
    }

    /**
     * Validates the JSON data with respect to <code>SearchRoyaltyFreeImages200ResponseImagesInner</code>.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @return {boolean} to indicate whether the JSON data is valid with respect to <code>SearchRoyaltyFreeImages200ResponseImagesInner</code>.
     */
    static validateJSON(data) {
        // validate the optional field `license`
        if (data['license']) { // data not null
          SearchRoyaltyFreeImages200ResponseImagesInnerLicense.validateJSON(data['license']);
        }
        // ensure the json data is a string
        if (data['thumbnail'] && !(typeof data['thumbnail'] === 'string' || data['thumbnail'] instanceof String)) {
            throw new Error("Expected the field `thumbnail` to be a primitive type in the JSON string but got " + data['thumbnail']);
        }
        // ensure the json data is a string
        if (data['id'] && !(typeof data['id'] === 'string' || data['id'] instanceof String)) {
            throw new Error("Expected the field `id` to be a primitive type in the JSON string but got " + data['id']);
        }
        // ensure the json data is a string
        if (data['url'] && !(typeof data['url'] === 'string' || data['url'] instanceof String)) {
            throw new Error("Expected the field `url` to be a primitive type in the JSON string but got " + data['url']);
        }

        return true;
    }


}



/**
 * @member {Number} width
 */
SearchRoyaltyFreeImages200ResponseImagesInner.prototype['width'] = undefined;

/**
 * @member {module:model/SearchRoyaltyFreeImages200ResponseImagesInnerLicense} license
 */
SearchRoyaltyFreeImages200ResponseImagesInner.prototype['license'] = undefined;

/**
 * @member {String} thumbnail
 */
SearchRoyaltyFreeImages200ResponseImagesInner.prototype['thumbnail'] = undefined;

/**
 * @member {String} id
 */
SearchRoyaltyFreeImages200ResponseImagesInner.prototype['id'] = undefined;

/**
 * @member {String} url
 */
SearchRoyaltyFreeImages200ResponseImagesInner.prototype['url'] = undefined;

/**
 * @member {Number} height
 */
SearchRoyaltyFreeImages200ResponseImagesInner.prototype['height'] = undefined;






export default SearchRoyaltyFreeImages200ResponseImagesInner;

