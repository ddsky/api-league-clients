/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.0.0
 * Contact: mail@apileague.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 *
 */

import ApiClient from '../ApiClient';

/**
 * The ComputeNutrition200ResponseIngredientBreakdownInnerNutrientsInner model module.
 * @module model/ComputeNutrition200ResponseIngredientBreakdownInnerNutrientsInner
 * @version 1.1.0
 */
class ComputeNutrition200ResponseIngredientBreakdownInnerNutrientsInner {
    /**
     * Constructs a new <code>ComputeNutrition200ResponseIngredientBreakdownInnerNutrientsInner</code>.
     * @alias module:model/ComputeNutrition200ResponseIngredientBreakdownInnerNutrientsInner
     */
    constructor() { 
        
        ComputeNutrition200ResponseIngredientBreakdownInnerNutrientsInner.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>ComputeNutrition200ResponseIngredientBreakdownInnerNutrientsInner</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/ComputeNutrition200ResponseIngredientBreakdownInnerNutrientsInner} obj Optional instance to populate.
     * @return {module:model/ComputeNutrition200ResponseIngredientBreakdownInnerNutrientsInner} The populated <code>ComputeNutrition200ResponseIngredientBreakdownInnerNutrientsInner</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new ComputeNutrition200ResponseIngredientBreakdownInnerNutrientsInner();

            if (data.hasOwnProperty('name')) {
                obj['name'] = ApiClient.convertToType(data['name'], 'String');
            }
            if (data.hasOwnProperty('percent_of_daily_needs')) {
                obj['percent_of_daily_needs'] = ApiClient.convertToType(data['percent_of_daily_needs'], 'Number');
            }
            if (data.hasOwnProperty('amount')) {
                obj['amount'] = ApiClient.convertToType(data['amount'], 'Number');
            }
            if (data.hasOwnProperty('unit')) {
                obj['unit'] = ApiClient.convertToType(data['unit'], 'String');
            }
        }
        return obj;
    }

    /**
     * Validates the JSON data with respect to <code>ComputeNutrition200ResponseIngredientBreakdownInnerNutrientsInner</code>.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @return {boolean} to indicate whether the JSON data is valid with respect to <code>ComputeNutrition200ResponseIngredientBreakdownInnerNutrientsInner</code>.
     */
    static validateJSON(data) {
        // ensure the json data is a string
        if (data['name'] && !(typeof data['name'] === 'string' || data['name'] instanceof String)) {
            throw new Error("Expected the field `name` to be a primitive type in the JSON string but got " + data['name']);
        }
        // ensure the json data is a string
        if (data['unit'] && !(typeof data['unit'] === 'string' || data['unit'] instanceof String)) {
            throw new Error("Expected the field `unit` to be a primitive type in the JSON string but got " + data['unit']);
        }

        return true;
    }


}



/**
 * @member {String} name
 */
ComputeNutrition200ResponseIngredientBreakdownInnerNutrientsInner.prototype['name'] = undefined;

/**
 * @member {Number} percent_of_daily_needs
 */
ComputeNutrition200ResponseIngredientBreakdownInnerNutrientsInner.prototype['percent_of_daily_needs'] = undefined;

/**
 * @member {Number} amount
 */
ComputeNutrition200ResponseIngredientBreakdownInnerNutrientsInner.prototype['amount'] = undefined;

/**
 * @member {String} unit
 */
ComputeNutrition200ResponseIngredientBreakdownInnerNutrientsInner.prototype['unit'] = undefined;






export default ComputeNutrition200ResponseIngredientBreakdownInnerNutrientsInner;

