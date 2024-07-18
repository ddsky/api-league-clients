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

/**
 * The SearchDrinks200ResponseDrinksInnerCredits model module.
 * @module model/SearchDrinks200ResponseDrinksInnerCredits
 * @version 1.5.0
 */
class SearchDrinks200ResponseDrinksInnerCredits {
    /**
     * Constructs a new <code>SearchDrinks200ResponseDrinksInnerCredits</code>.
     * @alias module:model/SearchDrinks200ResponseDrinksInnerCredits
     */
    constructor() { 
        
        SearchDrinks200ResponseDrinksInnerCredits.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>SearchDrinks200ResponseDrinksInnerCredits</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/SearchDrinks200ResponseDrinksInnerCredits} obj Optional instance to populate.
     * @return {module:model/SearchDrinks200ResponseDrinksInnerCredits} The populated <code>SearchDrinks200ResponseDrinksInnerCredits</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new SearchDrinks200ResponseDrinksInnerCredits();

            if (data.hasOwnProperty('text')) {
                obj['text'] = ApiClient.convertToType(data['text'], 'String');
            }
            if (data.hasOwnProperty('source_name')) {
                obj['source_name'] = ApiClient.convertToType(data['source_name'], 'String');
            }
            if (data.hasOwnProperty('source_url')) {
                obj['source_url'] = ApiClient.convertToType(data['source_url'], 'String');
            }
        }
        return obj;
    }

    /**
     * Validates the JSON data with respect to <code>SearchDrinks200ResponseDrinksInnerCredits</code>.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @return {boolean} to indicate whether the JSON data is valid with respect to <code>SearchDrinks200ResponseDrinksInnerCredits</code>.
     */
    static validateJSON(data) {
        // ensure the json data is a string
        if (data['text'] && !(typeof data['text'] === 'string' || data['text'] instanceof String)) {
            throw new Error("Expected the field `text` to be a primitive type in the JSON string but got " + data['text']);
        }
        // ensure the json data is a string
        if (data['source_name'] && !(typeof data['source_name'] === 'string' || data['source_name'] instanceof String)) {
            throw new Error("Expected the field `source_name` to be a primitive type in the JSON string but got " + data['source_name']);
        }
        // ensure the json data is a string
        if (data['source_url'] && !(typeof data['source_url'] === 'string' || data['source_url'] instanceof String)) {
            throw new Error("Expected the field `source_url` to be a primitive type in the JSON string but got " + data['source_url']);
        }

        return true;
    }


}



/**
 * @member {String} text
 */
SearchDrinks200ResponseDrinksInnerCredits.prototype['text'] = undefined;

/**
 * @member {String} source_name
 */
SearchDrinks200ResponseDrinksInnerCredits.prototype['source_name'] = undefined;

/**
 * @member {String} source_url
 */
SearchDrinks200ResponseDrinksInnerCredits.prototype['source_url'] = undefined;






export default SearchDrinks200ResponseDrinksInnerCredits;

