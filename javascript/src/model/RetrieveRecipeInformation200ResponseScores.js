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

/**
 * The RetrieveRecipeInformation200ResponseScores model module.
 * @module model/RetrieveRecipeInformation200ResponseScores
 * @version 1.6.2
 */
class RetrieveRecipeInformation200ResponseScores {
    /**
     * Constructs a new <code>RetrieveRecipeInformation200ResponseScores</code>.
     * @alias module:model/RetrieveRecipeInformation200ResponseScores
     */
    constructor() { 
        
        RetrieveRecipeInformation200ResponseScores.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>RetrieveRecipeInformation200ResponseScores</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/RetrieveRecipeInformation200ResponseScores} obj Optional instance to populate.
     * @return {module:model/RetrieveRecipeInformation200ResponseScores} The populated <code>RetrieveRecipeInformation200ResponseScores</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new RetrieveRecipeInformation200ResponseScores();

            if (data.hasOwnProperty('meta_score')) {
                obj['meta_score'] = ApiClient.convertToType(data['meta_score'], 'Number');
            }
            if (data.hasOwnProperty('weight_watcher_smart_points')) {
                obj['weight_watcher_smart_points'] = ApiClient.convertToType(data['weight_watcher_smart_points'], 'Number');
            }
            if (data.hasOwnProperty('health_score')) {
                obj['health_score'] = ApiClient.convertToType(data['health_score'], 'Number');
            }
        }
        return obj;
    }

    /**
     * Validates the JSON data with respect to <code>RetrieveRecipeInformation200ResponseScores</code>.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @return {boolean} to indicate whether the JSON data is valid with respect to <code>RetrieveRecipeInformation200ResponseScores</code>.
     */
    static validateJSON(data) {

        return true;
    }


}



/**
 * @member {Number} meta_score
 */
RetrieveRecipeInformation200ResponseScores.prototype['meta_score'] = undefined;

/**
 * @member {Number} weight_watcher_smart_points
 */
RetrieveRecipeInformation200ResponseScores.prototype['weight_watcher_smart_points'] = undefined;

/**
 * @member {Number} health_score
 */
RetrieveRecipeInformation200ResponseScores.prototype['health_score'] = undefined;






export default RetrieveRecipeInformation200ResponseScores;

