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
 * The InlineResponse20019ReadabilitySubscores model module.
 * @module com.apileague.client/com.apileague.client.model/InlineResponse20019ReadabilitySubscores
 * @version 1.0
 */
class InlineResponse20019ReadabilitySubscores {
    /**
     * Constructs a new <code>InlineResponse20019ReadabilitySubscores</code>.
     * @alias module:com.apileague.client/com.apileague.client.model/InlineResponse20019ReadabilitySubscores
     */
    constructor() { 
        
        InlineResponse20019ReadabilitySubscores.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>InlineResponse20019ReadabilitySubscores</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:com.apileague.client/com.apileague.client.model/InlineResponse20019ReadabilitySubscores} obj Optional instance to populate.
     * @return {module:com.apileague.client/com.apileague.client.model/InlineResponse20019ReadabilitySubscores} The populated <code>InlineResponse20019ReadabilitySubscores</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new InlineResponse20019ReadabilitySubscores();

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


}

/**
 * @member {Number} reading_time_seconds
 */
InlineResponse20019ReadabilitySubscores.prototype['reading_time_seconds'] = undefined;

/**
 * @member {Number} forcast
 */
InlineResponse20019ReadabilitySubscores.prototype['forcast'] = undefined;

/**
 * @member {Number} flesch
 */
InlineResponse20019ReadabilitySubscores.prototype['flesch'] = undefined;

/**
 * @member {Number} smog
 */
InlineResponse20019ReadabilitySubscores.prototype['smog'] = undefined;

/**
 * @member {Number} ari
 */
InlineResponse20019ReadabilitySubscores.prototype['ari'] = undefined;

/**
 * @member {Number} lix
 */
InlineResponse20019ReadabilitySubscores.prototype['lix'] = undefined;

/**
 * @member {Number} coleman_liau
 */
InlineResponse20019ReadabilitySubscores.prototype['coleman_liau'] = undefined;

/**
 * @member {Number} kincaid
 */
InlineResponse20019ReadabilitySubscores.prototype['kincaid'] = undefined;

/**
 * @member {Number} fog
 */
InlineResponse20019ReadabilitySubscores.prototype['fog'] = undefined;






export default InlineResponse20019ReadabilitySubscores;

