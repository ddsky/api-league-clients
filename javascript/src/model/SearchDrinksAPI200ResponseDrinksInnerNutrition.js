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
import SearchDrinksAPI200ResponseDrinksInnerNutritionCaloricBreakdown from './SearchDrinksAPI200ResponseDrinksInnerNutritionCaloricBreakdown';
import SearchDrinksAPI200ResponseDrinksInnerNutritionFlavonoidsInner from './SearchDrinksAPI200ResponseDrinksInnerNutritionFlavonoidsInner';
import SearchDrinksAPI200ResponseDrinksInnerNutritionIngredientBreakdownInner from './SearchDrinksAPI200ResponseDrinksInnerNutritionIngredientBreakdownInner';
import SearchDrinksAPI200ResponseDrinksInnerNutritionNutrientsInner from './SearchDrinksAPI200ResponseDrinksInnerNutritionNutrientsInner';
import SearchDrinksAPI200ResponseDrinksInnerNutritionWeightPerServing from './SearchDrinksAPI200ResponseDrinksInnerNutritionWeightPerServing';

/**
 * The SearchDrinksAPI200ResponseDrinksInnerNutrition model module.
 * @module model/SearchDrinksAPI200ResponseDrinksInnerNutrition
 * @version 1.6.4
 */
class SearchDrinksAPI200ResponseDrinksInnerNutrition {
    /**
     * Constructs a new <code>SearchDrinksAPI200ResponseDrinksInnerNutrition</code>.
     * @alias module:model/SearchDrinksAPI200ResponseDrinksInnerNutrition
     */
    constructor() { 
        
        SearchDrinksAPI200ResponseDrinksInnerNutrition.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>SearchDrinksAPI200ResponseDrinksInnerNutrition</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/SearchDrinksAPI200ResponseDrinksInnerNutrition} obj Optional instance to populate.
     * @return {module:model/SearchDrinksAPI200ResponseDrinksInnerNutrition} The populated <code>SearchDrinksAPI200ResponseDrinksInnerNutrition</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new SearchDrinksAPI200ResponseDrinksInnerNutrition();

            if (data.hasOwnProperty('weight_per_serving')) {
                obj['weight_per_serving'] = SearchDrinksAPI200ResponseDrinksInnerNutritionWeightPerServing.constructFromObject(data['weight_per_serving']);
            }
            if (data.hasOwnProperty('caloric_breakdown')) {
                obj['caloric_breakdown'] = SearchDrinksAPI200ResponseDrinksInnerNutritionCaloricBreakdown.constructFromObject(data['caloric_breakdown']);
            }
            if (data.hasOwnProperty('flavonoids')) {
                obj['flavonoids'] = ApiClient.convertToType(data['flavonoids'], [SearchDrinksAPI200ResponseDrinksInnerNutritionFlavonoidsInner]);
            }
            if (data.hasOwnProperty('ingredient_breakdown')) {
                obj['ingredient_breakdown'] = ApiClient.convertToType(data['ingredient_breakdown'], [SearchDrinksAPI200ResponseDrinksInnerNutritionIngredientBreakdownInner]);
            }
            if (data.hasOwnProperty('properties')) {
                obj['properties'] = ApiClient.convertToType(data['properties'], [SearchDrinksAPI200ResponseDrinksInnerNutritionFlavonoidsInner]);
            }
            if (data.hasOwnProperty('nutrients')) {
                obj['nutrients'] = ApiClient.convertToType(data['nutrients'], [SearchDrinksAPI200ResponseDrinksInnerNutritionNutrientsInner]);
            }
        }
        return obj;
    }

    /**
     * Validates the JSON data with respect to <code>SearchDrinksAPI200ResponseDrinksInnerNutrition</code>.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @return {boolean} to indicate whether the JSON data is valid with respect to <code>SearchDrinksAPI200ResponseDrinksInnerNutrition</code>.
     */
    static validateJSON(data) {
        // validate the optional field `weight_per_serving`
        if (data['weight_per_serving']) { // data not null
          SearchDrinksAPI200ResponseDrinksInnerNutritionWeightPerServing.validateJSON(data['weight_per_serving']);
        }
        // validate the optional field `caloric_breakdown`
        if (data['caloric_breakdown']) { // data not null
          SearchDrinksAPI200ResponseDrinksInnerNutritionCaloricBreakdown.validateJSON(data['caloric_breakdown']);
        }
        if (data['flavonoids']) { // data not null
            // ensure the json data is an array
            if (!Array.isArray(data['flavonoids'])) {
                throw new Error("Expected the field `flavonoids` to be an array in the JSON data but got " + data['flavonoids']);
            }
            // validate the optional field `flavonoids` (array)
            for (const item of data['flavonoids']) {
                SearchDrinksAPI200ResponseDrinksInnerNutritionFlavonoidsInner.validateJSON(item);
            };
        }
        if (data['ingredient_breakdown']) { // data not null
            // ensure the json data is an array
            if (!Array.isArray(data['ingredient_breakdown'])) {
                throw new Error("Expected the field `ingredient_breakdown` to be an array in the JSON data but got " + data['ingredient_breakdown']);
            }
            // validate the optional field `ingredient_breakdown` (array)
            for (const item of data['ingredient_breakdown']) {
                SearchDrinksAPI200ResponseDrinksInnerNutritionIngredientBreakdownInner.validateJSON(item);
            };
        }
        if (data['properties']) { // data not null
            // ensure the json data is an array
            if (!Array.isArray(data['properties'])) {
                throw new Error("Expected the field `properties` to be an array in the JSON data but got " + data['properties']);
            }
            // validate the optional field `properties` (array)
            for (const item of data['properties']) {
                SearchDrinksAPI200ResponseDrinksInnerNutritionFlavonoidsInner.validateJSON(item);
            };
        }
        if (data['nutrients']) { // data not null
            // ensure the json data is an array
            if (!Array.isArray(data['nutrients'])) {
                throw new Error("Expected the field `nutrients` to be an array in the JSON data but got " + data['nutrients']);
            }
            // validate the optional field `nutrients` (array)
            for (const item of data['nutrients']) {
                SearchDrinksAPI200ResponseDrinksInnerNutritionNutrientsInner.validateJSON(item);
            };
        }

        return true;
    }


}



/**
 * @member {module:model/SearchDrinksAPI200ResponseDrinksInnerNutritionWeightPerServing} weight_per_serving
 */
SearchDrinksAPI200ResponseDrinksInnerNutrition.prototype['weight_per_serving'] = undefined;

/**
 * @member {module:model/SearchDrinksAPI200ResponseDrinksInnerNutritionCaloricBreakdown} caloric_breakdown
 */
SearchDrinksAPI200ResponseDrinksInnerNutrition.prototype['caloric_breakdown'] = undefined;

/**
 * @member {Array.<module:model/SearchDrinksAPI200ResponseDrinksInnerNutritionFlavonoidsInner>} flavonoids
 */
SearchDrinksAPI200ResponseDrinksInnerNutrition.prototype['flavonoids'] = undefined;

/**
 * @member {Array.<module:model/SearchDrinksAPI200ResponseDrinksInnerNutritionIngredientBreakdownInner>} ingredient_breakdown
 */
SearchDrinksAPI200ResponseDrinksInnerNutrition.prototype['ingredient_breakdown'] = undefined;

/**
 * @member {Array.<module:model/SearchDrinksAPI200ResponseDrinksInnerNutritionFlavonoidsInner>} properties
 */
SearchDrinksAPI200ResponseDrinksInnerNutrition.prototype['properties'] = undefined;

/**
 * @member {Array.<module:model/SearchDrinksAPI200ResponseDrinksInnerNutritionNutrientsInner>} nutrients
 */
SearchDrinksAPI200ResponseDrinksInnerNutrition.prototype['nutrients'] = undefined;






export default SearchDrinksAPI200ResponseDrinksInnerNutrition;

