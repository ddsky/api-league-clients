/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.4.2
 * Contact: mail@apileague.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 *
 */

import ApiClient from '../ApiClient';

/**
 * The ExtractEntities200ResponseEntitiesInner model module.
 * @module model/ExtractEntities200ResponseEntitiesInner
 * @version 1.4.2
 */
class ExtractEntities200ResponseEntitiesInner {
    /**
     * Constructs a new <code>ExtractEntities200ResponseEntitiesInner</code>.
     * @alias module:model/ExtractEntities200ResponseEntitiesInner
     */
    constructor() { 
        
        ExtractEntities200ResponseEntitiesInner.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>ExtractEntities200ResponseEntitiesInner</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/ExtractEntities200ResponseEntitiesInner} obj Optional instance to populate.
     * @return {module:model/ExtractEntities200ResponseEntitiesInner} The populated <code>ExtractEntities200ResponseEntitiesInner</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new ExtractEntities200ResponseEntitiesInner();

            if (data.hasOwnProperty('start_position')) {
                obj['start_position'] = ApiClient.convertToType(data['start_position'], 'Number');
            }
            if (data.hasOwnProperty('image')) {
                obj['image'] = ApiClient.convertToType(data['image'], 'String');
            }
            if (data.hasOwnProperty('type')) {
                obj['type'] = ApiClient.convertToType(data['type'], 'String');
            }
            if (data.hasOwnProperty('value')) {
                obj['value'] = ApiClient.convertToType(data['value'], 'String');
            }
            if (data.hasOwnProperty('end_position')) {
                obj['end_position'] = ApiClient.convertToType(data['end_position'], 'Number');
            }
        }
        return obj;
    }

    /**
     * Validates the JSON data with respect to <code>ExtractEntities200ResponseEntitiesInner</code>.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @return {boolean} to indicate whether the JSON data is valid with respect to <code>ExtractEntities200ResponseEntitiesInner</code>.
     */
    static validateJSON(data) {
        // ensure the json data is a string
        if (data['image'] && !(typeof data['image'] === 'string' || data['image'] instanceof String)) {
            throw new Error("Expected the field `image` to be a primitive type in the JSON string but got " + data['image']);
        }
        // ensure the json data is a string
        if (data['type'] && !(typeof data['type'] === 'string' || data['type'] instanceof String)) {
            throw new Error("Expected the field `type` to be a primitive type in the JSON string but got " + data['type']);
        }
        // ensure the json data is a string
        if (data['value'] && !(typeof data['value'] === 'string' || data['value'] instanceof String)) {
            throw new Error("Expected the field `value` to be a primitive type in the JSON string but got " + data['value']);
        }

        return true;
    }


}



/**
 * @member {Number} start_position
 */
ExtractEntities200ResponseEntitiesInner.prototype['start_position'] = undefined;

/**
 * @member {String} image
 */
ExtractEntities200ResponseEntitiesInner.prototype['image'] = undefined;

/**
 * @member {String} type
 */
ExtractEntities200ResponseEntitiesInner.prototype['type'] = undefined;

/**
 * @member {String} value
 */
ExtractEntities200ResponseEntitiesInner.prototype['value'] = undefined;

/**
 * @member {Number} end_position
 */
ExtractEntities200ResponseEntitiesInner.prototype['end_position'] = undefined;






export default ExtractEntities200ResponseEntitiesInner;

