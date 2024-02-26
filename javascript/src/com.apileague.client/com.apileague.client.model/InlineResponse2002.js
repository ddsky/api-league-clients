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
import InlineResponse2002News from './InlineResponse2002News';

/**
 * The InlineResponse2002 model module.
 * @module com.apileague.client/com.apileague.client.model/InlineResponse2002
 * @version 1.0
 */
class InlineResponse2002 {
    /**
     * Constructs a new <code>InlineResponse2002</code>.
     * @alias module:com.apileague.client/com.apileague.client.model/InlineResponse2002
     */
    constructor() { 
        
        InlineResponse2002.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>InlineResponse2002</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:com.apileague.client/com.apileague.client.model/InlineResponse2002} obj Optional instance to populate.
     * @return {module:com.apileague.client/com.apileague.client.model/InlineResponse2002} The populated <code>InlineResponse2002</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new InlineResponse2002();

            if (data.hasOwnProperty('offset')) {
                obj['offset'] = ApiClient.convertToType(data['offset'], 'Number');
            }
            if (data.hasOwnProperty('number')) {
                obj['number'] = ApiClient.convertToType(data['number'], 'Number');
            }
            if (data.hasOwnProperty('available')) {
                obj['available'] = ApiClient.convertToType(data['available'], 'Number');
            }
            if (data.hasOwnProperty('news')) {
                obj['news'] = ApiClient.convertToType(data['news'], [InlineResponse2002News]);
            }
        }
        return obj;
    }


}

/**
 * @member {Number} offset
 */
InlineResponse2002.prototype['offset'] = undefined;

/**
 * @member {Number} number
 */
InlineResponse2002.prototype['number'] = undefined;

/**
 * @member {Number} available
 */
InlineResponse2002.prototype['available'] = undefined;

/**
 * @member {Array.<module:com.apileague.client/com.apileague.client.model/InlineResponse2002News>} news
 */
InlineResponse2002.prototype['news'] = undefined;






export default InlineResponse2002;

