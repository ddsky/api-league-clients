/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * OpenAPI spec version: 1.2.0
 * Contact: mail@apileague.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

import { RetrieveRecipeInformation200ResponseIngredientsInnerMeasuresMetric } from '../models/RetrieveRecipeInformation200ResponseIngredientsInnerMeasuresMetric';
import { HttpFile } from '../http/http';

export class RetrieveRecipeInformation200ResponseIngredientsInnerMeasures {
    'metric'?: RetrieveRecipeInformation200ResponseIngredientsInnerMeasuresMetric;
    'us'?: RetrieveRecipeInformation200ResponseIngredientsInnerMeasuresMetric;

    static readonly discriminator: string | undefined = undefined;

    static readonly attributeTypeMap: Array<{name: string, baseName: string, type: string, format: string}> = [
        {
            "name": "metric",
            "baseName": "metric",
            "type": "RetrieveRecipeInformation200ResponseIngredientsInnerMeasuresMetric",
            "format": ""
        },
        {
            "name": "us",
            "baseName": "us",
            "type": "RetrieveRecipeInformation200ResponseIngredientsInnerMeasuresMetric",
            "format": ""
        }    ];

    static getAttributeTypeMap() {
        return RetrieveRecipeInformation200ResponseIngredientsInnerMeasures.attributeTypeMap;
    }

    public constructor() {
    }
}

