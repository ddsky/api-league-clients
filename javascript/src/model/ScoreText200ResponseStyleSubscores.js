/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.0.0
 * Contact: mail@apileague.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 *
 */

import ApiClient from '../ApiClient';

/**
 * The ScoreText200ResponseStyleSubscores model module.
 * @module model/ScoreText200ResponseStyleSubscores
 * @version 1.1.0
 */
class ScoreText200ResponseStyleSubscores {
    /**
     * Constructs a new <code>ScoreText200ResponseStyleSubscores</code>.
     * @alias module:model/ScoreText200ResponseStyleSubscores
     */
    constructor() { 
        
        ScoreText200ResponseStyleSubscores.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>ScoreText200ResponseStyleSubscores</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/ScoreText200ResponseStyleSubscores} obj Optional instance to populate.
     * @return {module:model/ScoreText200ResponseStyleSubscores} The populated <code>ScoreText200ResponseStyleSubscores</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new ScoreText200ResponseStyleSubscores();

            if (data.hasOwnProperty('abbreviation_score')) {
                obj['abbreviation_score'] = ApiClient.convertToType(data['abbreviation_score'], ['Number']);
            }
            if (data.hasOwnProperty('style_score')) {
                obj['style_score'] = ApiClient.convertToType(data['style_score'], ['Number']);
            }
            if (data.hasOwnProperty('spelling_score')) {
                obj['spelling_score'] = ApiClient.convertToType(data['spelling_score'], ['Number']);
            }
        }
        return obj;
    }

    /**
     * Validates the JSON data with respect to <code>ScoreText200ResponseStyleSubscores</code>.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @return {boolean} to indicate whether the JSON data is valid with respect to <code>ScoreText200ResponseStyleSubscores</code>.
     */
    static validateJSON(data) {
        // ensure the json data is an array
        if (!Array.isArray(data['abbreviation_score'])) {
            throw new Error("Expected the field `abbreviation_score` to be an array in the JSON data but got " + data['abbreviation_score']);
        }
        // ensure the json data is an array
        if (!Array.isArray(data['style_score'])) {
            throw new Error("Expected the field `style_score` to be an array in the JSON data but got " + data['style_score']);
        }
        // ensure the json data is an array
        if (!Array.isArray(data['spelling_score'])) {
            throw new Error("Expected the field `spelling_score` to be an array in the JSON data but got " + data['spelling_score']);
        }

        return true;
    }


}



/**
 * @member {Array.<Number>} abbreviation_score
 */
ScoreText200ResponseStyleSubscores.prototype['abbreviation_score'] = undefined;

/**
 * @member {Array.<Number>} style_score
 */
ScoreText200ResponseStyleSubscores.prototype['style_score'] = undefined;

/**
 * @member {Array.<Number>} spelling_score
 */
ScoreText200ResponseStyleSubscores.prototype['spelling_score'] = undefined;






export default ScoreText200ResponseStyleSubscores;

