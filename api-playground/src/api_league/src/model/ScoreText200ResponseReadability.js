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
import ScoreText200ResponseReadabilityMainscores from './ScoreText200ResponseReadabilityMainscores';
import ScoreText200ResponseReadabilitySubscores from './ScoreText200ResponseReadabilitySubscores';

/**
 * The ScoreText200ResponseReadability model module.
 * @module model/ScoreText200ResponseReadability
 * @version 1.0.0
 */
class ScoreText200ResponseReadability {
    /**
     * Constructs a new <code>ScoreText200ResponseReadability</code>.
     * @alias module:model/ScoreText200ResponseReadability
     */
    constructor() { 
        
        ScoreText200ResponseReadability.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>ScoreText200ResponseReadability</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/ScoreText200ResponseReadability} obj Optional instance to populate.
     * @return {module:model/ScoreText200ResponseReadability} The populated <code>ScoreText200ResponseReadability</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new ScoreText200ResponseReadability();

            if (data.hasOwnProperty('mainscores')) {
                obj['mainscores'] = ScoreText200ResponseReadabilityMainscores.constructFromObject(data['mainscores']);
            }
            if (data.hasOwnProperty('subscores')) {
                obj['subscores'] = ScoreText200ResponseReadabilitySubscores.constructFromObject(data['subscores']);
            }
        }
        return obj;
    }

    /**
     * Validates the JSON data with respect to <code>ScoreText200ResponseReadability</code>.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @return {boolean} to indicate whether the JSON data is valid with respect to <code>ScoreText200ResponseReadability</code>.
     */
    static validateJSON(data) {
        // validate the optional field `mainscores`
        if (data['mainscores']) { // data not null
          ScoreText200ResponseReadabilityMainscores.validateJSON(data['mainscores']);
        }
        // validate the optional field `subscores`
        if (data['subscores']) { // data not null
          ScoreText200ResponseReadabilitySubscores.validateJSON(data['subscores']);
        }

        return true;
    }


}



/**
 * @member {module:model/ScoreText200ResponseReadabilityMainscores} mainscores
 */
ScoreText200ResponseReadability.prototype['mainscores'] = undefined;

/**
 * @member {module:model/ScoreText200ResponseReadabilitySubscores} subscores
 */
ScoreText200ResponseReadability.prototype['subscores'] = undefined;






export default ScoreText200ResponseReadability;

