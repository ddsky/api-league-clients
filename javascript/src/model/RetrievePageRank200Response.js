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
 * The RetrievePageRank200Response model module.
 * @module model/RetrievePageRank200Response
 * @version 1.6.3
 */
class RetrievePageRank200Response {
    /**
     * Constructs a new <code>RetrievePageRank200Response</code>.
     * @alias module:model/RetrievePageRank200Response
     */
    constructor() { 
        
        RetrievePageRank200Response.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>RetrievePageRank200Response</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/RetrievePageRank200Response} obj Optional instance to populate.
     * @return {module:model/RetrievePageRank200Response} The populated <code>RetrievePageRank200Response</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new RetrievePageRank200Response();

            if (data.hasOwnProperty('page_rank')) {
                obj['page_rank'] = ApiClient.convertToType(data['page_rank'], 'Number');
            }
            if (data.hasOwnProperty('position')) {
                obj['position'] = ApiClient.convertToType(data['position'], 'Number');
            }
            if (data.hasOwnProperty('percentile')) {
                obj['percentile'] = ApiClient.convertToType(data['percentile'], 'Number');
            }
        }
        return obj;
    }

    /**
     * Validates the JSON data with respect to <code>RetrievePageRank200Response</code>.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @return {boolean} to indicate whether the JSON data is valid with respect to <code>RetrievePageRank200Response</code>.
     */
    static validateJSON(data) {

        return true;
    }


}



/**
 * @member {Number} page_rank
 */
RetrievePageRank200Response.prototype['page_rank'] = undefined;

/**
 * @member {Number} position
 */
RetrievePageRank200Response.prototype['position'] = undefined;

/**
 * @member {Number} percentile
 */
RetrievePageRank200Response.prototype['percentile'] = undefined;






export default RetrievePageRank200Response;

