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
import ExtractEntities200ResponseEntitiesInner from './ExtractEntities200ResponseEntitiesInner';

/**
 * The ExtractEntities200Response model module.
 * @module model/ExtractEntities200Response
 * @version 1.4.0
 */
class ExtractEntities200Response {
    /**
     * Constructs a new <code>ExtractEntities200Response</code>.
     * @alias module:model/ExtractEntities200Response
     */
    constructor() { 
        
        ExtractEntities200Response.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>ExtractEntities200Response</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/ExtractEntities200Response} obj Optional instance to populate.
     * @return {module:model/ExtractEntities200Response} The populated <code>ExtractEntities200Response</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new ExtractEntities200Response();

            if (data.hasOwnProperty('entities')) {
                obj['entities'] = ApiClient.convertToType(data['entities'], [ExtractEntities200ResponseEntitiesInner]);
            }
        }
        return obj;
    }

    /**
     * Validates the JSON data with respect to <code>ExtractEntities200Response</code>.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @return {boolean} to indicate whether the JSON data is valid with respect to <code>ExtractEntities200Response</code>.
     */
    static validateJSON(data) {
        if (data['entities']) { // data not null
            // ensure the json data is an array
            if (!Array.isArray(data['entities'])) {
                throw new Error("Expected the field `entities` to be an array in the JSON data but got " + data['entities']);
            }
            // validate the optional field `entities` (array)
            for (const item of data['entities']) {
                ExtractEntities200ResponseEntitiesInner.validateJSON(item);
            };
        }

        return true;
    }


}



/**
 * @member {Array.<module:model/ExtractEntities200ResponseEntitiesInner>} entities
 */
ExtractEntities200Response.prototype['entities'] = undefined;






export default ExtractEntities200Response;

