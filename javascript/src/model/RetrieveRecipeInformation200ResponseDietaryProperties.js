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
 * The RetrieveRecipeInformation200ResponseDietaryProperties model module.
 * @module model/RetrieveRecipeInformation200ResponseDietaryProperties
 * @version 1.6.3
 */
class RetrieveRecipeInformation200ResponseDietaryProperties {
    /**
     * Constructs a new <code>RetrieveRecipeInformation200ResponseDietaryProperties</code>.
     * @alias module:model/RetrieveRecipeInformation200ResponseDietaryProperties
     */
    constructor() { 
        
        RetrieveRecipeInformation200ResponseDietaryProperties.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>RetrieveRecipeInformation200ResponseDietaryProperties</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/RetrieveRecipeInformation200ResponseDietaryProperties} obj Optional instance to populate.
     * @return {module:model/RetrieveRecipeInformation200ResponseDietaryProperties} The populated <code>RetrieveRecipeInformation200ResponseDietaryProperties</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new RetrieveRecipeInformation200ResponseDietaryProperties();

            if (data.hasOwnProperty('low_fodmap')) {
                obj['low_fodmap'] = ApiClient.convertToType(data['low_fodmap'], 'Boolean');
            }
            if (data.hasOwnProperty('vegetarian')) {
                obj['vegetarian'] = ApiClient.convertToType(data['vegetarian'], 'Boolean');
            }
            if (data.hasOwnProperty('vegan')) {
                obj['vegan'] = ApiClient.convertToType(data['vegan'], 'Boolean');
            }
            if (data.hasOwnProperty('gluten_free')) {
                obj['gluten_free'] = ApiClient.convertToType(data['gluten_free'], 'Boolean');
            }
            if (data.hasOwnProperty('dairy_free')) {
                obj['dairy_free'] = ApiClient.convertToType(data['dairy_free'], 'Boolean');
            }
            if (data.hasOwnProperty('gaps')) {
                obj['gaps'] = ApiClient.convertToType(data['gaps'], 'String');
            }
            if (data.hasOwnProperty('diets')) {
                obj['diets'] = ApiClient.convertToType(data['diets'], ['String']);
            }
        }
        return obj;
    }

    /**
     * Validates the JSON data with respect to <code>RetrieveRecipeInformation200ResponseDietaryProperties</code>.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @return {boolean} to indicate whether the JSON data is valid with respect to <code>RetrieveRecipeInformation200ResponseDietaryProperties</code>.
     */
    static validateJSON(data) {
        // ensure the json data is a string
        if (data['gaps'] && !(typeof data['gaps'] === 'string' || data['gaps'] instanceof String)) {
            throw new Error("Expected the field `gaps` to be a primitive type in the JSON string but got " + data['gaps']);
        }
        // ensure the json data is an array
        if (!Array.isArray(data['diets'])) {
            throw new Error("Expected the field `diets` to be an array in the JSON data but got " + data['diets']);
        }

        return true;
    }


}



/**
 * @member {Boolean} low_fodmap
 */
RetrieveRecipeInformation200ResponseDietaryProperties.prototype['low_fodmap'] = undefined;

/**
 * @member {Boolean} vegetarian
 */
RetrieveRecipeInformation200ResponseDietaryProperties.prototype['vegetarian'] = undefined;

/**
 * @member {Boolean} vegan
 */
RetrieveRecipeInformation200ResponseDietaryProperties.prototype['vegan'] = undefined;

/**
 * @member {Boolean} gluten_free
 */
RetrieveRecipeInformation200ResponseDietaryProperties.prototype['gluten_free'] = undefined;

/**
 * @member {Boolean} dairy_free
 */
RetrieveRecipeInformation200ResponseDietaryProperties.prototype['dairy_free'] = undefined;

/**
 * @member {String} gaps
 */
RetrieveRecipeInformation200ResponseDietaryProperties.prototype['gaps'] = undefined;

/**
 * @member {Array.<String>} diets
 */
RetrieveRecipeInformation200ResponseDietaryProperties.prototype['diets'] = undefined;






export default RetrieveRecipeInformation200ResponseDietaryProperties;

