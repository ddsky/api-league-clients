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
 * The ScoreTextAPI200ResponseReadabilityMainscores model module.
 * @module model/ScoreTextAPI200ResponseReadabilityMainscores
 * @version 1.6.4
 */
class ScoreTextAPI200ResponseReadabilityMainscores {
    /**
     * Constructs a new <code>ScoreTextAPI200ResponseReadabilityMainscores</code>.
     * @alias module:model/ScoreTextAPI200ResponseReadabilityMainscores
     */
    constructor() { 
        
        ScoreTextAPI200ResponseReadabilityMainscores.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>ScoreTextAPI200ResponseReadabilityMainscores</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/ScoreTextAPI200ResponseReadabilityMainscores} obj Optional instance to populate.
     * @return {module:model/ScoreTextAPI200ResponseReadabilityMainscores} The populated <code>ScoreTextAPI200ResponseReadabilityMainscores</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new ScoreTextAPI200ResponseReadabilityMainscores();

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
     * Validates the JSON data with respect to <code>ScoreTextAPI200ResponseReadabilityMainscores</code>.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @return {boolean} to indicate whether the JSON data is valid with respect to <code>ScoreTextAPI200ResponseReadabilityMainscores</code>.
     */
    static validateJSON(data) {

        return true;
    }


}



/**
 * @member {Number} total_possible
 */
ScoreTextAPI200ResponseReadabilityMainscores.prototype['total_possible'] = undefined;

/**
 * @member {Number} total
 */
ScoreTextAPI200ResponseReadabilityMainscores.prototype['total'] = undefined;






export default ScoreTextAPI200ResponseReadabilityMainscores;
