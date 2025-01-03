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
import RetrieveRecipeInformationAPI200ResponseCredits from './RetrieveRecipeInformationAPI200ResponseCredits';
import RetrieveRecipeInformationAPI200ResponseDietaryProperties from './RetrieveRecipeInformationAPI200ResponseDietaryProperties';
import RetrieveRecipeInformationAPI200ResponseIngredientsInner from './RetrieveRecipeInformationAPI200ResponseIngredientsInner';
import RetrieveRecipeInformationAPI200ResponseInstructionsInner from './RetrieveRecipeInformationAPI200ResponseInstructionsInner';
import RetrieveRecipeInformationAPI200ResponseNutrition from './RetrieveRecipeInformationAPI200ResponseNutrition';
import RetrieveRecipeInformationAPI200ResponseScores from './RetrieveRecipeInformationAPI200ResponseScores';
import RetrieveRecipeInformationAPI200ResponseTaste from './RetrieveRecipeInformationAPI200ResponseTaste';
import RetrieveRecipeInformationAPI200ResponseTimes from './RetrieveRecipeInformationAPI200ResponseTimes';

/**
 * The RetrieveRecipeInformationAPI200Response model module.
 * @module model/RetrieveRecipeInformationAPI200Response
 * @version 1.6.4
 */
class RetrieveRecipeInformationAPI200Response {
    /**
     * Constructs a new <code>RetrieveRecipeInformationAPI200Response</code>.
     * @alias module:model/RetrieveRecipeInformationAPI200Response
     */
    constructor() { 
        
        RetrieveRecipeInformationAPI200Response.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>RetrieveRecipeInformationAPI200Response</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/RetrieveRecipeInformationAPI200Response} obj Optional instance to populate.
     * @return {module:model/RetrieveRecipeInformationAPI200Response} The populated <code>RetrieveRecipeInformationAPI200Response</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new RetrieveRecipeInformationAPI200Response();

            if (data.hasOwnProperty('id')) {
                obj['id'] = ApiClient.convertToType(data['id'], 'Number');
            }
            if (data.hasOwnProperty('title')) {
                obj['title'] = ApiClient.convertToType(data['title'], 'String');
            }
            if (data.hasOwnProperty('servings')) {
                obj['servings'] = ApiClient.convertToType(data['servings'], 'Number');
            }
            if (data.hasOwnProperty('images')) {
                obj['images'] = ApiClient.convertToType(data['images'], ['String']);
            }
            if (data.hasOwnProperty('dietary_properties')) {
                obj['dietary_properties'] = RetrieveRecipeInformationAPI200ResponseDietaryProperties.constructFromObject(data['dietary_properties']);
            }
            if (data.hasOwnProperty('price_per_serving')) {
                obj['price_per_serving'] = ApiClient.convertToType(data['price_per_serving'], 'Number');
            }
            if (data.hasOwnProperty('times')) {
                obj['times'] = RetrieveRecipeInformationAPI200ResponseTimes.constructFromObject(data['times']);
            }
            if (data.hasOwnProperty('nutrition')) {
                obj['nutrition'] = RetrieveRecipeInformationAPI200ResponseNutrition.constructFromObject(data['nutrition']);
            }
            if (data.hasOwnProperty('taste')) {
                obj['taste'] = RetrieveRecipeInformationAPI200ResponseTaste.constructFromObject(data['taste']);
            }
            if (data.hasOwnProperty('cuisines')) {
                obj['cuisines'] = ApiClient.convertToType(data['cuisines'], ['String']);
            }
            if (data.hasOwnProperty('meal_types')) {
                obj['meal_types'] = ApiClient.convertToType(data['meal_types'], ['String']);
            }
            if (data.hasOwnProperty('occasions')) {
                obj['occasions'] = ApiClient.convertToType(data['occasions'], ['String']);
            }
            if (data.hasOwnProperty('ingredients')) {
                obj['ingredients'] = ApiClient.convertToType(data['ingredients'], [RetrieveRecipeInformationAPI200ResponseIngredientsInner]);
            }
            if (data.hasOwnProperty('instructions')) {
                obj['instructions'] = ApiClient.convertToType(data['instructions'], [RetrieveRecipeInformationAPI200ResponseInstructionsInner]);
            }
            if (data.hasOwnProperty('credits')) {
                obj['credits'] = RetrieveRecipeInformationAPI200ResponseCredits.constructFromObject(data['credits']);
            }
            if (data.hasOwnProperty('scores')) {
                obj['scores'] = RetrieveRecipeInformationAPI200ResponseScores.constructFromObject(data['scores']);
            }
        }
        return obj;
    }

    /**
     * Validates the JSON data with respect to <code>RetrieveRecipeInformationAPI200Response</code>.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @return {boolean} to indicate whether the JSON data is valid with respect to <code>RetrieveRecipeInformationAPI200Response</code>.
     */
    static validateJSON(data) {
        // ensure the json data is a string
        if (data['title'] && !(typeof data['title'] === 'string' || data['title'] instanceof String)) {
            throw new Error("Expected the field `title` to be a primitive type in the JSON string but got " + data['title']);
        }
        // ensure the json data is an array
        if (!Array.isArray(data['images'])) {
            throw new Error("Expected the field `images` to be an array in the JSON data but got " + data['images']);
        }
        // validate the optional field `dietary_properties`
        if (data['dietary_properties']) { // data not null
          RetrieveRecipeInformationAPI200ResponseDietaryProperties.validateJSON(data['dietary_properties']);
        }
        // validate the optional field `times`
        if (data['times']) { // data not null
          RetrieveRecipeInformationAPI200ResponseTimes.validateJSON(data['times']);
        }
        // validate the optional field `nutrition`
        if (data['nutrition']) { // data not null
          RetrieveRecipeInformationAPI200ResponseNutrition.validateJSON(data['nutrition']);
        }
        // validate the optional field `taste`
        if (data['taste']) { // data not null
          RetrieveRecipeInformationAPI200ResponseTaste.validateJSON(data['taste']);
        }
        // ensure the json data is an array
        if (!Array.isArray(data['cuisines'])) {
            throw new Error("Expected the field `cuisines` to be an array in the JSON data but got " + data['cuisines']);
        }
        // ensure the json data is an array
        if (!Array.isArray(data['meal_types'])) {
            throw new Error("Expected the field `meal_types` to be an array in the JSON data but got " + data['meal_types']);
        }
        // ensure the json data is an array
        if (!Array.isArray(data['occasions'])) {
            throw new Error("Expected the field `occasions` to be an array in the JSON data but got " + data['occasions']);
        }
        if (data['ingredients']) { // data not null
            // ensure the json data is an array
            if (!Array.isArray(data['ingredients'])) {
                throw new Error("Expected the field `ingredients` to be an array in the JSON data but got " + data['ingredients']);
            }
            // validate the optional field `ingredients` (array)
            for (const item of data['ingredients']) {
                RetrieveRecipeInformationAPI200ResponseIngredientsInner.validateJSON(item);
            };
        }
        if (data['instructions']) { // data not null
            // ensure the json data is an array
            if (!Array.isArray(data['instructions'])) {
                throw new Error("Expected the field `instructions` to be an array in the JSON data but got " + data['instructions']);
            }
            // validate the optional field `instructions` (array)
            for (const item of data['instructions']) {
                RetrieveRecipeInformationAPI200ResponseInstructionsInner.validateJSON(item);
            };
        }
        // validate the optional field `credits`
        if (data['credits']) { // data not null
          RetrieveRecipeInformationAPI200ResponseCredits.validateJSON(data['credits']);
        }
        // validate the optional field `scores`
        if (data['scores']) { // data not null
          RetrieveRecipeInformationAPI200ResponseScores.validateJSON(data['scores']);
        }

        return true;
    }


}



/**
 * @member {Number} id
 */
RetrieveRecipeInformationAPI200Response.prototype['id'] = undefined;

/**
 * @member {String} title
 */
RetrieveRecipeInformationAPI200Response.prototype['title'] = undefined;

/**
 * @member {Number} servings
 */
RetrieveRecipeInformationAPI200Response.prototype['servings'] = undefined;

/**
 * @member {Array.<String>} images
 */
RetrieveRecipeInformationAPI200Response.prototype['images'] = undefined;

/**
 * @member {module:model/RetrieveRecipeInformationAPI200ResponseDietaryProperties} dietary_properties
 */
RetrieveRecipeInformationAPI200Response.prototype['dietary_properties'] = undefined;

/**
 * @member {Number} price_per_serving
 */
RetrieveRecipeInformationAPI200Response.prototype['price_per_serving'] = undefined;

/**
 * @member {module:model/RetrieveRecipeInformationAPI200ResponseTimes} times
 */
RetrieveRecipeInformationAPI200Response.prototype['times'] = undefined;

/**
 * @member {module:model/RetrieveRecipeInformationAPI200ResponseNutrition} nutrition
 */
RetrieveRecipeInformationAPI200Response.prototype['nutrition'] = undefined;

/**
 * @member {module:model/RetrieveRecipeInformationAPI200ResponseTaste} taste
 */
RetrieveRecipeInformationAPI200Response.prototype['taste'] = undefined;

/**
 * @member {Array.<String>} cuisines
 */
RetrieveRecipeInformationAPI200Response.prototype['cuisines'] = undefined;

/**
 * @member {Array.<String>} meal_types
 */
RetrieveRecipeInformationAPI200Response.prototype['meal_types'] = undefined;

/**
 * @member {Array.<String>} occasions
 */
RetrieveRecipeInformationAPI200Response.prototype['occasions'] = undefined;

/**
 * @member {Array.<module:model/RetrieveRecipeInformationAPI200ResponseIngredientsInner>} ingredients
 */
RetrieveRecipeInformationAPI200Response.prototype['ingredients'] = undefined;

/**
 * @member {Array.<module:model/RetrieveRecipeInformationAPI200ResponseInstructionsInner>} instructions
 */
RetrieveRecipeInformationAPI200Response.prototype['instructions'] = undefined;

/**
 * @member {module:model/RetrieveRecipeInformationAPI200ResponseCredits} credits
 */
RetrieveRecipeInformationAPI200Response.prototype['credits'] = undefined;

/**
 * @member {module:model/RetrieveRecipeInformationAPI200ResponseScores} scores
 */
RetrieveRecipeInformationAPI200Response.prototype['scores'] = undefined;






export default RetrieveRecipeInformationAPI200Response;

