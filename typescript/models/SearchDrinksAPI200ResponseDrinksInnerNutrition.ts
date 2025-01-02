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

import { SearchDrinksAPI200ResponseDrinksInnerNutritionCaloricBreakdown } from '../models/SearchDrinksAPI200ResponseDrinksInnerNutritionCaloricBreakdown';
import { SearchDrinksAPI200ResponseDrinksInnerNutritionFlavonoidsInner } from '../models/SearchDrinksAPI200ResponseDrinksInnerNutritionFlavonoidsInner';
import { SearchDrinksAPI200ResponseDrinksInnerNutritionIngredientBreakdownInner } from '../models/SearchDrinksAPI200ResponseDrinksInnerNutritionIngredientBreakdownInner';
import { SearchDrinksAPI200ResponseDrinksInnerNutritionNutrientsInner } from '../models/SearchDrinksAPI200ResponseDrinksInnerNutritionNutrientsInner';
import { SearchDrinksAPI200ResponseDrinksInnerNutritionWeightPerServing } from '../models/SearchDrinksAPI200ResponseDrinksInnerNutritionWeightPerServing';
import { HttpFile } from '../http/http';

export class SearchDrinksAPI200ResponseDrinksInnerNutrition {
    'weightPerServing'?: SearchDrinksAPI200ResponseDrinksInnerNutritionWeightPerServing;
    'caloricBreakdown'?: SearchDrinksAPI200ResponseDrinksInnerNutritionCaloricBreakdown;
    'flavonoids'?: Array<SearchDrinksAPI200ResponseDrinksInnerNutritionFlavonoidsInner>;
    'ingredientBreakdown'?: Array<SearchDrinksAPI200ResponseDrinksInnerNutritionIngredientBreakdownInner>;
    'properties'?: Array<SearchDrinksAPI200ResponseDrinksInnerNutritionFlavonoidsInner>;
    'nutrients'?: Array<SearchDrinksAPI200ResponseDrinksInnerNutritionNutrientsInner>;

    static readonly discriminator: string | undefined = undefined;

    static readonly attributeTypeMap: Array<{name: string, baseName: string, type: string, format: string}> = [
        {
            "name": "weightPerServing",
            "baseName": "weight_per_serving",
            "type": "SearchDrinksAPI200ResponseDrinksInnerNutritionWeightPerServing",
            "format": ""
        },
        {
            "name": "caloricBreakdown",
            "baseName": "caloric_breakdown",
            "type": "SearchDrinksAPI200ResponseDrinksInnerNutritionCaloricBreakdown",
            "format": ""
        },
        {
            "name": "flavonoids",
            "baseName": "flavonoids",
            "type": "Array<SearchDrinksAPI200ResponseDrinksInnerNutritionFlavonoidsInner>",
            "format": ""
        },
        {
            "name": "ingredientBreakdown",
            "baseName": "ingredient_breakdown",
            "type": "Array<SearchDrinksAPI200ResponseDrinksInnerNutritionIngredientBreakdownInner>",
            "format": ""
        },
        {
            "name": "properties",
            "baseName": "properties",
            "type": "Array<SearchDrinksAPI200ResponseDrinksInnerNutritionFlavonoidsInner>",
            "format": ""
        },
        {
            "name": "nutrients",
            "baseName": "nutrients",
            "type": "Array<SearchDrinksAPI200ResponseDrinksInnerNutritionNutrientsInner>",
            "format": ""
        }    ];

    static getAttributeTypeMap() {
        return SearchDrinksAPI200ResponseDrinksInnerNutrition.attributeTypeMap;
    }

    public constructor() {
    }
}
