/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.4.1
 * Contact: mail@apileague.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 *
 */

import ApiClient from '../ApiClient';

/**
 * The RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInnerNutrientsInner model module.
 * @module model/RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInnerNutrientsInner
 * @version 1.4.1
 */
class RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInnerNutrientsInner {
    /**
     * Constructs a new <code>RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInnerNutrientsInner</code>.
     * @alias module:model/RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInnerNutrientsInner
     */
    constructor() { 
        
        RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInnerNutrientsInner.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInnerNutrientsInner</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInnerNutrientsInner} obj Optional instance to populate.
     * @return {module:model/RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInnerNutrientsInner} The populated <code>RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInnerNutrientsInner</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInnerNutrientsInner();

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
     * Validates the JSON data with respect to <code>RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInnerNutrientsInner</code>.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @return {boolean} to indicate whether the JSON data is valid with respect to <code>RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInnerNutrientsInner</code>.
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
RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInnerNutrientsInner.prototype['name'] = undefined;

/**
 * @member {Number} percent_of_daily_needs
 */
RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInnerNutrientsInner.prototype['percent_of_daily_needs'] = undefined;

/**
 * @member {Number} amount
 */
RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInnerNutrientsInner.prototype['amount'] = undefined;

/**
 * @member {String} unit
 */
RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInnerNutrientsInner.prototype['unit'] = undefined;






export default RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInnerNutrientsInner;

