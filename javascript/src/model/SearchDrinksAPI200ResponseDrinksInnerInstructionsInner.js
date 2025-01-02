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
import SearchDrinksAPI200ResponseDrinksInnerInstructionsInnerStepsInner from './SearchDrinksAPI200ResponseDrinksInnerInstructionsInnerStepsInner';

/**
 * The SearchDrinksAPI200ResponseDrinksInnerInstructionsInner model module.
 * @module model/SearchDrinksAPI200ResponseDrinksInnerInstructionsInner
 * @version 1.6.4
 */
class SearchDrinksAPI200ResponseDrinksInnerInstructionsInner {
    /**
     * Constructs a new <code>SearchDrinksAPI200ResponseDrinksInnerInstructionsInner</code>.
     * @alias module:model/SearchDrinksAPI200ResponseDrinksInnerInstructionsInner
     */
    constructor() { 
        
        SearchDrinksAPI200ResponseDrinksInnerInstructionsInner.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>SearchDrinksAPI200ResponseDrinksInnerInstructionsInner</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/SearchDrinksAPI200ResponseDrinksInnerInstructionsInner} obj Optional instance to populate.
     * @return {module:model/SearchDrinksAPI200ResponseDrinksInnerInstructionsInner} The populated <code>SearchDrinksAPI200ResponseDrinksInnerInstructionsInner</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new SearchDrinksAPI200ResponseDrinksInnerInstructionsInner();

            if (data.hasOwnProperty('name')) {
                obj['name'] = ApiClient.convertToType(data['name'], 'String');
            }
            if (data.hasOwnProperty('steps')) {
                obj['steps'] = ApiClient.convertToType(data['steps'], [SearchDrinksAPI200ResponseDrinksInnerInstructionsInnerStepsInner]);
            }
        }
        return obj;
    }

    /**
     * Validates the JSON data with respect to <code>SearchDrinksAPI200ResponseDrinksInnerInstructionsInner</code>.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @return {boolean} to indicate whether the JSON data is valid with respect to <code>SearchDrinksAPI200ResponseDrinksInnerInstructionsInner</code>.
     */
    static validateJSON(data) {
        // ensure the json data is a string
        if (data['name'] && !(typeof data['name'] === 'string' || data['name'] instanceof String)) {
            throw new Error("Expected the field `name` to be a primitive type in the JSON string but got " + data['name']);
        }
        if (data['steps']) { // data not null
            // ensure the json data is an array
            if (!Array.isArray(data['steps'])) {
                throw new Error("Expected the field `steps` to be an array in the JSON data but got " + data['steps']);
            }
            // validate the optional field `steps` (array)
            for (const item of data['steps']) {
                SearchDrinksAPI200ResponseDrinksInnerInstructionsInnerStepsInner.validateJSON(item);
            };
        }

        return true;
    }


}



/**
 * @member {String} name
 */
SearchDrinksAPI200ResponseDrinksInnerInstructionsInner.prototype['name'] = undefined;

/**
 * @member {Array.<module:model/SearchDrinksAPI200ResponseDrinksInnerInstructionsInnerStepsInner>} steps
 */
SearchDrinksAPI200ResponseDrinksInnerInstructionsInner.prototype['steps'] = undefined;






export default SearchDrinksAPI200ResponseDrinksInnerInstructionsInner;
