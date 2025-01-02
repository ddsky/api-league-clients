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
import SearchRecipesAPI200ResponseRecipesInnerNutritionNutrientsInner from './SearchRecipesAPI200ResponseRecipesInnerNutritionNutrientsInner';

/**
 * The SearchRecipesAPI200ResponseRecipesInnerNutrition model module.
 * @module model/SearchRecipesAPI200ResponseRecipesInnerNutrition
 * @version 1.6.4
 */
class SearchRecipesAPI200ResponseRecipesInnerNutrition {
    /**
     * Constructs a new <code>SearchRecipesAPI200ResponseRecipesInnerNutrition</code>.
     * @alias module:model/SearchRecipesAPI200ResponseRecipesInnerNutrition
     */
    constructor() { 
        
        SearchRecipesAPI200ResponseRecipesInnerNutrition.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>SearchRecipesAPI200ResponseRecipesInnerNutrition</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/SearchRecipesAPI200ResponseRecipesInnerNutrition} obj Optional instance to populate.
     * @return {module:model/SearchRecipesAPI200ResponseRecipesInnerNutrition} The populated <code>SearchRecipesAPI200ResponseRecipesInnerNutrition</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new SearchRecipesAPI200ResponseRecipesInnerNutrition();

            if (data.hasOwnProperty('nutrients')) {
                obj['nutrients'] = ApiClient.convertToType(data['nutrients'], [SearchRecipesAPI200ResponseRecipesInnerNutritionNutrientsInner]);
            }
        }
        return obj;
    }

    /**
     * Validates the JSON data with respect to <code>SearchRecipesAPI200ResponseRecipesInnerNutrition</code>.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @return {boolean} to indicate whether the JSON data is valid with respect to <code>SearchRecipesAPI200ResponseRecipesInnerNutrition</code>.
     */
    static validateJSON(data) {
        if (data['nutrients']) { // data not null
            // ensure the json data is an array
            if (!Array.isArray(data['nutrients'])) {
                throw new Error("Expected the field `nutrients` to be an array in the JSON data but got " + data['nutrients']);
            }
            // validate the optional field `nutrients` (array)
            for (const item of data['nutrients']) {
                SearchRecipesAPI200ResponseRecipesInnerNutritionNutrientsInner.validateJSON(item);
            };
        }

        return true;
    }


}



/**
 * @member {Array.<module:model/SearchRecipesAPI200ResponseRecipesInnerNutritionNutrientsInner>} nutrients
 */
SearchRecipesAPI200ResponseRecipesInnerNutrition.prototype['nutrients'] = undefined;






export default SearchRecipesAPI200ResponseRecipesInnerNutrition;
