/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * OpenAPI spec version: 1.5.0
 * Contact: mail@apileague.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

import { SearchDrinks200ResponseDrinksInnerNutritionIngredientBreakdownInnerNutrientsInner } from '../models/SearchDrinks200ResponseDrinksInnerNutritionIngredientBreakdownInnerNutrientsInner';
import { HttpFile } from '../http/http';

export class SearchDrinks200ResponseDrinksInnerNutritionIngredientBreakdownInner {
    'name'?: string | null;
    'amount'?: number;
    'unit'?: string | null;
    'id'?: number;
    'nutrients'?: Array<SearchDrinks200ResponseDrinksInnerNutritionIngredientBreakdownInnerNutrientsInner>;

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
        },
        {
            "name": "id",
            "baseName": "id",
            "type": "number",
            "format": ""
        },
        {
            "name": "nutrients",
            "baseName": "nutrients",
            "type": "Array<SearchDrinks200ResponseDrinksInnerNutritionIngredientBreakdownInnerNutrientsInner>",
            "format": ""
        }    ];

    static getAttributeTypeMap() {
        return SearchDrinks200ResponseDrinksInnerNutritionIngredientBreakdownInner.attributeTypeMap;
    }

    public constructor() {
    }
}
