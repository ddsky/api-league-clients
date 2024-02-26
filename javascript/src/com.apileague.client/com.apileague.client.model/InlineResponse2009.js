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
 * The InlineResponse2009 model module.
 * @module com.apileague.client/com.apileague.client.model/InlineResponse2009
 * @version 1.0
 */
class InlineResponse2009 {
    /**
     * Constructs a new <code>InlineResponse2009</code>.
     * @alias module:com.apileague.client/com.apileague.client.model/InlineResponse2009
     */
    constructor() { 
        
        InlineResponse2009.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>InlineResponse2009</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:com.apileague.client/com.apileague.client.model/InlineResponse2009} obj Optional instance to populate.
     * @return {module:com.apileague.client/com.apileague.client.model/InlineResponse2009} The populated <code>InlineResponse2009</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new InlineResponse2009();

            if (data.hasOwnProperty('trivia')) {
                obj['trivia'] = ApiClient.convertToType(data['trivia'], 'String');
            }
        }
        return obj;
    }


}

/**
 * @member {String} trivia
 */
InlineResponse2009.prototype['trivia'] = undefined;






export default InlineResponse2009;

