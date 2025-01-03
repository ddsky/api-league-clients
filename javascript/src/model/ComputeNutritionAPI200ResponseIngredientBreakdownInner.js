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
import ComputeNutritionAPI200ResponseIngredientBreakdownInnerNutrientsInner from './ComputeNutritionAPI200ResponseIngredientBreakdownInnerNutrientsInner';

/**
 * The ComputeNutritionAPI200ResponseIngredientBreakdownInner model module.
 * @module model/ComputeNutritionAPI200ResponseIngredientBreakdownInner
 * @version 1.6.4
 */
class ComputeNutritionAPI200ResponseIngredientBreakdownInner {
    /**
     * Constructs a new <code>ComputeNutritionAPI200ResponseIngredientBreakdownInner</code>.
     * @alias module:model/ComputeNutritionAPI200ResponseIngredientBreakdownInner
     */
    constructor() { 
        
        ComputeNutritionAPI200ResponseIngredientBreakdownInner.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>ComputeNutritionAPI200ResponseIngredientBreakdownInner</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/ComputeNutritionAPI200ResponseIngredientBreakdownInner} obj Optional instance to populate.
     * @return {module:model/ComputeNutritionAPI200ResponseIngredientBreakdownInner} The populated <code>ComputeNutritionAPI200ResponseIngredientBreakdownInner</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new ComputeNutritionAPI200ResponseIngredientBreakdownInner();

            if (data.hasOwnProperty('name')) {
                obj['name'] = ApiClient.convertToType(data['name'], 'String');
            }
            if (data.hasOwnProperty('amount')) {
                obj['amount'] = ApiClient.convertToType(data['amount'], 'Number');
            }
            if (data.hasOwnProperty('unit')) {
                obj['unit'] = ApiClient.convertToType(data['unit'], 'String');
            }
            if (data.hasOwnProperty('id')) {
                obj['id'] = ApiClient.convertToType(data['id'], 'Number');
            }
            if (data.hasOwnProperty('nutrients')) {
                obj['nutrients'] = ApiClient.convertToType(data['nutrients'], [ComputeNutritionAPI200ResponseIngredientBreakdownInnerNutrientsInner]);
            }
        }
        return obj;
    }

    /**
     * Validates the JSON data with respect to <code>ComputeNutritionAPI200ResponseIngredientBreakdownInner</code>.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @return {boolean} to indicate whether the JSON data is valid with respect to <code>ComputeNutritionAPI200ResponseIngredientBreakdownInner</code>.
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
        if (data['nutrients']) { // data not null
            // ensure the json data is an array
            if (!Array.isArray(data['nutrients'])) {
                throw new Error("Expected the field `nutrients` to be an array in the JSON data but got " + data['nutrients']);
            }
            // validate the optional field `nutrients` (array)
            for (const item of data['nutrients']) {
                ComputeNutritionAPI200ResponseIngredientBreakdownInnerNutrientsInner.validateJSON(item);
            };
        }

        return true;
    }


}



/**
 * @member {String} name
 */
ComputeNutritionAPI200ResponseIngredientBreakdownInner.prototype['name'] = undefined;

/**
 * @member {Number} amount
 */
ComputeNutritionAPI200ResponseIngredientBreakdownInner.prototype['amount'] = undefined;

/**
 * @member {String} unit
 */
ComputeNutritionAPI200ResponseIngredientBreakdownInner.prototype['unit'] = undefined;

/**
 * @member {Number} id
 */
ComputeNutritionAPI200ResponseIngredientBreakdownInner.prototype['id'] = undefined;

/**
 * @member {Array.<module:model/ComputeNutritionAPI200ResponseIngredientBreakdownInnerNutrientsInner>} nutrients
 */
ComputeNutritionAPI200ResponseIngredientBreakdownInner.prototype['nutrients'] = undefined;






export default ComputeNutritionAPI200ResponseIngredientBreakdownInner;

