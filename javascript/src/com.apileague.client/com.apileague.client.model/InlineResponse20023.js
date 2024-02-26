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
 * The InlineResponse20023 model module.
 * @module com.apileague.client/com.apileague.client.model/InlineResponse20023
 * @version 1.0
 */
class InlineResponse20023 {
    /**
     * Constructs a new <code>InlineResponse20023</code>.
     * @alias module:com.apileague.client/com.apileague.client.model/InlineResponse20023
     */
    constructor() { 
        
        InlineResponse20023.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>InlineResponse20023</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:com.apileague.client/com.apileague.client.model/InlineResponse20023} obj Optional instance to populate.
     * @return {module:com.apileague.client/com.apileague.client.model/InlineResponse20023} The populated <code>InlineResponse20023</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new InlineResponse20023();

            if (data.hasOwnProperty('tagged_text')) {
                obj['tagged_text'] = ApiClient.convertToType(data['tagged_text'], 'String');
            }
        }
        return obj;
    }


}

/**
 * @member {String} tagged_text
 */
InlineResponse20023.prototype['tagged_text'] = undefined;






export default InlineResponse20023;

