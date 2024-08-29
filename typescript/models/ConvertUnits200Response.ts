/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * OpenAPI spec version: 1.6.2
 * Contact: mail@apileague.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

import { HttpFile } from '../http/http';

export class ConvertUnits200Response {
    'targetAmount'?: number;
    'targetUnit'?: string | null;

    static readonly discriminator: string | undefined = undefined;

    static readonly attributeTypeMap: Array<{name: string, baseName: string, type: string, format: string}> = [
        {
            "name": "targetAmount",
            "baseName": "target_amount",
            "type": "number",
            "format": ""
        },
        {
            "name": "targetUnit",
            "baseName": "target_unit",
            "type": "string",
            "format": ""
        }    ];

    static getAttributeTypeMap() {
        return ConvertUnits200Response.attributeTypeMap;
    }

    public constructor() {
    }
}

