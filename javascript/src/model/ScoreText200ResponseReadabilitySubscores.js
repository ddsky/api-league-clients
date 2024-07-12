/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.4.2
 * Contact: mail@apileague.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 *
 */

import ApiClient from '../ApiClient';

/**
 * The ScoreText200ResponseReadabilitySubscores model module.
 * @module model/ScoreText200ResponseReadabilitySubscores
 * @version 1.4.2
 */
class ScoreText200ResponseReadabilitySubscores {
    /**
     * Constructs a new <code>ScoreText200ResponseReadabilitySubscores</code>.
     * @alias module:model/ScoreText200ResponseReadabilitySubscores
     */
    constructor() { 
        
        ScoreText200ResponseReadabilitySubscores.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>ScoreText200ResponseReadabilitySubscores</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/ScoreText200ResponseReadabilitySubscores} obj Optional instance to populate.
     * @return {module:model/ScoreText200ResponseReadabilitySubscores} The populated <code>ScoreText200ResponseReadabilitySubscores</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new ScoreText200ResponseReadabilitySubscores();

            if (data.hasOwnProperty('reading_time_seconds')) {
                obj['reading_time_seconds'] = ApiClient.convertToType(data['reading_time_seconds'], 'Number');
            }
            if (data.hasOwnProperty('forcast')) {
                obj['forcast'] = ApiClient.convertToType(data['forcast'], 'Number');
            }
            if (data.hasOwnProperty('flesch')) {
                obj['flesch'] = ApiClient.convertToType(data['flesch'], 'Number');
            }
            if (data.hasOwnProperty('smog')) {
                obj['smog'] = ApiClient.convertToType(data['smog'], 'Number');
            }
            if (data.hasOwnProperty('ari')) {
                obj['ari'] = ApiClient.convertToType(data['ari'], 'Number');
            }
            if (data.hasOwnProperty('lix')) {
                obj['lix'] = ApiClient.convertToType(data['lix'], 'Number');
            }
            if (data.hasOwnProperty('coleman_liau')) {
                obj['coleman_liau'] = ApiClient.convertToType(data['coleman_liau'], 'Number');
            }
            if (data.hasOwnProperty('kincaid')) {
                obj['kincaid'] = ApiClient.convertToType(data['kincaid'], 'Number');
            }
            if (data.hasOwnProperty('fog')) {
                obj['fog'] = ApiClient.convertToType(data['fog'], 'Number');
            }
        }
        return obj;
    }

    /**
     * Validates the JSON data with respect to <code>ScoreText200ResponseReadabilitySubscores</code>.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @return {boolean} to indicate whether the JSON data is valid with respect to <code>ScoreText200ResponseReadabilitySubscores</code>.
     */
    static validateJSON(data) {

        return true;
    }


}



/**
 * @member {Number} reading_time_seconds
 */
ScoreText200ResponseReadabilitySubscores.prototype['reading_time_seconds'] = undefined;

/**
 * @member {Number} forcast
 */
ScoreText200ResponseReadabilitySubscores.prototype['forcast'] = undefined;

/**
 * @member {Number} flesch
 */
ScoreText200ResponseReadabilitySubscores.prototype['flesch'] = undefined;

/**
 * @member {Number} smog
 */
ScoreText200ResponseReadabilitySubscores.prototype['smog'] = undefined;

/**
 * @member {Number} ari
 */
ScoreText200ResponseReadabilitySubscores.prototype['ari'] = undefined;

/**
 * @member {Number} lix
 */
ScoreText200ResponseReadabilitySubscores.prototype['lix'] = undefined;

/**
 * @member {Number} coleman_liau
 */
ScoreText200ResponseReadabilitySubscores.prototype['coleman_liau'] = undefined;

/**
 * @member {Number} kincaid
 */
ScoreText200ResponseReadabilitySubscores.prototype['kincaid'] = undefined;

/**
 * @member {Number} fog
 */
ScoreText200ResponseReadabilitySubscores.prototype['fog'] = undefined;






export default ScoreText200ResponseReadabilitySubscores;

