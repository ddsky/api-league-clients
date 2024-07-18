/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.5.0
 * Contact: mail@apileague.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 *
 */

import ApiClient from '../ApiClient';
import SearchDrinks200ResponseDrinksInnerInstructionsInnerStepsInnerIngredientsInner from './SearchDrinks200ResponseDrinksInnerInstructionsInnerStepsInnerIngredientsInner';

/**
 * The RetrieveRecipeInformation200ResponseInstructionsInnerStepsInner model module.
 * @module model/RetrieveRecipeInformation200ResponseInstructionsInnerStepsInner
 * @version 1.5.0
 */
class RetrieveRecipeInformation200ResponseInstructionsInnerStepsInner {
    /**
     * Constructs a new <code>RetrieveRecipeInformation200ResponseInstructionsInnerStepsInner</code>.
     * @alias module:model/RetrieveRecipeInformation200ResponseInstructionsInnerStepsInner
     */
    constructor() { 
        
        RetrieveRecipeInformation200ResponseInstructionsInnerStepsInner.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>RetrieveRecipeInformation200ResponseInstructionsInnerStepsInner</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/RetrieveRecipeInformation200ResponseInstructionsInnerStepsInner} obj Optional instance to populate.
     * @return {module:model/RetrieveRecipeInformation200ResponseInstructionsInnerStepsInner} The populated <code>RetrieveRecipeInformation200ResponseInstructionsInnerStepsInner</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new RetrieveRecipeInformation200ResponseInstructionsInnerStepsInner();

            if (data.hasOwnProperty('number')) {
                obj['number'] = ApiClient.convertToType(data['number'], 'Number');
            }
            if (data.hasOwnProperty('ingredients')) {
                obj['ingredients'] = ApiClient.convertToType(data['ingredients'], [SearchDrinks200ResponseDrinksInnerInstructionsInnerStepsInnerIngredientsInner]);
            }
            if (data.hasOwnProperty('equipment')) {
                obj['equipment'] = ApiClient.convertToType(data['equipment'], [SearchDrinks200ResponseDrinksInnerInstructionsInnerStepsInnerIngredientsInner]);
            }
            if (data.hasOwnProperty('step')) {
                obj['step'] = ApiClient.convertToType(data['step'], 'String');
            }
        }
        return obj;
    }

    /**
     * Validates the JSON data with respect to <code>RetrieveRecipeInformation200ResponseInstructionsInnerStepsInner</code>.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @return {boolean} to indicate whether the JSON data is valid with respect to <code>RetrieveRecipeInformation200ResponseInstructionsInnerStepsInner</code>.
     */
    static validateJSON(data) {
        if (data['ingredients']) { // data not null
            // ensure the json data is an array
            if (!Array.isArray(data['ingredients'])) {
                throw new Error("Expected the field `ingredients` to be an array in the JSON data but got " + data['ingredients']);
            }
            // validate the optional field `ingredients` (array)
            for (const item of data['ingredients']) {
                SearchDrinks200ResponseDrinksInnerInstructionsInnerStepsInnerIngredientsInner.validateJSON(item);
            };
        }
        if (data['equipment']) { // data not null
            // ensure the json data is an array
            if (!Array.isArray(data['equipment'])) {
                throw new Error("Expected the field `equipment` to be an array in the JSON data but got " + data['equipment']);
            }
            // validate the optional field `equipment` (array)
            for (const item of data['equipment']) {
                SearchDrinks200ResponseDrinksInnerInstructionsInnerStepsInnerIngredientsInner.validateJSON(item);
            };
        }
        // ensure the json data is a string
        if (data['step'] && !(typeof data['step'] === 'string' || data['step'] instanceof String)) {
            throw new Error("Expected the field `step` to be a primitive type in the JSON string but got " + data['step']);
        }

        return true;
    }


}



/**
 * @member {Number} number
 */
RetrieveRecipeInformation200ResponseInstructionsInnerStepsInner.prototype['number'] = undefined;

/**
 * @member {Array.<module:model/SearchDrinks200ResponseDrinksInnerInstructionsInnerStepsInnerIngredientsInner>} ingredients
 */
RetrieveRecipeInformation200ResponseInstructionsInnerStepsInner.prototype['ingredients'] = undefined;

/**
 * @member {Array.<module:model/SearchDrinks200ResponseDrinksInnerInstructionsInnerStepsInnerIngredientsInner>} equipment
 */
RetrieveRecipeInformation200ResponseInstructionsInnerStepsInner.prototype['equipment'] = undefined;

/**
 * @member {String} step
 */
RetrieveRecipeInformation200ResponseInstructionsInnerStepsInner.prototype['step'] = undefined;






export default RetrieveRecipeInformation200ResponseInstructionsInnerStepsInner;

