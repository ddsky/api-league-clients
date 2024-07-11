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
 * The RetrieveRecipeInformation200ResponseNutritionCaloricBreakdown model module.
 * @module model/RetrieveRecipeInformation200ResponseNutritionCaloricBreakdown
 * @version 1.4.1
 */
class RetrieveRecipeInformation200ResponseNutritionCaloricBreakdown {
    /**
     * Constructs a new <code>RetrieveRecipeInformation200ResponseNutritionCaloricBreakdown</code>.
     * @alias module:model/RetrieveRecipeInformation200ResponseNutritionCaloricBreakdown
     */
    constructor() { 
        
        RetrieveRecipeInformation200ResponseNutritionCaloricBreakdown.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>RetrieveRecipeInformation200ResponseNutritionCaloricBreakdown</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/RetrieveRecipeInformation200ResponseNutritionCaloricBreakdown} obj Optional instance to populate.
     * @return {module:model/RetrieveRecipeInformation200ResponseNutritionCaloricBreakdown} The populated <code>RetrieveRecipeInformation200ResponseNutritionCaloricBreakdown</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new RetrieveRecipeInformation200ResponseNutritionCaloricBreakdown();

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
     * Validates the JSON data with respect to <code>RetrieveRecipeInformation200ResponseNutritionCaloricBreakdown</code>.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @return {boolean} to indicate whether the JSON data is valid with respect to <code>RetrieveRecipeInformation200ResponseNutritionCaloricBreakdown</code>.
     */
    static validateJSON(data) {

        return true;
    }


}



/**
 * @member {Number} percent_fat
 */
RetrieveRecipeInformation200ResponseNutritionCaloricBreakdown.prototype['percent_fat'] = undefined;

/**
 * @member {Number} percent_carbs
 */
RetrieveRecipeInformation200ResponseNutritionCaloricBreakdown.prototype['percent_carbs'] = undefined;

/**
 * @member {Number} percent_protein
 */
RetrieveRecipeInformation200ResponseNutritionCaloricBreakdown.prototype['percent_protein'] = undefined;






export default RetrieveRecipeInformation200ResponseNutritionCaloricBreakdown;

