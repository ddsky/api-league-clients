/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.6.3
 * Contact: mail@apileague.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 *
 */

import ApiClient from '../ApiClient';

/**
 * The VerifyEmailAddress200Response model module.
 * @module model/VerifyEmailAddress200Response
 * @version 1.6.3
 */
class VerifyEmailAddress200Response {
    /**
     * Constructs a new <code>VerifyEmailAddress200Response</code>.
     * @alias module:model/VerifyEmailAddress200Response
     */
    constructor() { 
        
        VerifyEmailAddress200Response.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>VerifyEmailAddress200Response</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/VerifyEmailAddress200Response} obj Optional instance to populate.
     * @return {module:model/VerifyEmailAddress200Response} The populated <code>VerifyEmailAddress200Response</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new VerifyEmailAddress200Response();

            if (data.hasOwnProperty('email')) {
                obj['email'] = ApiClient.convertToType(data['email'], 'String');
            }
            if (data.hasOwnProperty('domain')) {
                obj['domain'] = ApiClient.convertToType(data['domain'], 'String');
            }
            if (data.hasOwnProperty('first_name')) {
                obj['first_name'] = ApiClient.convertToType(data['first_name'], 'String');
            }
            if (data.hasOwnProperty('middle_name')) {
                obj['middle_name'] = ApiClient.convertToType(data['middle_name'], 'String');
            }
            if (data.hasOwnProperty('last_name')) {
                obj['last_name'] = ApiClient.convertToType(data['last_name'], 'String');
            }
            if (data.hasOwnProperty('full_name')) {
                obj['full_name'] = ApiClient.convertToType(data['full_name'], 'String');
            }
            if (data.hasOwnProperty('username')) {
                obj['username'] = ApiClient.convertToType(data['username'], 'String');
            }
            if (data.hasOwnProperty('image')) {
                obj['image'] = ApiClient.convertToType(data['image'], 'String');
            }
            if (data.hasOwnProperty('result')) {
                obj['result'] = ApiClient.convertToType(data['result'], 'String');
            }
            if (data.hasOwnProperty('disposable')) {
                obj['disposable'] = ApiClient.convertToType(data['disposable'], 'Boolean');
            }
            if (data.hasOwnProperty('accept_all')) {
                obj['accept_all'] = ApiClient.convertToType(data['accept_all'], 'Boolean');
            }
            if (data.hasOwnProperty('free_provider')) {
                obj['free_provider'] = ApiClient.convertToType(data['free_provider'], 'Boolean');
            }
        }
        return obj;
    }

    /**
     * Validates the JSON data with respect to <code>VerifyEmailAddress200Response</code>.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @return {boolean} to indicate whether the JSON data is valid with respect to <code>VerifyEmailAddress200Response</code>.
     */
    static validateJSON(data) {
        // ensure the json data is a string
        if (data['email'] && !(typeof data['email'] === 'string' || data['email'] instanceof String)) {
            throw new Error("Expected the field `email` to be a primitive type in the JSON string but got " + data['email']);
        }
        // ensure the json data is a string
        if (data['domain'] && !(typeof data['domain'] === 'string' || data['domain'] instanceof String)) {
            throw new Error("Expected the field `domain` to be a primitive type in the JSON string but got " + data['domain']);
        }
        // ensure the json data is a string
        if (data['first_name'] && !(typeof data['first_name'] === 'string' || data['first_name'] instanceof String)) {
            throw new Error("Expected the field `first_name` to be a primitive type in the JSON string but got " + data['first_name']);
        }
        // ensure the json data is a string
        if (data['middle_name'] && !(typeof data['middle_name'] === 'string' || data['middle_name'] instanceof String)) {
            throw new Error("Expected the field `middle_name` to be a primitive type in the JSON string but got " + data['middle_name']);
        }
        // ensure the json data is a string
        if (data['last_name'] && !(typeof data['last_name'] === 'string' || data['last_name'] instanceof String)) {
            throw new Error("Expected the field `last_name` to be a primitive type in the JSON string but got " + data['last_name']);
        }
        // ensure the json data is a string
        if (data['full_name'] && !(typeof data['full_name'] === 'string' || data['full_name'] instanceof String)) {
            throw new Error("Expected the field `full_name` to be a primitive type in the JSON string but got " + data['full_name']);
        }
        // ensure the json data is a string
        if (data['username'] && !(typeof data['username'] === 'string' || data['username'] instanceof String)) {
            throw new Error("Expected the field `username` to be a primitive type in the JSON string but got " + data['username']);
        }
        // ensure the json data is a string
        if (data['image'] && !(typeof data['image'] === 'string' || data['image'] instanceof String)) {
            throw new Error("Expected the field `image` to be a primitive type in the JSON string but got " + data['image']);
        }
        // ensure the json data is a string
        if (data['result'] && !(typeof data['result'] === 'string' || data['result'] instanceof String)) {
            throw new Error("Expected the field `result` to be a primitive type in the JSON string but got " + data['result']);
        }

        return true;
    }


}



/**
 * @member {String} email
 */
VerifyEmailAddress200Response.prototype['email'] = undefined;

/**
 * @member {String} domain
 */
VerifyEmailAddress200Response.prototype['domain'] = undefined;

/**
 * @member {String} first_name
 */
VerifyEmailAddress200Response.prototype['first_name'] = undefined;

/**
 * @member {String} middle_name
 */
VerifyEmailAddress200Response.prototype['middle_name'] = undefined;

/**
 * @member {String} last_name
 */
VerifyEmailAddress200Response.prototype['last_name'] = undefined;

/**
 * @member {String} full_name
 */
VerifyEmailAddress200Response.prototype['full_name'] = undefined;

/**
 * @member {String} username
 */
VerifyEmailAddress200Response.prototype['username'] = undefined;

/**
 * @member {String} image
 */
VerifyEmailAddress200Response.prototype['image'] = undefined;

/**
 * @member {String} result
 */
VerifyEmailAddress200Response.prototype['result'] = undefined;

/**
 * @member {Boolean} disposable
 */
VerifyEmailAddress200Response.prototype['disposable'] = undefined;

/**
 * @member {Boolean} accept_all
 */
VerifyEmailAddress200Response.prototype['accept_all'] = undefined;

/**
 * @member {Boolean} free_provider
 */
VerifyEmailAddress200Response.prototype['free_provider'] = undefined;






export default VerifyEmailAddress200Response;

