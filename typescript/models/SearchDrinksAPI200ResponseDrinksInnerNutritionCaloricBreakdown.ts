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

import { HttpFile } from '../http/http';

export class SearchDrinksAPI200ResponseDrinksInnerNutritionCaloricBreakdown {
    'percentFat'?: number;
    'percentCarbs'?: number;
    'percentProtein'?: number;

    static readonly discriminator: string | undefined = undefined;

    static readonly attributeTypeMap: Array<{name: string, baseName: string, type: string, format: string}> = [
        {
            "name": "percentFat",
            "baseName": "percent_fat",
            "type": "number",
            "format": ""
        },
        {
            "name": "percentCarbs",
            "baseName": "percent_carbs",
            "type": "number",
            "format": ""
        },
        {
            "name": "percentProtein",
            "baseName": "percent_protein",
            "type": "number",
            "format": ""
        }    ];

    static getAttributeTypeMap() {
        return SearchDrinksAPI200ResponseDrinksInnerNutritionCaloricBreakdown.attributeTypeMap;
    }

    public constructor() {
    }
}

