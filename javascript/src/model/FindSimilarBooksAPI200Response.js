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
import SearchBooksAPI200ResponseBooksInnerInner from './SearchBooksAPI200ResponseBooksInnerInner';

/**
 * The FindSimilarBooksAPI200Response model module.
 * @module model/FindSimilarBooksAPI200Response
 * @version 1.6.4
 */
class FindSimilarBooksAPI200Response {
    /**
     * Constructs a new <code>FindSimilarBooksAPI200Response</code>.
     * @alias module:model/FindSimilarBooksAPI200Response
     */
    constructor() { 
        
        FindSimilarBooksAPI200Response.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>FindSimilarBooksAPI200Response</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/FindSimilarBooksAPI200Response} obj Optional instance to populate.
     * @return {module:model/FindSimilarBooksAPI200Response} The populated <code>FindSimilarBooksAPI200Response</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new FindSimilarBooksAPI200Response();

            if (data.hasOwnProperty('similar_books')) {
                obj['similar_books'] = ApiClient.convertToType(data['similar_books'], [SearchBooksAPI200ResponseBooksInnerInner]);
            }
        }
        return obj;
    }

    /**
     * Validates the JSON data with respect to <code>FindSimilarBooksAPI200Response</code>.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @return {boolean} to indicate whether the JSON data is valid with respect to <code>FindSimilarBooksAPI200Response</code>.
     */
    static validateJSON(data) {
        if (data['similar_books']) { // data not null
            // ensure the json data is an array
            if (!Array.isArray(data['similar_books'])) {
                throw new Error("Expected the field `similar_books` to be an array in the JSON data but got " + data['similar_books']);
            }
            // validate the optional field `similar_books` (array)
            for (const item of data['similar_books']) {
                SearchBooksAPI200ResponseBooksInnerInner.validateJSON(item);
            };
        }

        return true;
    }


}



/**
 * @member {Array.<module:model/SearchBooksAPI200ResponseBooksInnerInner>} similar_books
 */
FindSimilarBooksAPI200Response.prototype['similar_books'] = undefined;






export default FindSimilarBooksAPI200Response;

