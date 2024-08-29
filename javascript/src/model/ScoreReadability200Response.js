/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.6.2
 * Contact: mail@apileague.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 *
 */

import ApiClient from '../ApiClient';
import ScoreText200ResponseReadability from './ScoreText200ResponseReadability';

/**
 * The ScoreReadability200Response model module.
 * @module model/ScoreReadability200Response
 * @version 1.6.2
 */
class ScoreReadability200Response {
    /**
     * Constructs a new <code>ScoreReadability200Response</code>.
     * @alias module:model/ScoreReadability200Response
     */
    constructor() { 
        
        ScoreReadability200Response.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>ScoreReadability200Response</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/ScoreReadability200Response} obj Optional instance to populate.
     * @return {module:model/ScoreReadability200Response} The populated <code>ScoreReadability200Response</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new ScoreReadability200Response();

            if (data.hasOwnProperty('readability')) {
                obj['readability'] = ScoreText200ResponseReadability.constructFromObject(data['readability']);
            }
        }
        return obj;
    }

    /**
     * Validates the JSON data with respect to <code>ScoreReadability200Response</code>.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @return {boolean} to indicate whether the JSON data is valid with respect to <code>ScoreReadability200Response</code>.
     */
    static validateJSON(data) {
        // validate the optional field `readability`
        if (data['readability']) { // data not null
          ScoreText200ResponseReadability.validateJSON(data['readability']);
        }

        return true;
    }


}



/**
 * @member {module:model/ScoreText200ResponseReadability} readability
 */
ScoreReadability200Response.prototype['readability'] = undefined;






export default ScoreReadability200Response;

