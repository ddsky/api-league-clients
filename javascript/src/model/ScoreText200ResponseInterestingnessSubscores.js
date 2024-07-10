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

/**
 * The ScoreText200ResponseInterestingnessSubscores model module.
 * @module model/ScoreText200ResponseInterestingnessSubscores
 * @version 1.4.0
 */
class ScoreText200ResponseInterestingnessSubscores {
    /**
     * Constructs a new <code>ScoreText200ResponseInterestingnessSubscores</code>.
     * @alias module:model/ScoreText200ResponseInterestingnessSubscores
     */
    constructor() { 
        
        ScoreText200ResponseInterestingnessSubscores.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>ScoreText200ResponseInterestingnessSubscores</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/ScoreText200ResponseInterestingnessSubscores} obj Optional instance to populate.
     * @return {module:model/ScoreText200ResponseInterestingnessSubscores} The populated <code>ScoreText200ResponseInterestingnessSubscores</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new ScoreText200ResponseInterestingnessSubscores();

            if (data.hasOwnProperty('title_rating_score')) {
                obj['title_rating_score'] = ApiClient.convertToType(data['title_rating_score'], ['Number']);
            }
            if (data.hasOwnProperty('quote_score')) {
                obj['quote_score'] = ApiClient.convertToType(data['quote_score'], ['Number']);
            }
            if (data.hasOwnProperty('length_score')) {
                obj['length_score'] = ApiClient.convertToType(data['length_score'], ['Number']);
            }
            if (data.hasOwnProperty('link_score')) {
                obj['link_score'] = ApiClient.convertToType(data['link_score'], ['Number']);
            }
            if (data.hasOwnProperty('google_hits_score')) {
                obj['google_hits_score'] = ApiClient.convertToType(data['google_hits_score'], ['Number']);
            }
        }
        return obj;
    }

    /**
     * Validates the JSON data with respect to <code>ScoreText200ResponseInterestingnessSubscores</code>.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @return {boolean} to indicate whether the JSON data is valid with respect to <code>ScoreText200ResponseInterestingnessSubscores</code>.
     */
    static validateJSON(data) {
        // ensure the json data is an array
        if (!Array.isArray(data['title_rating_score'])) {
            throw new Error("Expected the field `title_rating_score` to be an array in the JSON data but got " + data['title_rating_score']);
        }
        // ensure the json data is an array
        if (!Array.isArray(data['quote_score'])) {
            throw new Error("Expected the field `quote_score` to be an array in the JSON data but got " + data['quote_score']);
        }
        // ensure the json data is an array
        if (!Array.isArray(data['length_score'])) {
            throw new Error("Expected the field `length_score` to be an array in the JSON data but got " + data['length_score']);
        }
        // ensure the json data is an array
        if (!Array.isArray(data['link_score'])) {
            throw new Error("Expected the field `link_score` to be an array in the JSON data but got " + data['link_score']);
        }
        // ensure the json data is an array
        if (!Array.isArray(data['google_hits_score'])) {
            throw new Error("Expected the field `google_hits_score` to be an array in the JSON data but got " + data['google_hits_score']);
        }

        return true;
    }


}



/**
 * @member {Array.<Number>} title_rating_score
 */
ScoreText200ResponseInterestingnessSubscores.prototype['title_rating_score'] = undefined;

/**
 * @member {Array.<Number>} quote_score
 */
ScoreText200ResponseInterestingnessSubscores.prototype['quote_score'] = undefined;

/**
 * @member {Array.<Number>} length_score
 */
ScoreText200ResponseInterestingnessSubscores.prototype['length_score'] = undefined;

/**
 * @member {Array.<Number>} link_score
 */
ScoreText200ResponseInterestingnessSubscores.prototype['link_score'] = undefined;

/**
 * @member {Array.<Number>} google_hits_score
 */
ScoreText200ResponseInterestingnessSubscores.prototype['google_hits_score'] = undefined;






export default ScoreText200ResponseInterestingnessSubscores;

