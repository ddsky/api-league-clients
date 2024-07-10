/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.4.0
 * Contact: mail@apileague.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 *
 */

import ApiClient from '../ApiClient';
import ScoreText200ResponseInterestingnessSubscores from './ScoreText200ResponseInterestingnessSubscores';
import ScoreText200ResponseSkimmabilityMainscores from './ScoreText200ResponseSkimmabilityMainscores';

/**
 * The ScoreText200ResponseInterestingness model module.
 * @module model/ScoreText200ResponseInterestingness
 * @version 1.4.0
 */
class ScoreText200ResponseInterestingness {
    /**
     * Constructs a new <code>ScoreText200ResponseInterestingness</code>.
     * @alias module:model/ScoreText200ResponseInterestingness
     */
    constructor() { 
        
        ScoreText200ResponseInterestingness.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>ScoreText200ResponseInterestingness</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/ScoreText200ResponseInterestingness} obj Optional instance to populate.
     * @return {module:model/ScoreText200ResponseInterestingness} The populated <code>ScoreText200ResponseInterestingness</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new ScoreText200ResponseInterestingness();

            if (data.hasOwnProperty('mainscores')) {
                obj['mainscores'] = ScoreText200ResponseSkimmabilityMainscores.constructFromObject(data['mainscores']);
            }
            if (data.hasOwnProperty('subscores')) {
                obj['subscores'] = ScoreText200ResponseInterestingnessSubscores.constructFromObject(data['subscores']);
            }
        }
        return obj;
    }

    /**
     * Validates the JSON data with respect to <code>ScoreText200ResponseInterestingness</code>.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @return {boolean} to indicate whether the JSON data is valid with respect to <code>ScoreText200ResponseInterestingness</code>.
     */
    static validateJSON(data) {
        // validate the optional field `mainscores`
        if (data['mainscores']) { // data not null
          ScoreText200ResponseSkimmabilityMainscores.validateJSON(data['mainscores']);
        }
        // validate the optional field `subscores`
        if (data['subscores']) { // data not null
          ScoreText200ResponseInterestingnessSubscores.validateJSON(data['subscores']);
        }

        return true;
    }


}



/**
 * @member {module:model/ScoreText200ResponseSkimmabilityMainscores} mainscores
 */
ScoreText200ResponseInterestingness.prototype['mainscores'] = undefined;

/**
 * @member {module:model/ScoreText200ResponseInterestingnessSubscores} subscores
 */
ScoreText200ResponseInterestingness.prototype['subscores'] = undefined;






export default ScoreText200ResponseInterestingness;

