/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.0
 * Contact: mail@apileague.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 *
 */

import ApiClient from '../ApiClient';
import SearchRoyaltyFreeImages200ResponseImagesInner from './SearchRoyaltyFreeImages200ResponseImagesInner';

/**
 * The SearchRoyaltyFreeImages200Response model module.
 * @module model/SearchRoyaltyFreeImages200Response
 * @version 1.0
 */
class SearchRoyaltyFreeImages200Response {
    /**
     * Constructs a new <code>SearchRoyaltyFreeImages200Response</code>.
     * @alias module:model/SearchRoyaltyFreeImages200Response
     */
    constructor() { 
        
        SearchRoyaltyFreeImages200Response.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>SearchRoyaltyFreeImages200Response</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/SearchRoyaltyFreeImages200Response} obj Optional instance to populate.
     * @return {module:model/SearchRoyaltyFreeImages200Response} The populated <code>SearchRoyaltyFreeImages200Response</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new SearchRoyaltyFreeImages200Response();

            if (data.hasOwnProperty('images')) {
                obj['images'] = ApiClient.convertToType(data['images'], [SearchRoyaltyFreeImages200ResponseImagesInner]);
            }
        }
        return obj;
    }

    /**
     * Validates the JSON data with respect to <code>SearchRoyaltyFreeImages200Response</code>.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @return {boolean} to indicate whether the JSON data is valid with respect to <code>SearchRoyaltyFreeImages200Response</code>.
     */
    static validateJSON(data) {
        if (data['images']) { // data not null
            // ensure the json data is an array
            if (!Array.isArray(data['images'])) {
                throw new Error("Expected the field `images` to be an array in the JSON data but got " + data['images']);
            }
            // validate the optional field `images` (array)
            for (const item of data['images']) {
                SearchRoyaltyFreeImages200ResponseImagesInner.validateJSON(item);
            };
        }

        return true;
    }


}



/**
 * @member {Array.<module:model/SearchRoyaltyFreeImages200ResponseImagesInner>} images
 */
SearchRoyaltyFreeImages200Response.prototype['images'] = undefined;






export default SearchRoyaltyFreeImages200Response;

