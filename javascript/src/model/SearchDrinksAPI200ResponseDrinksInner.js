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
import SearchDrinksAPI200ResponseDrinksInnerCredits from './SearchDrinksAPI200ResponseDrinksInnerCredits';
import SearchDrinksAPI200ResponseDrinksInnerIngredientsInner from './SearchDrinksAPI200ResponseDrinksInnerIngredientsInner';
import SearchDrinksAPI200ResponseDrinksInnerInstructionsInner from './SearchDrinksAPI200ResponseDrinksInnerInstructionsInner';
import SearchDrinksAPI200ResponseDrinksInnerNutrition from './SearchDrinksAPI200ResponseDrinksInnerNutrition';

/**
 * The SearchDrinksAPI200ResponseDrinksInner model module.
 * @module model/SearchDrinksAPI200ResponseDrinksInner
 * @version 1.6.4
 */
class SearchDrinksAPI200ResponseDrinksInner {
    /**
     * Constructs a new <code>SearchDrinksAPI200ResponseDrinksInner</code>.
     * @alias module:model/SearchDrinksAPI200ResponseDrinksInner
     */
    constructor() { 
        
        SearchDrinksAPI200ResponseDrinksInner.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>SearchDrinksAPI200ResponseDrinksInner</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/SearchDrinksAPI200ResponseDrinksInner} obj Optional instance to populate.
     * @return {module:model/SearchDrinksAPI200ResponseDrinksInner} The populated <code>SearchDrinksAPI200ResponseDrinksInner</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new SearchDrinksAPI200ResponseDrinksInner();

            if (data.hasOwnProperty('flavors')) {
                obj['flavors'] = ApiClient.convertToType(data['flavors'], ['String']);
            }
            if (data.hasOwnProperty('instructions')) {
                obj['instructions'] = ApiClient.convertToType(data['instructions'], [SearchDrinksAPI200ResponseDrinksInnerInstructionsInner]);
            }
            if (data.hasOwnProperty('images')) {
                obj['images'] = ApiClient.convertToType(data['images'], ['String']);
            }
            if (data.hasOwnProperty('nutrition')) {
                obj['nutrition'] = SearchDrinksAPI200ResponseDrinksInnerNutrition.constructFromObject(data['nutrition']);
            }
            if (data.hasOwnProperty('glass_type')) {
                obj['glass_type'] = ApiClient.convertToType(data['glass_type'], 'String');
            }
            if (data.hasOwnProperty('credits')) {
                obj['credits'] = SearchDrinksAPI200ResponseDrinksInnerCredits.constructFromObject(data['credits']);
            }
            if (data.hasOwnProperty('price_per_serving')) {
                obj['price_per_serving'] = ApiClient.convertToType(data['price_per_serving'], 'Number');
            }
            if (data.hasOwnProperty('description')) {
                obj['description'] = ApiClient.convertToType(data['description'], 'String');
            }
            if (data.hasOwnProperty('ingredients')) {
                obj['ingredients'] = ApiClient.convertToType(data['ingredients'], [SearchDrinksAPI200ResponseDrinksInnerIngredientsInner]);
            }
            if (data.hasOwnProperty('id')) {
                obj['id'] = ApiClient.convertToType(data['id'], 'Number');
            }
            if (data.hasOwnProperty('title')) {
                obj['title'] = ApiClient.convertToType(data['title'], 'String');
            }
            if (data.hasOwnProperty('cuisines')) {
                obj['cuisines'] = ApiClient.convertToType(data['cuisines'], ['String']);
            }
        }
        return obj;
    }

    /**
     * Validates the JSON data with respect to <code>SearchDrinksAPI200ResponseDrinksInner</code>.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @return {boolean} to indicate whether the JSON data is valid with respect to <code>SearchDrinksAPI200ResponseDrinksInner</code>.
     */
    static validateJSON(data) {
        // ensure the json data is an array
        if (!Array.isArray(data['flavors'])) {
            throw new Error("Expected the field `flavors` to be an array in the JSON data but got " + data['flavors']);
        }
        if (data['instructions']) { // data not null
            // ensure the json data is an array
            if (!Array.isArray(data['instructions'])) {
                throw new Error("Expected the field `instructions` to be an array in the JSON data but got " + data['instructions']);
            }
            // validate the optional field `instructions` (array)
            for (const item of data['instructions']) {
                SearchDrinksAPI200ResponseDrinksInnerInstructionsInner.validateJSON(item);
            };
        }
        // ensure the json data is an array
        if (!Array.isArray(data['images'])) {
            throw new Error("Expected the field `images` to be an array in the JSON data but got " + data['images']);
        }
        // validate the optional field `nutrition`
        if (data['nutrition']) { // data not null
          SearchDrinksAPI200ResponseDrinksInnerNutrition.validateJSON(data['nutrition']);
        }
        // ensure the json data is a string
        if (data['glass_type'] && !(typeof data['glass_type'] === 'string' || data['glass_type'] instanceof String)) {
            throw new Error("Expected the field `glass_type` to be a primitive type in the JSON string but got " + data['glass_type']);
        }
        // validate the optional field `credits`
        if (data['credits']) { // data not null
          SearchDrinksAPI200ResponseDrinksInnerCredits.validateJSON(data['credits']);
        }
        // ensure the json data is a string
        if (data['description'] && !(typeof data['description'] === 'string' || data['description'] instanceof String)) {
            throw new Error("Expected the field `description` to be a primitive type in the JSON string but got " + data['description']);
        }
        if (data['ingredients']) { // data not null
            // ensure the json data is an array
            if (!Array.isArray(data['ingredients'])) {
                throw new Error("Expected the field `ingredients` to be an array in the JSON data but got " + data['ingredients']);
            }
            // validate the optional field `ingredients` (array)
            for (const item of data['ingredients']) {
                SearchDrinksAPI200ResponseDrinksInnerIngredientsInner.validateJSON(item);
            };
        }
        // ensure the json data is a string
        if (data['title'] && !(typeof data['title'] === 'string' || data['title'] instanceof String)) {
            throw new Error("Expected the field `title` to be a primitive type in the JSON string but got " + data['title']);
        }
        // ensure the json data is an array
        if (!Array.isArray(data['cuisines'])) {
            throw new Error("Expected the field `cuisines` to be an array in the JSON data but got " + data['cuisines']);
        }

        return true;
    }


}



/**
 * @member {Array.<String>} flavors
 */
SearchDrinksAPI200ResponseDrinksInner.prototype['flavors'] = undefined;

/**
 * @member {Array.<module:model/SearchDrinksAPI200ResponseDrinksInnerInstructionsInner>} instructions
 */
SearchDrinksAPI200ResponseDrinksInner.prototype['instructions'] = undefined;

/**
 * @member {Array.<String>} images
 */
SearchDrinksAPI200ResponseDrinksInner.prototype['images'] = undefined;

/**
 * @member {module:model/SearchDrinksAPI200ResponseDrinksInnerNutrition} nutrition
 */
SearchDrinksAPI200ResponseDrinksInner.prototype['nutrition'] = undefined;

/**
 * @member {String} glass_type
 */
SearchDrinksAPI200ResponseDrinksInner.prototype['glass_type'] = undefined;

/**
 * @member {module:model/SearchDrinksAPI200ResponseDrinksInnerCredits} credits
 */
SearchDrinksAPI200ResponseDrinksInner.prototype['credits'] = undefined;

/**
 * @member {Number} price_per_serving
 */
SearchDrinksAPI200ResponseDrinksInner.prototype['price_per_serving'] = undefined;

/**
 * @member {String} description
 */
SearchDrinksAPI200ResponseDrinksInner.prototype['description'] = undefined;

/**
 * @member {Array.<module:model/SearchDrinksAPI200ResponseDrinksInnerIngredientsInner>} ingredients
 */
SearchDrinksAPI200ResponseDrinksInner.prototype['ingredients'] = undefined;

/**
 * @member {Number} id
 */
SearchDrinksAPI200ResponseDrinksInner.prototype['id'] = undefined;

/**
 * @member {String} title
 */
SearchDrinksAPI200ResponseDrinksInner.prototype['title'] = undefined;

/**
 * @member {Array.<String>} cuisines
 */
SearchDrinksAPI200ResponseDrinksInner.prototype['cuisines'] = undefined;






export default SearchDrinksAPI200ResponseDrinksInner;

