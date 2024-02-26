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
import InlineResponse2007Images from './InlineResponse2007Images';

/**
 * The InlineResponse2007 model module.
 * @module com.apileague.client/com.apileague.client.model/InlineResponse2007
 * @version 1.0
 */
class InlineResponse2007 {
    /**
     * Constructs a new <code>InlineResponse2007</code>.
     * @alias module:com.apileague.client/com.apileague.client.model/InlineResponse2007
     */
    constructor() { 
        
        InlineResponse2007.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>InlineResponse2007</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:com.apileague.client/com.apileague.client.model/InlineResponse2007} obj Optional instance to populate.
     * @return {module:com.apileague.client/com.apileague.client.model/InlineResponse2007} The populated <code>InlineResponse2007</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new InlineResponse2007();

            if (data.hasOwnProperty('images')) {
                obj['images'] = ApiClient.convertToType(data['images'], [InlineResponse2007Images]);
            }
        }
        return obj;
    }


}

/**
 * @member {Array.<module:com.apileague.client/com.apileague.client.model/InlineResponse2007Images>} images
 */
InlineResponse2007.prototype['images'] = undefined;






export default InlineResponse2007;

