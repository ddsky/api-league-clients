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

/**
 * The RetrieveRecipeInformation200ResponseIngredientsInnerMeasuresMetric model module.
 * @module model/RetrieveRecipeInformation200ResponseIngredientsInnerMeasuresMetric
 * @version 1.3.0
 */
class RetrieveRecipeInformation200ResponseIngredientsInnerMeasuresMetric {
    /**
     * Constructs a new <code>RetrieveRecipeInformation200ResponseIngredientsInnerMeasuresMetric</code>.
     * @alias module:model/RetrieveRecipeInformation200ResponseIngredientsInnerMeasuresMetric
     */
    constructor() { 
        
        RetrieveRecipeInformation200ResponseIngredientsInnerMeasuresMetric.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>RetrieveRecipeInformation200ResponseIngredientsInnerMeasuresMetric</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/RetrieveRecipeInformation200ResponseIngredientsInnerMeasuresMetric} obj Optional instance to populate.
     * @return {module:model/RetrieveRecipeInformation200ResponseIngredientsInnerMeasuresMetric} The populated <code>RetrieveRecipeInformation200ResponseIngredientsInnerMeasuresMetric</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new RetrieveRecipeInformation200ResponseIngredientsInnerMeasuresMetric();

            if (data.hasOwnProperty('unit_short')) {
                obj['unit_short'] = ApiClient.convertToType(data['unit_short'], 'String');
            }
            if (data.hasOwnProperty('amount')) {
                obj['amount'] = ApiClient.convertToType(data['amount'], 'Number');
            }
            if (data.hasOwnProperty('unit_long')) {
                obj['unit_long'] = ApiClient.convertToType(data['unit_long'], 'String');
            }
        }
        return obj;
    }

    /**
     * Validates the JSON data with respect to <code>RetrieveRecipeInformation200ResponseIngredientsInnerMeasuresMetric</code>.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @return {boolean} to indicate whether the JSON data is valid with respect to <code>RetrieveRecipeInformation200ResponseIngredientsInnerMeasuresMetric</code>.
     */
    static validateJSON(data) {
        // ensure the json data is a string
        if (data['unit_short'] && !(typeof data['unit_short'] === 'string' || data['unit_short'] instanceof String)) {
            throw new Error("Expected the field `unit_short` to be a primitive type in the JSON string but got " + data['unit_short']);
        }
        // ensure the json data is a string
        if (data['unit_long'] && !(typeof data['unit_long'] === 'string' || data['unit_long'] instanceof String)) {
            throw new Error("Expected the field `unit_long` to be a primitive type in the JSON string but got " + data['unit_long']);
        }

        return true;
    }


}



/**
 * @member {String} unit_short
 */
RetrieveRecipeInformation200ResponseIngredientsInnerMeasuresMetric.prototype['unit_short'] = undefined;

/**
 * @member {Number} amount
 */
RetrieveRecipeInformation200ResponseIngredientsInnerMeasuresMetric.prototype['amount'] = undefined;

/**
 * @member {String} unit_long
 */
RetrieveRecipeInformation200ResponseIngredientsInnerMeasuresMetric.prototype['unit_long'] = undefined;






export default RetrieveRecipeInformation200ResponseIngredientsInnerMeasuresMetric;

