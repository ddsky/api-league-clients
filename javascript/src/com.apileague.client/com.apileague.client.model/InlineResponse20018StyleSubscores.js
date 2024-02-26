/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.0
 * Contact: mail@apileague.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 *
 */

import ApiClient from '../ApiClient';

/**
 * The InlineResponse20018StyleSubscores model module.
 * @module com.apileague.client/com.apileague.client.model/InlineResponse20018StyleSubscores
 * @version 1.0
 */
class InlineResponse20018StyleSubscores {
    /**
     * Constructs a new <code>InlineResponse20018StyleSubscores</code>.
     * @alias module:com.apileague.client/com.apileague.client.model/InlineResponse20018StyleSubscores
     */
    constructor() { 
        
        InlineResponse20018StyleSubscores.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>InlineResponse20018StyleSubscores</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:com.apileague.client/com.apileague.client.model/InlineResponse20018StyleSubscores} obj Optional instance to populate.
     * @return {module:com.apileague.client/com.apileague.client.model/InlineResponse20018StyleSubscores} The populated <code>InlineResponse20018StyleSubscores</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new InlineResponse20018StyleSubscores();

            if (data.hasOwnProperty('abbreviation_score')) {
                obj['abbreviation_score'] = ApiClient.convertToType(data['abbreviation_score'], ['Number']);
            }
            if (data.hasOwnProperty('style_score')) {
                obj['style_score'] = ApiClient.convertToType(data['style_score'], ['Number']);
            }
            if (data.hasOwnProperty('spelling_score')) {
                obj['spelling_score'] = ApiClient.convertToType(data['spelling_score'], ['Number']);
            }
        }
        return obj;
    }


}

/**
 * @member {Array.<Number>} abbreviation_score
 */
InlineResponse20018StyleSubscores.prototype['abbreviation_score'] = undefined;

/**
 * @member {Array.<Number>} style_score
 */
InlineResponse20018StyleSubscores.prototype['style_score'] = undefined;

/**
 * @member {Array.<Number>} spelling_score
 */
InlineResponse20018StyleSubscores.prototype['spelling_score'] = undefined;






export default InlineResponse20018StyleSubscores;

