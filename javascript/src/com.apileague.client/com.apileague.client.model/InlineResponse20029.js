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
 * The InlineResponse20029 model module.
 * @module com.apileague.client/com.apileague.client.model/InlineResponse20029
 * @version 1.0
 */
class InlineResponse20029 {
    /**
     * Constructs a new <code>InlineResponse20029</code>.
     * @alias module:com.apileague.client/com.apileague.client.model/InlineResponse20029
     */
    constructor() { 
        
        InlineResponse20029.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>InlineResponse20029</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:com.apileague.client/com.apileague.client.model/InlineResponse20029} obj Optional instance to populate.
     * @return {module:com.apileague.client/com.apileague.client.model/InlineResponse20029} The populated <code>InlineResponse20029</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new InlineResponse20029();

            if (data.hasOwnProperty('specific_color')) {
                obj['specific_color'] = ApiClient.convertToType(data['specific_color'], 'String');
            }
            if (data.hasOwnProperty('main_color')) {
                obj['main_color'] = ApiClient.convertToType(data['main_color'], 'String');
            }
            if (data.hasOwnProperty('hex_code')) {
                obj['hex_code'] = ApiClient.convertToType(data['hex_code'], 'String');
            }
        }
        return obj;
    }


}

/**
 * @member {String} specific_color
 */
InlineResponse20029.prototype['specific_color'] = undefined;

/**
 * @member {String} main_color
 */
InlineResponse20029.prototype['main_color'] = undefined;

/**
 * @member {String} hex_code
 */
InlineResponse20029.prototype['hex_code'] = undefined;






export default InlineResponse20029;

