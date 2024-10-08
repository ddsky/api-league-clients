/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.6.3
 * Contact: mail@apileague.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 *
 */

import ApiClient from '../ApiClient';
import ExtractAuthors200ResponseAuthorsInner from './ExtractAuthors200ResponseAuthorsInner';

/**
 * The ExtractAuthors200Response model module.
 * @module model/ExtractAuthors200Response
 * @version 1.6.3
 */
class ExtractAuthors200Response {
    /**
     * Constructs a new <code>ExtractAuthors200Response</code>.
     * @alias module:model/ExtractAuthors200Response
     */
    constructor() { 
        
        ExtractAuthors200Response.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>ExtractAuthors200Response</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/ExtractAuthors200Response} obj Optional instance to populate.
     * @return {module:model/ExtractAuthors200Response} The populated <code>ExtractAuthors200Response</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new ExtractAuthors200Response();

            if (data.hasOwnProperty('authors')) {
                obj['authors'] = ApiClient.convertToType(data['authors'], [ExtractAuthors200ResponseAuthorsInner]);
            }
        }
        return obj;
    }

    /**
     * Validates the JSON data with respect to <code>ExtractAuthors200Response</code>.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @return {boolean} to indicate whether the JSON data is valid with respect to <code>ExtractAuthors200Response</code>.
     */
    static validateJSON(data) {
        if (data['authors']) { // data not null
            // ensure the json data is an array
            if (!Array.isArray(data['authors'])) {
                throw new Error("Expected the field `authors` to be an array in the JSON data but got " + data['authors']);
            }
            // validate the optional field `authors` (array)
            for (const item of data['authors']) {
                ExtractAuthors200ResponseAuthorsInner.validateJSON(item);
            };
        }

        return true;
    }


}



/**
 * @member {Array.<module:model/ExtractAuthors200ResponseAuthorsInner>} authors
 */
ExtractAuthors200Response.prototype['authors'] = undefined;






export default ExtractAuthors200Response;

