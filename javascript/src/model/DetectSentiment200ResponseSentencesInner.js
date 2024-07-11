/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.4.1
 * Contact: mail@apileague.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 *
 */

import ApiClient from '../ApiClient';

/**
 * The DetectSentiment200ResponseSentencesInner model module.
 * @module model/DetectSentiment200ResponseSentencesInner
 * @version 1.4.1
 */
class DetectSentiment200ResponseSentencesInner {
    /**
     * Constructs a new <code>DetectSentiment200ResponseSentencesInner</code>.
     * @alias module:model/DetectSentiment200ResponseSentencesInner
     */
    constructor() { 
        
        DetectSentiment200ResponseSentencesInner.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>DetectSentiment200ResponseSentencesInner</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/DetectSentiment200ResponseSentencesInner} obj Optional instance to populate.
     * @return {module:model/DetectSentiment200ResponseSentencesInner} The populated <code>DetectSentiment200ResponseSentencesInner</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new DetectSentiment200ResponseSentencesInner();

            if (data.hasOwnProperty('length')) {
                obj['length'] = ApiClient.convertToType(data['length'], 'Number');
            }
            if (data.hasOwnProperty('sentiment')) {
                obj['sentiment'] = ApiClient.convertToType(data['sentiment'], 'String');
            }
            if (data.hasOwnProperty('offset')) {
                obj['offset'] = ApiClient.convertToType(data['offset'], 'Number');
            }
            if (data.hasOwnProperty('confidence')) {
                obj['confidence'] = ApiClient.convertToType(data['confidence'], 'Number');
            }
        }
        return obj;
    }

    /**
     * Validates the JSON data with respect to <code>DetectSentiment200ResponseSentencesInner</code>.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @return {boolean} to indicate whether the JSON data is valid with respect to <code>DetectSentiment200ResponseSentencesInner</code>.
     */
    static validateJSON(data) {
        // ensure the json data is a string
        if (data['sentiment'] && !(typeof data['sentiment'] === 'string' || data['sentiment'] instanceof String)) {
            throw new Error("Expected the field `sentiment` to be a primitive type in the JSON string but got " + data['sentiment']);
        }

        return true;
    }


}



/**
 * @member {Number} length
 */
DetectSentiment200ResponseSentencesInner.prototype['length'] = undefined;

/**
 * @member {String} sentiment
 */
DetectSentiment200ResponseSentencesInner.prototype['sentiment'] = undefined;

/**
 * @member {Number} offset
 */
DetectSentiment200ResponseSentencesInner.prototype['offset'] = undefined;

/**
 * @member {Number} confidence
 */
DetectSentiment200ResponseSentencesInner.prototype['confidence'] = undefined;






export default DetectSentiment200ResponseSentencesInner;

