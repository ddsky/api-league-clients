/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.3.0
 * Contact: mail@apileague.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 *
 */

import ApiClient from '../ApiClient';
import ScoreText200ResponseReadabilityMainscores from './ScoreText200ResponseReadabilityMainscores';
import ScoreText200ResponseStyleSubscores from './ScoreText200ResponseStyleSubscores';

/**
 * The ScoreText200ResponseStyle model module.
 * @module model/ScoreText200ResponseStyle
 * @version 1.3.0
 */
class ScoreText200ResponseStyle {
    /**
     * Constructs a new <code>ScoreText200ResponseStyle</code>.
     * @alias module:model/ScoreText200ResponseStyle
     */
    constructor() { 
        
        ScoreText200ResponseStyle.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>ScoreText200ResponseStyle</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/ScoreText200ResponseStyle} obj Optional instance to populate.
     * @return {module:model/ScoreText200ResponseStyle} The populated <code>ScoreText200ResponseStyle</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new ScoreText200ResponseStyle();

            if (data.hasOwnProperty('mainscores')) {
                obj['mainscores'] = ScoreText200ResponseReadabilityMainscores.constructFromObject(data['mainscores']);
            }
            if (data.hasOwnProperty('subscores')) {
                obj['subscores'] = ScoreText200ResponseStyleSubscores.constructFromObject(data['subscores']);
            }
        }
        return obj;
    }

    /**
     * Validates the JSON data with respect to <code>ScoreText200ResponseStyle</code>.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @return {boolean} to indicate whether the JSON data is valid with respect to <code>ScoreText200ResponseStyle</code>.
     */
    static validateJSON(data) {
        // validate the optional field `mainscores`
        if (data['mainscores']) { // data not null
          ScoreText200ResponseReadabilityMainscores.validateJSON(data['mainscores']);
        }
        // validate the optional field `subscores`
        if (data['subscores']) { // data not null
          ScoreText200ResponseStyleSubscores.validateJSON(data['subscores']);
        }

        return true;
    }


}



/**
 * @member {module:model/ScoreText200ResponseReadabilityMainscores} mainscores
 */
ScoreText200ResponseStyle.prototype['mainscores'] = undefined;

/**
 * @member {module:model/ScoreText200ResponseStyleSubscores} subscores
 */
ScoreText200ResponseStyle.prototype['subscores'] = undefined;






export default ScoreText200ResponseStyle;

