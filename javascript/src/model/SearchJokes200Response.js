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
import SearchJokes200ResponseJokesInner from './SearchJokes200ResponseJokesInner';

/**
 * The SearchJokes200Response model module.
 * @module model/SearchJokes200Response
 * @version 1.3.0
 */
class SearchJokes200Response {
    /**
     * Constructs a new <code>SearchJokes200Response</code>.
     * @alias module:model/SearchJokes200Response
     */
    constructor() { 
        
        SearchJokes200Response.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>SearchJokes200Response</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/SearchJokes200Response} obj Optional instance to populate.
     * @return {module:model/SearchJokes200Response} The populated <code>SearchJokes200Response</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new SearchJokes200Response();

            if (data.hasOwnProperty('jokes')) {
                obj['jokes'] = ApiClient.convertToType(data['jokes'], [SearchJokes200ResponseJokesInner]);
            }
            if (data.hasOwnProperty('available')) {
                obj['available'] = ApiClient.convertToType(data['available'], 'Number');
            }
        }
        return obj;
    }

    /**
     * Validates the JSON data with respect to <code>SearchJokes200Response</code>.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @return {boolean} to indicate whether the JSON data is valid with respect to <code>SearchJokes200Response</code>.
     */
    static validateJSON(data) {
        if (data['jokes']) { // data not null
            // ensure the json data is an array
            if (!Array.isArray(data['jokes'])) {
                throw new Error("Expected the field `jokes` to be an array in the JSON data but got " + data['jokes']);
            }
            // validate the optional field `jokes` (array)
            for (const item of data['jokes']) {
                SearchJokes200ResponseJokesInner.validateJSON(item);
            };
        }

        return true;
    }


}



/**
 * @member {Array.<module:model/SearchJokes200ResponseJokesInner>} jokes
 */
SearchJokes200Response.prototype['jokes'] = undefined;

/**
 * @member {Number} available
 */
SearchJokes200Response.prototype['available'] = undefined;






export default SearchJokes200Response;

