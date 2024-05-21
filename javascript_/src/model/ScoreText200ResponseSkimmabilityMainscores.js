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
 * The ScoreText200ResponseSkimmabilityMainscores model module.
 * @module model/ScoreText200ResponseSkimmabilityMainscores
 * @version 1.0.0
 */
class ScoreText200ResponseSkimmabilityMainscores {
    /**
     * Constructs a new <code>ScoreText200ResponseSkimmabilityMainscores</code>.
     * @alias module:model/ScoreText200ResponseSkimmabilityMainscores
     */
    constructor() { 
        
        ScoreText200ResponseSkimmabilityMainscores.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>ScoreText200ResponseSkimmabilityMainscores</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/ScoreText200ResponseSkimmabilityMainscores} obj Optional instance to populate.
     * @return {module:model/ScoreText200ResponseSkimmabilityMainscores} The populated <code>ScoreText200ResponseSkimmabilityMainscores</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new ScoreText200ResponseSkimmabilityMainscores();

            if (data.hasOwnProperty('total_possible')) {
                obj['total_possible'] = ApiClient.convertToType(data['total_possible'], 'Number');
            }
            if (data.hasOwnProperty('total')) {
                obj['total'] = ApiClient.convertToType(data['total'], 'Number');
            }
        }
        return obj;
    }

    /**
     * Validates the JSON data with respect to <code>ScoreText200ResponseSkimmabilityMainscores</code>.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @return {boolean} to indicate whether the JSON data is valid with respect to <code>ScoreText200ResponseSkimmabilityMainscores</code>.
     */
    static validateJSON(data) {

        return true;
    }


}



/**
 * @member {Number} total_possible
 */
ScoreText200ResponseSkimmabilityMainscores.prototype['total_possible'] = undefined;

/**
 * @member {Number} total
 */
ScoreText200ResponseSkimmabilityMainscores.prototype['total'] = undefined;






export default ScoreText200ResponseSkimmabilityMainscores;

