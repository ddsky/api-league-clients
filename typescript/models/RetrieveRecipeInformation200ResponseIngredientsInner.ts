/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * OpenAPI spec version: 1.6.3
 * Contact: mail@apileague.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

import { RetrieveRecipeInformation200ResponseIngredientsInnerMeasures } from '../models/RetrieveRecipeInformation200ResponseIngredientsInnerMeasures';
import { HttpFile } from '../http/http';

export class RetrieveRecipeInformation200ResponseIngredientsInner {
    'image'?: string | null;
    'nameClean'?: string | null;
    'amount'?: number;
    'unit'?: string | null;
    'measures'?: RetrieveRecipeInformation200ResponseIngredientsInnerMeasures;
    'original'?: string | null;
    'meta'?: Array<string>;
    'originalName'?: string | null;
    'name'?: string | null;
    'id'?: number;
    'aisle'?: string | null;
    'consistency'?: string | null;

    static readonly discriminator: string | undefined = undefined;

    static readonly attributeTypeMap: Array<{name: string, baseName: string, type: string, format: string}> = [
        {
            "name": "image",
            "baseName": "image",
            "type": "string",
            "format": ""
        },
        {
            "name": "nameClean",
            "baseName": "name_clean",
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
        },
        {
            "name": "measures",
            "baseName": "measures",
            "type": "RetrieveRecipeInformation200ResponseIngredientsInnerMeasures",
            "format": ""
        },
        {
            "name": "original",
            "baseName": "original",
            "type": "string",
            "format": ""
        },
        {
            "name": "meta",
            "baseName": "meta",
            "type": "Array<string>",
            "format": ""
        },
        {
            "name": "originalName",
            "baseName": "original_name",
            "type": "string",
            "format": ""
        },
        {
            "name": "name",
            "baseName": "name",
            "type": "string",
            "format": ""
        },
        {
            "name": "id",
            "baseName": "id",
            "type": "number",
            "format": ""
        },
        {
            "name": "aisle",
            "baseName": "aisle",
            "type": "string",
            "format": ""
        },
        {
            "name": "consistency",
            "baseName": "consistency",
            "type": "string",
            "format": ""
        }    ];

    static getAttributeTypeMap() {
        return RetrieveRecipeInformation200ResponseIngredientsInner.attributeTypeMap;
    }

    public constructor() {
    }
}

