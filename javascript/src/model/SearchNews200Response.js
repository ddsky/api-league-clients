/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.4.0
 * Contact: mail@apileague.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 *
 */

import ApiClient from '../ApiClient';
import SearchNews200ResponseNewsInner from './SearchNews200ResponseNewsInner';

/**
 * The SearchNews200Response model module.
 * @module model/SearchNews200Response
 * @version 1.4.0
 */
class SearchNews200Response {
    /**
     * Constructs a new <code>SearchNews200Response</code>.
     * @alias module:model/SearchNews200Response
     */
    constructor() { 
        
        SearchNews200Response.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>SearchNews200Response</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/SearchNews200Response} obj Optional instance to populate.
     * @return {module:model/SearchNews200Response} The populated <code>SearchNews200Response</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new SearchNews200Response();

            if (data.hasOwnProperty('offset')) {
                obj['offset'] = ApiClient.convertToType(data['offset'], 'Number');
            }
            if (data.hasOwnProperty('number')) {
                obj['number'] = ApiClient.convertToType(data['number'], 'Number');
            }
            if (data.hasOwnProperty('available')) {
                obj['available'] = ApiClient.convertToType(data['available'], 'Number');
            }
            if (data.hasOwnProperty('news')) {
                obj['news'] = ApiClient.convertToType(data['news'], [SearchNews200ResponseNewsInner]);
            }
        }
        return obj;
    }

    /**
     * Validates the JSON data with respect to <code>SearchNews200Response</code>.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @return {boolean} to indicate whether the JSON data is valid with respect to <code>SearchNews200Response</code>.
     */
    static validateJSON(data) {
        if (data['news']) { // data not null
            // ensure the json data is an array
            if (!Array.isArray(data['news'])) {
                throw new Error("Expected the field `news` to be an array in the JSON data but got " + data['news']);
            }
            // validate the optional field `news` (array)
            for (const item of data['news']) {
                SearchNews200ResponseNewsInner.validateJSON(item);
            };
        }

        return true;
    }


}



/**
 * @member {Number} offset
 */
SearchNews200Response.prototype['offset'] = undefined;

/**
 * @member {Number} number
 */
SearchNews200Response.prototype['number'] = undefined;

/**
 * @member {Number} available
 */
SearchNews200Response.prototype['available'] = undefined;

/**
 * @member {Array.<module:model/SearchNews200ResponseNewsInner>} news
 */
SearchNews200Response.prototype['news'] = undefined;






export default SearchNews200Response;

