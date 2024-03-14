/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.0
 * Contact: mail@apileague.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 *
 */

import ApiClient from '../ApiClient';

/**
 * The RetrieveRecipeInformation200ResponseNutritionFlavonoidsInner model module.
 * @module model/RetrieveRecipeInformation200ResponseNutritionFlavonoidsInner
 * @version 1.0
 */
class RetrieveRecipeInformation200ResponseNutritionFlavonoidsInner {
    /**
     * Constructs a new <code>RetrieveRecipeInformation200ResponseNutritionFlavonoidsInner</code>.
     * @alias module:model/RetrieveRecipeInformation200ResponseNutritionFlavonoidsInner
     */
    constructor() { 
        
        RetrieveRecipeInformation200ResponseNutritionFlavonoidsInner.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>RetrieveRecipeInformation200ResponseNutritionFlavonoidsInner</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/RetrieveRecipeInformation200ResponseNutritionFlavonoidsInner} obj Optional instance to populate.
     * @return {module:model/RetrieveRecipeInformation200ResponseNutritionFlavonoidsInner} The populated <code>RetrieveRecipeInformation200ResponseNutritionFlavonoidsInner</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new RetrieveRecipeInformation200ResponseNutritionFlavonoidsInner();

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
     * Validates the JSON data with respect to <code>RetrieveRecipeInformation200ResponseNutritionFlavonoidsInner</code>.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @return {boolean} to indicate whether the JSON data is valid with respect to <code>RetrieveRecipeInformation200ResponseNutritionFlavonoidsInner</code>.
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
RetrieveRecipeInformation200ResponseNutritionFlavonoidsInner.prototype['name'] = undefined;

/**
 * @member {Number} amount
 */
RetrieveRecipeInformation200ResponseNutritionFlavonoidsInner.prototype['amount'] = undefined;

/**
 * @member {String} unit
 */
RetrieveRecipeInformation200ResponseNutritionFlavonoidsInner.prototype['unit'] = undefined;






export default RetrieveRecipeInformation200ResponseNutritionFlavonoidsInner;

