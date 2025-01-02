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

/**
 * The SearchDrinksAPI200ResponseDrinksInnerIngredientsInnerMeasuresMetric model module.
 * @module model/SearchDrinksAPI200ResponseDrinksInnerIngredientsInnerMeasuresMetric
 * @version 1.6.4
 */
class SearchDrinksAPI200ResponseDrinksInnerIngredientsInnerMeasuresMetric {
    /**
     * Constructs a new <code>SearchDrinksAPI200ResponseDrinksInnerIngredientsInnerMeasuresMetric</code>.
     * @alias module:model/SearchDrinksAPI200ResponseDrinksInnerIngredientsInnerMeasuresMetric
     */
    constructor() { 
        
        SearchDrinksAPI200ResponseDrinksInnerIngredientsInnerMeasuresMetric.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>SearchDrinksAPI200ResponseDrinksInnerIngredientsInnerMeasuresMetric</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/SearchDrinksAPI200ResponseDrinksInnerIngredientsInnerMeasuresMetric} obj Optional instance to populate.
     * @return {module:model/SearchDrinksAPI200ResponseDrinksInnerIngredientsInnerMeasuresMetric} The populated <code>SearchDrinksAPI200ResponseDrinksInnerIngredientsInnerMeasuresMetric</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new SearchDrinksAPI200ResponseDrinksInnerIngredientsInnerMeasuresMetric();

            if (data.hasOwnProperty('unit_short')) {
                obj['unit_short'] = ApiClient.convertToType(data['unit_short'], 'String');
            }
            if (data.hasOwnProperty('amount')) {
                obj['amount'] = ApiClient.convertToType(data['amount'], 'Number');
            }
            if (data.hasOwnProperty('unit_long')) {
                obj['unit_long'] = ApiClient.convertToType(data['unit_long'], 'String');
            }
        }
        return obj;
    }

    /**
     * Validates the JSON data with respect to <code>SearchDrinksAPI200ResponseDrinksInnerIngredientsInnerMeasuresMetric</code>.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @return {boolean} to indicate whether the JSON data is valid with respect to <code>SearchDrinksAPI200ResponseDrinksInnerIngredientsInnerMeasuresMetric</code>.
     */
    static validateJSON(data) {
        // ensure the json data is a string
        if (data['unit_short'] && !(typeof data['unit_short'] === 'string' || data['unit_short'] instanceof String)) {
            throw new Error("Expected the field `unit_short` to be a primitive type in the JSON string but got " + data['unit_short']);
        }
        // ensure the json data is a string
        if (data['unit_long'] && !(typeof data['unit_long'] === 'string' || data['unit_long'] instanceof String)) {
            throw new Error("Expected the field `unit_long` to be a primitive type in the JSON string but got " + data['unit_long']);
        }

        return true;
    }


}



/**
 * @member {String} unit_short
 */
SearchDrinksAPI200ResponseDrinksInnerIngredientsInnerMeasuresMetric.prototype['unit_short'] = undefined;

/**
 * @member {Number} amount
 */
SearchDrinksAPI200ResponseDrinksInnerIngredientsInnerMeasuresMetric.prototype['amount'] = undefined;

/**
 * @member {String} unit_long
 */
SearchDrinksAPI200ResponseDrinksInnerIngredientsInnerMeasuresMetric.prototype['unit_long'] = undefined;






export default SearchDrinksAPI200ResponseDrinksInnerIngredientsInnerMeasuresMetric;

