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
import InlineResponse2004Jokes from './InlineResponse2004Jokes';

/**
 * The InlineResponse2004 model module.
 * @module com.apileague.client/com.apileague.client.model/InlineResponse2004
 * @version 1.0
 */
class InlineResponse2004 {
    /**
     * Constructs a new <code>InlineResponse2004</code>.
     * @alias module:com.apileague.client/com.apileague.client.model/InlineResponse2004
     */
    constructor() { 
        
        InlineResponse2004.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>InlineResponse2004</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:com.apileague.client/com.apileague.client.model/InlineResponse2004} obj Optional instance to populate.
     * @return {module:com.apileague.client/com.apileague.client.model/InlineResponse2004} The populated <code>InlineResponse2004</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new InlineResponse2004();

            if (data.hasOwnProperty('jokes')) {
                obj['jokes'] = ApiClient.convertToType(data['jokes'], [InlineResponse2004Jokes]);
            }
            if (data.hasOwnProperty('available')) {
                obj['available'] = ApiClient.convertToType(data['available'], 'Number');
            }
        }
        return obj;
    }


}

/**
 * @member {Array.<module:com.apileague.client/com.apileague.client.model/InlineResponse2004Jokes>} jokes
 */
InlineResponse2004.prototype['jokes'] = undefined;

/**
 * @member {Number} available
 */
InlineResponse2004.prototype['available'] = undefined;






export default InlineResponse2004;

