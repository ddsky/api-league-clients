/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.2.0
 * Contact: mail@apileague.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 *
 */

import ApiClient from '../ApiClient';

/**
 * The ConvertUnits200Response model module.
 * @module model/ConvertUnits200Response
 * @version 1.2.0
 */
class ConvertUnits200Response {
    /**
     * Constructs a new <code>ConvertUnits200Response</code>.
     * @alias module:model/ConvertUnits200Response
     */
    constructor() { 
        
        ConvertUnits200Response.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>ConvertUnits200Response</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/ConvertUnits200Response} obj Optional instance to populate.
     * @return {module:model/ConvertUnits200Response} The populated <code>ConvertUnits200Response</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new ConvertUnits200Response();

            if (data.hasOwnProperty('target_amount')) {
                obj['target_amount'] = ApiClient.convertToType(data['target_amount'], 'Number');
            }
            if (data.hasOwnProperty('target_unit')) {
                obj['target_unit'] = ApiClient.convertToType(data['target_unit'], 'String');
            }
        }
        return obj;
    }

    /**
     * Validates the JSON data with respect to <code>ConvertUnits200Response</code>.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @return {boolean} to indicate whether the JSON data is valid with respect to <code>ConvertUnits200Response</code>.
     */
    static validateJSON(data) {
        // ensure the json data is a string
        if (data['target_unit'] && !(typeof data['target_unit'] === 'string' || data['target_unit'] instanceof String)) {
            throw new Error("Expected the field `target_unit` to be a primitive type in the JSON string but got " + data['target_unit']);
        }

        return true;
    }


}



/**
 * @member {Number} target_amount
 */
ConvertUnits200Response.prototype['target_amount'] = undefined;

/**
 * @member {String} target_unit
 */
ConvertUnits200Response.prototype['target_unit'] = undefined;






export default ConvertUnits200Response;

