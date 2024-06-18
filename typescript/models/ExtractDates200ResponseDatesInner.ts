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

import { HttpFile } from '../http/http';

export class ExtractDates200ResponseDatesInner {
    'startPosition'?: number;
    'date'?: string | null;
    'normalizedDate'?: number;
    'tag'?: string | null;
    'endPosition'?: number;

    static readonly discriminator: string | undefined = undefined;

    static readonly attributeTypeMap: Array<{name: string, baseName: string, type: string, format: string}> = [
        {
            "name": "startPosition",
            "baseName": "start_position",
            "type": "number",
            "format": ""
        },
        {
            "name": "date",
            "baseName": "date",
            "type": "string",
            "format": ""
        },
        {
            "name": "normalizedDate",
            "baseName": "normalized_date",
            "type": "number",
            "format": ""
        },
        {
            "name": "tag",
            "baseName": "tag",
            "type": "string",
            "format": ""
        },
        {
            "name": "endPosition",
            "baseName": "end_position",
            "type": "number",
            "format": ""
        }    ];

    static getAttributeTypeMap() {
        return ExtractDates200ResponseDatesInner.attributeTypeMap;
    }

    public constructor() {
    }
}

