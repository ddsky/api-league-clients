/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * OpenAPI spec version: 1.6.4
 * Contact: mail@apileague.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

import { ExtractDatesAPI200ResponseDatesInner } from '../models/ExtractDatesAPI200ResponseDatesInner';
import { HttpFile } from '../http/http';

export class ExtractDatesAPI200Response {
    'dates'?: Array<ExtractDatesAPI200ResponseDatesInner>;

    static readonly discriminator: string | undefined = undefined;

    static readonly attributeTypeMap: Array<{name: string, baseName: string, type: string, format: string}> = [
        {
            "name": "dates",
            "baseName": "dates",
            "type": "Array<ExtractDatesAPI200ResponseDatesInner>",
            "format": ""
        }    ];

    static getAttributeTypeMap() {
        return ExtractDatesAPI200Response.attributeTypeMap;
    }

    public constructor() {
    }
}
