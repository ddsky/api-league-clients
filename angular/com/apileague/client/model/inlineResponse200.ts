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
 */
import { InlineResponse200Books } from './inlineResponse200Books';


export interface InlineResponse200 { 
    available?: number;
    number?: number;
    offset?: number;
    books?: Array<InlineResponse200Books>;
}

