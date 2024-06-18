/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * OpenAPI spec version: 1.3.0
 * Contact: mail@apileague.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

import { ExtractDates200ResponseDatesInner } from '../models/ExtractDates200ResponseDatesInner';
import { HttpFile } from '../http/http';

export class ExtractDates200Response {
    'dates'?: Array<ExtractDates200ResponseDatesInner>;

    static readonly discriminator: string | undefined = undefined;

    static readonly attributeTypeMap: Array<{name: string, baseName: string, type: string, format: string}> = [
        {
            "name": "dates",
            "baseName": "dates",
            "type": "Array<ExtractDates200ResponseDatesInner>",
            "format": ""
        }    ];

    static getAttributeTypeMap() {
        return ExtractDates200Response.attributeTypeMap;
    }

    public constructor() {
    }
}

