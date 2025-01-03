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

import { SearchDrinksAPI200ResponseDrinksInnerIngredientsInnerMeasuresMetric } from '../models/SearchDrinksAPI200ResponseDrinksInnerIngredientsInnerMeasuresMetric';
import { HttpFile } from '../http/http';

export class RetrieveRecipeInformationAPI200ResponseIngredientsInnerMeasures {
    'metric'?: SearchDrinksAPI200ResponseDrinksInnerIngredientsInnerMeasuresMetric;
    'us'?: SearchDrinksAPI200ResponseDrinksInnerIngredientsInnerMeasuresMetric;

    static readonly discriminator: string | undefined = undefined;

    static readonly attributeTypeMap: Array<{name: string, baseName: string, type: string, format: string}> = [
        {
            "name": "metric",
            "baseName": "metric",
            "type": "SearchDrinksAPI200ResponseDrinksInnerIngredientsInnerMeasuresMetric",
            "format": ""
        },
        {
            "name": "us",
            "baseName": "us",
            "type": "SearchDrinksAPI200ResponseDrinksInnerIngredientsInnerMeasuresMetric",
            "format": ""
        }    ];

    static getAttributeTypeMap() {
        return RetrieveRecipeInformationAPI200ResponseIngredientsInnerMeasures.attributeTypeMap;
    }

    public constructor() {
    }
}

