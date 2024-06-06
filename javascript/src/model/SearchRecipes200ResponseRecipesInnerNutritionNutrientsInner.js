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
 * The SearchRecipes200ResponseRecipesInnerNutritionNutrientsInner model module.
 * @module model/SearchRecipes200ResponseRecipesInnerNutritionNutrientsInner
 * @version 1.2.0
 */
class SearchRecipes200ResponseRecipesInnerNutritionNutrientsInner {
    /**
     * Constructs a new <code>SearchRecipes200ResponseRecipesInnerNutritionNutrientsInner</code>.
     * @alias module:model/SearchRecipes200ResponseRecipesInnerNutritionNutrientsInner
     */
    constructor() { 
        
        SearchRecipes200ResponseRecipesInnerNutritionNutrientsInner.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>SearchRecipes200ResponseRecipesInnerNutritionNutrientsInner</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/SearchRecipes200ResponseRecipesInnerNutritionNutrientsInner} obj Optional instance to populate.
     * @return {module:model/SearchRecipes200ResponseRecipesInnerNutritionNutrientsInner} The populated <code>SearchRecipes200ResponseRecipesInnerNutritionNutrientsInner</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new SearchRecipes200ResponseRecipesInnerNutritionNutrientsInner();

            if (data.hasOwnProperty('name')) {
                obj['name'] = ApiClient.convertToType(data['name'], 'String');
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
     * Validates the JSON data with respect to <code>SearchRecipes200ResponseRecipesInnerNutritionNutrientsInner</code>.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @return {boolean} to indicate whether the JSON data is valid with respect to <code>SearchRecipes200ResponseRecipesInnerNutritionNutrientsInner</code>.
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
SearchRecipes200ResponseRecipesInnerNutritionNutrientsInner.prototype['name'] = undefined;

/**
 * @member {Number} amount
 */
SearchRecipes200ResponseRecipesInnerNutritionNutrientsInner.prototype['amount'] = undefined;

/**
 * @member {String} unit
 */
SearchRecipes200ResponseRecipesInnerNutritionNutrientsInner.prototype['unit'] = undefined;






export default SearchRecipes200ResponseRecipesInnerNutritionNutrientsInner;

