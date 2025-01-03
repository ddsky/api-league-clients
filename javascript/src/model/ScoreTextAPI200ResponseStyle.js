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
import ScoreTextAPI200ResponseReadabilityMainscores from './ScoreTextAPI200ResponseReadabilityMainscores';
import ScoreTextAPI200ResponseStyleSubscores from './ScoreTextAPI200ResponseStyleSubscores';

/**
 * The ScoreTextAPI200ResponseStyle model module.
 * @module model/ScoreTextAPI200ResponseStyle
 * @version 1.6.4
 */
class ScoreTextAPI200ResponseStyle {
    /**
     * Constructs a new <code>ScoreTextAPI200ResponseStyle</code>.
     * @alias module:model/ScoreTextAPI200ResponseStyle
     */
    constructor() { 
        
        ScoreTextAPI200ResponseStyle.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>ScoreTextAPI200ResponseStyle</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/ScoreTextAPI200ResponseStyle} obj Optional instance to populate.
     * @return {module:model/ScoreTextAPI200ResponseStyle} The populated <code>ScoreTextAPI200ResponseStyle</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new ScoreTextAPI200ResponseStyle();

            if (data.hasOwnProperty('mainscores')) {
                obj['mainscores'] = ScoreTextAPI200ResponseReadabilityMainscores.constructFromObject(data['mainscores']);
            }
            if (data.hasOwnProperty('subscores')) {
                obj['subscores'] = ScoreTextAPI200ResponseStyleSubscores.constructFromObject(data['subscores']);
            }
        }
        return obj;
    }

    /**
     * Validates the JSON data with respect to <code>ScoreTextAPI200ResponseStyle</code>.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @return {boolean} to indicate whether the JSON data is valid with respect to <code>ScoreTextAPI200ResponseStyle</code>.
     */
    static validateJSON(data) {
        // validate the optional field `mainscores`
        if (data['mainscores']) { // data not null
          ScoreTextAPI200ResponseReadabilityMainscores.validateJSON(data['mainscores']);
        }
        // validate the optional field `subscores`
        if (data['subscores']) { // data not null
          ScoreTextAPI200ResponseStyleSubscores.validateJSON(data['subscores']);
        }

        return true;
    }


}



/**
 * @member {module:model/ScoreTextAPI200ResponseReadabilityMainscores} mainscores
 */
ScoreTextAPI200ResponseStyle.prototype['mainscores'] = undefined;

/**
 * @member {module:model/ScoreTextAPI200ResponseStyleSubscores} subscores
 */
ScoreTextAPI200ResponseStyle.prototype['subscores'] = undefined;






export default ScoreTextAPI200ResponseStyle;

