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
import SearchWeb200ResponseResultsInner from './SearchWeb200ResponseResultsInner';

/**
 * The SearchWeb200Response model module.
 * @module model/SearchWeb200Response
 * @version 1.3.0
 */
class SearchWeb200Response {
    /**
     * Constructs a new <code>SearchWeb200Response</code>.
     * @alias module:model/SearchWeb200Response
     */
    constructor() { 
        
        SearchWeb200Response.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>SearchWeb200Response</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/SearchWeb200Response} obj Optional instance to populate.
     * @return {module:model/SearchWeb200Response} The populated <code>SearchWeb200Response</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new SearchWeb200Response();

            if (data.hasOwnProperty('results')) {
                obj['results'] = ApiClient.convertToType(data['results'], [SearchWeb200ResponseResultsInner]);
            }
        }
        return obj;
    }

    /**
     * Validates the JSON data with respect to <code>SearchWeb200Response</code>.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @return {boolean} to indicate whether the JSON data is valid with respect to <code>SearchWeb200Response</code>.
     */
    static validateJSON(data) {
        if (data['results']) { // data not null
            // ensure the json data is an array
            if (!Array.isArray(data['results'])) {
                throw new Error("Expected the field `results` to be an array in the JSON data but got " + data['results']);
            }
            // validate the optional field `results` (array)
            for (const item of data['results']) {
                SearchWeb200ResponseResultsInner.validateJSON(item);
            };
        }

        return true;
    }


}



/**
 * @member {Array.<module:model/SearchWeb200ResponseResultsInner>} results
 */
SearchWeb200Response.prototype['results'] = undefined;






export default SearchWeb200Response;

