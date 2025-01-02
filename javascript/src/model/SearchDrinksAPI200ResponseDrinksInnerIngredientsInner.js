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
import SearchDrinksAPI200ResponseDrinksInnerIngredientsInnerMeasures from './SearchDrinksAPI200ResponseDrinksInnerIngredientsInnerMeasures';

/**
 * The SearchDrinksAPI200ResponseDrinksInnerIngredientsInner model module.
 * @module model/SearchDrinksAPI200ResponseDrinksInnerIngredientsInner
 * @version 1.6.4
 */
class SearchDrinksAPI200ResponseDrinksInnerIngredientsInner {
    /**
     * Constructs a new <code>SearchDrinksAPI200ResponseDrinksInnerIngredientsInner</code>.
     * @alias module:model/SearchDrinksAPI200ResponseDrinksInnerIngredientsInner
     */
    constructor() { 
        
        SearchDrinksAPI200ResponseDrinksInnerIngredientsInner.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>SearchDrinksAPI200ResponseDrinksInnerIngredientsInner</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/SearchDrinksAPI200ResponseDrinksInnerIngredientsInner} obj Optional instance to populate.
     * @return {module:model/SearchDrinksAPI200ResponseDrinksInnerIngredientsInner} The populated <code>SearchDrinksAPI200ResponseDrinksInnerIngredientsInner</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new SearchDrinksAPI200ResponseDrinksInnerIngredientsInner();

            if (data.hasOwnProperty('image')) {
                obj['image'] = ApiClient.convertToType(data['image'], 'String');
            }
            if (data.hasOwnProperty('name_clean')) {
                obj['name_clean'] = ApiClient.convertToType(data['name_clean'], 'String');
            }
            if (data.hasOwnProperty('amount')) {
                obj['amount'] = ApiClient.convertToType(data['amount'], 'Number');
            }
            if (data.hasOwnProperty('unit')) {
                obj['unit'] = ApiClient.convertToType(data['unit'], 'String');
            }
            if (data.hasOwnProperty('measures')) {
                obj['measures'] = SearchDrinksAPI200ResponseDrinksInnerIngredientsInnerMeasures.constructFromObject(data['measures']);
            }
            if (data.hasOwnProperty('original')) {
                obj['original'] = ApiClient.convertToType(data['original'], 'String');
            }
            if (data.hasOwnProperty('meta')) {
                obj['meta'] = ApiClient.convertToType(data['meta'], ['String']);
            }
            if (data.hasOwnProperty('original_name')) {
                obj['original_name'] = ApiClient.convertToType(data['original_name'], 'String');
            }
            if (data.hasOwnProperty('name')) {
                obj['name'] = ApiClient.convertToType(data['name'], 'String');
            }
            if (data.hasOwnProperty('id')) {
                obj['id'] = ApiClient.convertToType(data['id'], 'Number');
            }
            if (data.hasOwnProperty('aisle')) {
                obj['aisle'] = ApiClient.convertToType(data['aisle'], 'String');
            }
            if (data.hasOwnProperty('consistency')) {
                obj['consistency'] = ApiClient.convertToType(data['consistency'], 'String');
            }
        }
        return obj;
    }

    /**
     * Validates the JSON data with respect to <code>SearchDrinksAPI200ResponseDrinksInnerIngredientsInner</code>.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @return {boolean} to indicate whether the JSON data is valid with respect to <code>SearchDrinksAPI200ResponseDrinksInnerIngredientsInner</code>.
     */
    static validateJSON(data) {
        // ensure the json data is a string
        if (data['image'] && !(typeof data['image'] === 'string' || data['image'] instanceof String)) {
            throw new Error("Expected the field `image` to be a primitive type in the JSON string but got " + data['image']);
        }
        // ensure the json data is a string
        if (data['name_clean'] && !(typeof data['name_clean'] === 'string' || data['name_clean'] instanceof String)) {
            throw new Error("Expected the field `name_clean` to be a primitive type in the JSON string but got " + data['name_clean']);
        }
        // ensure the json data is a string
        if (data['unit'] && !(typeof data['unit'] === 'string' || data['unit'] instanceof String)) {
            throw new Error("Expected the field `unit` to be a primitive type in the JSON string but got " + data['unit']);
        }
        // validate the optional field `measures`
        if (data['measures']) { // data not null
          SearchDrinksAPI200ResponseDrinksInnerIngredientsInnerMeasures.validateJSON(data['measures']);
        }
        // ensure the json data is a string
        if (data['original'] && !(typeof data['original'] === 'string' || data['original'] instanceof String)) {
            throw new Error("Expected the field `original` to be a primitive type in the JSON string but got " + data['original']);
        }
        // ensure the json data is an array
        if (!Array.isArray(data['meta'])) {
            throw new Error("Expected the field `meta` to be an array in the JSON data but got " + data['meta']);
        }
        // ensure the json data is a string
        if (data['original_name'] && !(typeof data['original_name'] === 'string' || data['original_name'] instanceof String)) {
            throw new Error("Expected the field `original_name` to be a primitive type in the JSON string but got " + data['original_name']);
        }
        // ensure the json data is a string
        if (data['name'] && !(typeof data['name'] === 'string' || data['name'] instanceof String)) {
            throw new Error("Expected the field `name` to be a primitive type in the JSON string but got " + data['name']);
        }
        // ensure the json data is a string
        if (data['aisle'] && !(typeof data['aisle'] === 'string' || data['aisle'] instanceof String)) {
            throw new Error("Expected the field `aisle` to be a primitive type in the JSON string but got " + data['aisle']);
        }
        // ensure the json data is a string
        if (data['consistency'] && !(typeof data['consistency'] === 'string' || data['consistency'] instanceof String)) {
            throw new Error("Expected the field `consistency` to be a primitive type in the JSON string but got " + data['consistency']);
        }

        return true;
    }


}



/**
 * @member {String} image
 */
SearchDrinksAPI200ResponseDrinksInnerIngredientsInner.prototype['image'] = undefined;

/**
 * @member {String} name_clean
 */
SearchDrinksAPI200ResponseDrinksInnerIngredientsInner.prototype['name_clean'] = undefined;

/**
 * @member {Number} amount
 */
SearchDrinksAPI200ResponseDrinksInnerIngredientsInner.prototype['amount'] = undefined;

/**
 * @member {String} unit
 */
SearchDrinksAPI200ResponseDrinksInnerIngredientsInner.prototype['unit'] = undefined;

/**
 * @member {module:model/SearchDrinksAPI200ResponseDrinksInnerIngredientsInnerMeasures} measures
 */
SearchDrinksAPI200ResponseDrinksInnerIngredientsInner.prototype['measures'] = undefined;

/**
 * @member {String} original
 */
SearchDrinksAPI200ResponseDrinksInnerIngredientsInner.prototype['original'] = undefined;

/**
 * @member {Array.<String>} meta
 */
SearchDrinksAPI200ResponseDrinksInnerIngredientsInner.prototype['meta'] = undefined;

/**
 * @member {String} original_name
 */
SearchDrinksAPI200ResponseDrinksInnerIngredientsInner.prototype['original_name'] = undefined;

/**
 * @member {String} name
 */
SearchDrinksAPI200ResponseDrinksInnerIngredientsInner.prototype['name'] = undefined;

/**
 * @member {Number} id
 */
SearchDrinksAPI200ResponseDrinksInnerIngredientsInner.prototype['id'] = undefined;

/**
 * @member {String} aisle
 */
SearchDrinksAPI200ResponseDrinksInnerIngredientsInner.prototype['aisle'] = undefined;

/**
 * @member {String} consistency
 */
SearchDrinksAPI200ResponseDrinksInnerIngredientsInner.prototype['consistency'] = undefined;






export default SearchDrinksAPI200ResponseDrinksInnerIngredientsInner;
