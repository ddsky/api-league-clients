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
import ScoreText200ResponseInterestingness from './ScoreText200ResponseInterestingness';
import ScoreText200ResponseReadability from './ScoreText200ResponseReadability';
import ScoreText200ResponseSkimmability from './ScoreText200ResponseSkimmability';
import ScoreText200ResponseStyle from './ScoreText200ResponseStyle';

/**
 * The ScoreText200Response model module.
 * @module model/ScoreText200Response
 * @version 1.1.0
 */
class ScoreText200Response {
    /**
     * Constructs a new <code>ScoreText200Response</code>.
     * @alias module:model/ScoreText200Response
     */
    constructor() { 
        
        ScoreText200Response.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>ScoreText200Response</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/ScoreText200Response} obj Optional instance to populate.
     * @return {module:model/ScoreText200Response} The populated <code>ScoreText200Response</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new ScoreText200Response();

            if (data.hasOwnProperty('number_of_words')) {
                obj['number_of_words'] = ApiClient.convertToType(data['number_of_words'], 'Number');
            }
            if (data.hasOwnProperty('number_of_sentences')) {
                obj['number_of_sentences'] = ApiClient.convertToType(data['number_of_sentences'], 'Number');
            }
            if (data.hasOwnProperty('readability')) {
                obj['readability'] = ScoreText200ResponseReadability.constructFromObject(data['readability']);
            }
            if (data.hasOwnProperty('skimmability')) {
                obj['skimmability'] = ScoreText200ResponseSkimmability.constructFromObject(data['skimmability']);
            }
            if (data.hasOwnProperty('interestingness')) {
                obj['interestingness'] = ScoreText200ResponseInterestingness.constructFromObject(data['interestingness']);
            }
            if (data.hasOwnProperty('style')) {
                obj['style'] = ScoreText200ResponseStyle.constructFromObject(data['style']);
            }
            if (data.hasOwnProperty('total_score')) {
                obj['total_score'] = ApiClient.convertToType(data['total_score'], 'Number');
            }
        }
        return obj;
    }

    /**
     * Validates the JSON data with respect to <code>ScoreText200Response</code>.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @return {boolean} to indicate whether the JSON data is valid with respect to <code>ScoreText200Response</code>.
     */
    static validateJSON(data) {
        // validate the optional field `readability`
        if (data['readability']) { // data not null
          ScoreText200ResponseReadability.validateJSON(data['readability']);
        }
        // validate the optional field `skimmability`
        if (data['skimmability']) { // data not null
          ScoreText200ResponseSkimmability.validateJSON(data['skimmability']);
        }
        // validate the optional field `interestingness`
        if (data['interestingness']) { // data not null
          ScoreText200ResponseInterestingness.validateJSON(data['interestingness']);
        }
        // validate the optional field `style`
        if (data['style']) { // data not null
          ScoreText200ResponseStyle.validateJSON(data['style']);
        }

        return true;
    }


}



/**
 * @member {Number} number_of_words
 */
ScoreText200Response.prototype['number_of_words'] = undefined;

/**
 * @member {Number} number_of_sentences
 */
ScoreText200Response.prototype['number_of_sentences'] = undefined;

/**
 * @member {module:model/ScoreText200ResponseReadability} readability
 */
ScoreText200Response.prototype['readability'] = undefined;

/**
 * @member {module:model/ScoreText200ResponseSkimmability} skimmability
 */
ScoreText200Response.prototype['skimmability'] = undefined;

/**
 * @member {module:model/ScoreText200ResponseInterestingness} interestingness
 */
ScoreText200Response.prototype['interestingness'] = undefined;

/**
 * @member {module:model/ScoreText200ResponseStyle} style
 */
ScoreText200Response.prototype['style'] = undefined;

/**
 * @member {Number} total_score
 */
ScoreText200Response.prototype['total_score'] = undefined;






export default ScoreText200Response;

