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
import TopNews200ResponseTopNewsInnerNewsInner from './TopNews200ResponseTopNewsInnerNewsInner';

/**
 * The TopNews200ResponseTopNewsInner model module.
 * @module model/TopNews200ResponseTopNewsInner
 * @version 1.3.0
 */
class TopNews200ResponseTopNewsInner {
    /**
     * Constructs a new <code>TopNews200ResponseTopNewsInner</code>.
     * @alias module:model/TopNews200ResponseTopNewsInner
     */
    constructor() { 
        
        TopNews200ResponseTopNewsInner.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>TopNews200ResponseTopNewsInner</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/TopNews200ResponseTopNewsInner} obj Optional instance to populate.
     * @return {module:model/TopNews200ResponseTopNewsInner} The populated <code>TopNews200ResponseTopNewsInner</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new TopNews200ResponseTopNewsInner();

            if (data.hasOwnProperty('news')) {
                obj['news'] = ApiClient.convertToType(data['news'], [TopNews200ResponseTopNewsInnerNewsInner]);
            }
        }
        return obj;
    }

    /**
     * Validates the JSON data with respect to <code>TopNews200ResponseTopNewsInner</code>.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @return {boolean} to indicate whether the JSON data is valid with respect to <code>TopNews200ResponseTopNewsInner</code>.
     */
    static validateJSON(data) {
        if (data['news']) { // data not null
            // ensure the json data is an array
            if (!Array.isArray(data['news'])) {
                throw new Error("Expected the field `news` to be an array in the JSON data but got " + data['news']);
            }
            // validate the optional field `news` (array)
            for (const item of data['news']) {
                TopNews200ResponseTopNewsInnerNewsInner.validateJSON(item);
            };
        }

        return true;
    }


}



/**
 * @member {Array.<module:model/TopNews200ResponseTopNewsInnerNewsInner>} news
 */
TopNews200ResponseTopNewsInner.prototype['news'] = undefined;






export default TopNews200ResponseTopNewsInner;
