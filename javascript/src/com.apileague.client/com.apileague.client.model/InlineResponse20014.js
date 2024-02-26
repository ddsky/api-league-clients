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
import InlineResponse20014Authors from './InlineResponse20014Authors';

/**
 * The InlineResponse20014 model module.
 * @module com.apileague.client/com.apileague.client.model/InlineResponse20014
 * @version 1.0
 */
class InlineResponse20014 {
    /**
     * Constructs a new <code>InlineResponse20014</code>.
     * @alias module:com.apileague.client/com.apileague.client.model/InlineResponse20014
     */
    constructor() { 
        
        InlineResponse20014.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>InlineResponse20014</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:com.apileague.client/com.apileague.client.model/InlineResponse20014} obj Optional instance to populate.
     * @return {module:com.apileague.client/com.apileague.client.model/InlineResponse20014} The populated <code>InlineResponse20014</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new InlineResponse20014();

            if (data.hasOwnProperty('authors')) {
                obj['authors'] = ApiClient.convertToType(data['authors'], [InlineResponse20014Authors]);
            }
        }
        return obj;
    }


}

/**
 * @member {Array.<module:com.apileague.client/com.apileague.client.model/InlineResponse20014Authors>} authors
 */
InlineResponse20014.prototype['authors'] = undefined;






export default InlineResponse20014;

