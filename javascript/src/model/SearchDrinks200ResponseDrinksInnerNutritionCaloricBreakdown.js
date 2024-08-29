/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.6.3
 * Contact: mail@apileague.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 *
 */

import ApiClient from '../ApiClient';

/**
 * The SearchDrinks200ResponseDrinksInnerNutritionCaloricBreakdown model module.
 * @module model/SearchDrinks200ResponseDrinksInnerNutritionCaloricBreakdown
 * @version 1.6.3
 */
class SearchDrinks200ResponseDrinksInnerNutritionCaloricBreakdown {
    /**
     * Constructs a new <code>SearchDrinks200ResponseDrinksInnerNutritionCaloricBreakdown</code>.
     * @alias module:model/SearchDrinks200ResponseDrinksInnerNutritionCaloricBreakdown
     */
    constructor() { 
        
        SearchDrinks200ResponseDrinksInnerNutritionCaloricBreakdown.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>SearchDrinks200ResponseDrinksInnerNutritionCaloricBreakdown</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/SearchDrinks200ResponseDrinksInnerNutritionCaloricBreakdown} obj Optional instance to populate.
     * @return {module:model/SearchDrinks200ResponseDrinksInnerNutritionCaloricBreakdown} The populated <code>SearchDrinks200ResponseDrinksInnerNutritionCaloricBreakdown</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new SearchDrinks200ResponseDrinksInnerNutritionCaloricBreakdown();

            if (data.hasOwnProperty('percent_fat')) {
                obj['percent_fat'] = ApiClient.convertToType(data['percent_fat'], 'Number');
            }
            if (data.hasOwnProperty('percent_carbs')) {
                obj['percent_carbs'] = ApiClient.convertToType(data['percent_carbs'], 'Number');
            }
            if (data.hasOwnProperty('percent_protein')) {
                obj['percent_protein'] = ApiClient.convertToType(data['percent_protein'], 'Number');
            }
        }
        return obj;
    }

    /**
     * Validates the JSON data with respect to <code>SearchDrinks200ResponseDrinksInnerNutritionCaloricBreakdown</code>.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @return {boolean} to indicate whether the JSON data is valid with respect to <code>SearchDrinks200ResponseDrinksInnerNutritionCaloricBreakdown</code>.
     */
    static validateJSON(data) {

        return true;
    }


}



/**
 * @member {Number} percent_fat
 */
SearchDrinks200ResponseDrinksInnerNutritionCaloricBreakdown.prototype['percent_fat'] = undefined;

/**
 * @member {Number} percent_carbs
 */
SearchDrinks200ResponseDrinksInnerNutritionCaloricBreakdown.prototype['percent_carbs'] = undefined;

/**
 * @member {Number} percent_protein
 */
SearchDrinks200ResponseDrinksInnerNutritionCaloricBreakdown.prototype['percent_protein'] = undefined;






export default SearchDrinks200ResponseDrinksInnerNutritionCaloricBreakdown;

