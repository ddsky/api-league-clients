/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * OpenAPI spec version: 1.4.2
 * Contact: mail@apileague.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

import { HttpFile } from '../http/http';

export class ExtractEntities200ResponseEntitiesInner {
    'startPosition'?: number;
    'image'?: string | null;
    'type'?: string | null;
    'value'?: string | null;
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
            "name": "image",
            "baseName": "image",
            "type": "string",
            "format": ""
        },
        {
            "name": "type",
            "baseName": "type",
            "type": "string",
            "format": ""
        },
        {
            "name": "value",
            "baseName": "value",
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
        return ExtractEntities200ResponseEntitiesInner.attributeTypeMap;
    }

    public constructor() {
    }
}

