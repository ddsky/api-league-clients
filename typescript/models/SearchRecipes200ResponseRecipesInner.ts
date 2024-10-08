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

import { SearchRecipes200ResponseRecipesInnerNutrition } from '../models/SearchRecipes200ResponseRecipesInnerNutrition';
import { HttpFile } from '../http/http';

export class SearchRecipes200ResponseRecipesInner {
    'images'?: Array<string>;
    'nutrition'?: SearchRecipes200ResponseRecipesInnerNutrition;
    'id'?: number;
    'title'?: string | null;

    static readonly discriminator: string | undefined = undefined;

    static readonly attributeTypeMap: Array<{name: string, baseName: string, type: string, format: string}> = [
        {
            "name": "images",
            "baseName": "images",
            "type": "Array<string>",
            "format": ""
        },
        {
            "name": "nutrition",
            "baseName": "nutrition",
            "type": "SearchRecipes200ResponseRecipesInnerNutrition",
            "format": ""
        },
        {
            "name": "id",
            "baseName": "id",
            "type": "number",
            "format": ""
        },
        {
            "name": "title",
            "baseName": "title",
            "type": "string",
            "format": ""
        }    ];

    static getAttributeTypeMap() {
        return SearchRecipes200ResponseRecipesInner.attributeTypeMap;
    }

    public constructor() {
    }
}

