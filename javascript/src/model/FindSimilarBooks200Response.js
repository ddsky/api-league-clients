/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.0.0
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
 * The FindSimilarBooks200Response model module.
 * @module model/FindSimilarBooks200Response
 * @version 1.1.0
 */
class FindSimilarBooks200Response {
    /**
     * Constructs a new <code>FindSimilarBooks200Response</code>.
     * @alias module:model/FindSimilarBooks200Response
     */
    constructor() { 
        
        FindSimilarBooks200Response.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>FindSimilarBooks200Response</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/FindSimilarBooks200Response} obj Optional instance to populate.
     * @return {module:model/FindSimilarBooks200Response} The populated <code>FindSimilarBooks200Response</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new FindSimilarBooks200Response();

            if (data.hasOwnProperty('similar_books')) {
                obj['similar_books'] = ApiClient.convertToType(data['similar_books'], [SearchBooks200ResponseBooksInner]);
            }
        }
        return obj;
    }

    /**
     * Validates the JSON data with respect to <code>FindSimilarBooks200Response</code>.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @return {boolean} to indicate whether the JSON data is valid with respect to <code>FindSimilarBooks200Response</code>.
     */
    static validateJSON(data) {
        if (data['similar_books']) { // data not null
            // ensure the json data is an array
            if (!Array.isArray(data['similar_books'])) {
                throw new Error("Expected the field `similar_books` to be an array in the JSON data but got " + data['similar_books']);
            }
            // validate the optional field `similar_books` (array)
            for (const item of data['similar_books']) {
                SearchBooks200ResponseBooksInner.validateJSON(item);
            };
        }

        return true;
    }


}



/**
 * @member {Array.<module:model/SearchBooks200ResponseBooksInner>} similar_books
 */
FindSimilarBooks200Response.prototype['similar_books'] = undefined;






export default FindSimilarBooks200Response;

