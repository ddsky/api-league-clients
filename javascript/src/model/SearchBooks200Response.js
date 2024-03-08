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
import SearchBooks200ResponseBooksInner from './SearchBooks200ResponseBooksInner';

/**
 * The SearchBooks200Response model module.
 * @module model/SearchBooks200Response
 * @version 1.0
 */
class SearchBooks200Response {
    /**
     * Constructs a new <code>SearchBooks200Response</code>.
     * @alias module:model/SearchBooks200Response
     */
    constructor() { 
        
        SearchBooks200Response.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>SearchBooks200Response</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/SearchBooks200Response} obj Optional instance to populate.
     * @return {module:model/SearchBooks200Response} The populated <code>SearchBooks200Response</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new SearchBooks200Response();

            if (data.hasOwnProperty('available')) {
                obj['available'] = ApiClient.convertToType(data['available'], 'Number');
            }
            if (data.hasOwnProperty('number')) {
                obj['number'] = ApiClient.convertToType(data['number'], 'Number');
            }
            if (data.hasOwnProperty('offset')) {
                obj['offset'] = ApiClient.convertToType(data['offset'], 'Number');
            }
            if (data.hasOwnProperty('books')) {
                obj['books'] = ApiClient.convertToType(data['books'], [SearchBooks200ResponseBooksInner]);
            }
        }
        return obj;
    }

    /**
     * Validates the JSON data with respect to <code>SearchBooks200Response</code>.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @return {boolean} to indicate whether the JSON data is valid with respect to <code>SearchBooks200Response</code>.
     */
    static validateJSON(data) {
        if (data['books']) { // data not null
            // ensure the json data is an array
            if (!Array.isArray(data['books'])) {
                throw new Error("Expected the field `books` to be an array in the JSON data but got " + data['books']);
            }
            // validate the optional field `books` (array)
            for (const item of data['books']) {
                SearchBooks200ResponseBooksInner.validateJSON(item);
            };
        }

        return true;
    }


}



/**
 * @member {Number} available
 */
SearchBooks200Response.prototype['available'] = undefined;

/**
 * @member {Number} number
 */
SearchBooks200Response.prototype['number'] = undefined;

/**
 * @member {Number} offset
 */
SearchBooks200Response.prototype['offset'] = undefined;

/**
 * @member {Array.<module:model/SearchBooks200ResponseBooksInner>} books
 */
SearchBooks200Response.prototype['books'] = undefined;






export default SearchBooks200Response;

