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
import SearchJokesAPI200ResponseJokesInner from './SearchJokesAPI200ResponseJokesInner';

/**
 * The SearchJokesAPI200Response model module.
 * @module model/SearchJokesAPI200Response
 * @version 1.6.4
 */
class SearchJokesAPI200Response {
    /**
     * Constructs a new <code>SearchJokesAPI200Response</code>.
     * @alias module:model/SearchJokesAPI200Response
     */
    constructor() { 
        
        SearchJokesAPI200Response.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>SearchJokesAPI200Response</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/SearchJokesAPI200Response} obj Optional instance to populate.
     * @return {module:model/SearchJokesAPI200Response} The populated <code>SearchJokesAPI200Response</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new SearchJokesAPI200Response();

            if (data.hasOwnProperty('jokes')) {
                obj['jokes'] = ApiClient.convertToType(data['jokes'], [SearchJokesAPI200ResponseJokesInner]);
            }
            if (data.hasOwnProperty('available')) {
                obj['available'] = ApiClient.convertToType(data['available'], 'Number');
            }
        }
        return obj;
    }

    /**
     * Validates the JSON data with respect to <code>SearchJokesAPI200Response</code>.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @return {boolean} to indicate whether the JSON data is valid with respect to <code>SearchJokesAPI200Response</code>.
     */
    static validateJSON(data) {
        if (data['jokes']) { // data not null
            // ensure the json data is an array
            if (!Array.isArray(data['jokes'])) {
                throw new Error("Expected the field `jokes` to be an array in the JSON data but got " + data['jokes']);
            }
            // validate the optional field `jokes` (array)
            for (const item of data['jokes']) {
                SearchJokesAPI200ResponseJokesInner.validateJSON(item);
            };
        }

        return true;
    }


}



/**
 * @member {Array.<module:model/SearchJokesAPI200ResponseJokesInner>} jokes
 */
SearchJokesAPI200Response.prototype['jokes'] = undefined;

/**
 * @member {Number} available
 */
SearchJokesAPI200Response.prototype['available'] = undefined;






export default SearchJokesAPI200Response;
