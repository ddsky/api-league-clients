/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * OpenAPI spec version: 1.0
 * Contact: mail@apileague.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

import { HttpFile } from '../http/http';

export class RetrieveRecipeInformation200ResponseIngredientsInnerMeasuresMetric {
    'unitShort'?: string | null;
    'amount'?: number;
    'unitLong'?: string | null;

    static readonly discriminator: string | undefined = undefined;

    static readonly attributeTypeMap: Array<{name: string, baseName: string, type: string, format: string}> = [
        {
            "name": "unitShort",
            "baseName": "unit_short",
            "type": "string",
            "format": ""
        },
        {
            "name": "amount",
            "baseName": "amount",
            "type": "number",
            "format": ""
        },
        {
            "name": "unitLong",
            "baseName": "unit_long",
            "type": "string",
            "format": ""
        }    ];

    static getAttributeTypeMap() {
        return RetrieveRecipeInformation200ResponseIngredientsInnerMeasuresMetric.attributeTypeMap;
    }

    public constructor() {
    }
}

