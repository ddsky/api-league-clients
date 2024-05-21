/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.0.0
 * Contact: mail@apileague.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 *
 */

import ApiClient from '../ApiClient';

/**
 * The ExtractPublishDate200Response model module.
 * @module model/ExtractPublishDate200Response
 * @version 1.1.0
 */
class ExtractPublishDate200Response {
    /**
     * Constructs a new <code>ExtractPublishDate200Response</code>.
     * @alias module:model/ExtractPublishDate200Response
     */
    constructor() { 
        
        ExtractPublishDate200Response.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>ExtractPublishDate200Response</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/ExtractPublishDate200Response} obj Optional instance to populate.
     * @return {module:model/ExtractPublishDate200Response} The populated <code>ExtractPublishDate200Response</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new ExtractPublishDate200Response();

            if (data.hasOwnProperty('publish_date')) {
                obj['publish_date'] = ApiClient.convertToType(data['publish_date'], 'String');
            }
        }
        return obj;
    }

    /**
     * Validates the JSON data with respect to <code>ExtractPublishDate200Response</code>.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @return {boolean} to indicate whether the JSON data is valid with respect to <code>ExtractPublishDate200Response</code>.
     */
    static validateJSON(data) {
        // ensure the json data is a string
        if (data['publish_date'] && !(typeof data['publish_date'] === 'string' || data['publish_date'] instanceof String)) {
            throw new Error("Expected the field `publish_date` to be a primitive type in the JSON string but got " + data['publish_date']);
        }

        return true;
    }


}



/**
 * @member {String} publish_date
 */
ExtractPublishDate200Response.prototype['publish_date'] = undefined;






export default ExtractPublishDate200Response;

