/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * OpenAPI spec version: 1.4.1
 * Contact: mail@apileague.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

import { HttpFile } from '../http/http';

export class RetrieveRecipeInformation200ResponseNutritionFlavonoidsInner {
    'name'?: string | null;
    'amount'?: number;
    'unit'?: string | null;

    static readonly discriminator: string | undefined = undefined;

    static readonly attributeTypeMap: Array<{name: string, baseName: string, type: string, format: string}> = [
        {
            "name": "name",
            "baseName": "name",
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
            "name": "unit",
            "baseName": "unit",
            "type": "string",
            "format": ""
        }    ];

    static getAttributeTypeMap() {
        return RetrieveRecipeInformation200ResponseNutritionFlavonoidsInner.attributeTypeMap;
    }

    public constructor() {
    }
}

