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

import { ComputeNutrition200ResponseIngredientBreakdownInner } from '../models/ComputeNutrition200ResponseIngredientBreakdownInner';
import { SearchDrinks200ResponseDrinksInnerNutritionCaloricBreakdown } from '../models/SearchDrinks200ResponseDrinksInnerNutritionCaloricBreakdown';
import { SearchDrinks200ResponseDrinksInnerNutritionFlavonoidsInner } from '../models/SearchDrinks200ResponseDrinksInnerNutritionFlavonoidsInner';
import { SearchDrinks200ResponseDrinksInnerNutritionNutrientsInner } from '../models/SearchDrinks200ResponseDrinksInnerNutritionNutrientsInner';
import { SearchDrinks200ResponseDrinksInnerNutritionWeightPerServing } from '../models/SearchDrinks200ResponseDrinksInnerNutritionWeightPerServing';
import { SearchRecipes200ResponseRecipesInnerNutritionNutrientsInner } from '../models/SearchRecipes200ResponseRecipesInnerNutritionNutrientsInner';
import { HttpFile } from '../http/http';

export class ComputeNutrition200Response {
    'nutrients'?: Array<SearchDrinks200ResponseDrinksInnerNutritionNutrientsInner>;
    'properties'?: Array<SearchDrinks200ResponseDrinksInnerNutritionFlavonoidsInner>;
    'flavonoids'?: Array<SearchRecipes200ResponseRecipesInnerNutritionNutrientsInner>;
    'ingredientBreakdown'?: Array<ComputeNutrition200ResponseIngredientBreakdownInner>;
    'caloricBreakdown'?: SearchDrinks200ResponseDrinksInnerNutritionCaloricBreakdown;
    'weightPerServing'?: SearchDrinks200ResponseDrinksInnerNutritionWeightPerServing;

    static readonly discriminator: string | undefined = undefined;

    static readonly attributeTypeMap: Array<{name: string, baseName: string, type: string, format: string}> = [
        {
            "name": "nutrients",
            "baseName": "nutrients",
            "type": "Array<SearchDrinks200ResponseDrinksInnerNutritionNutrientsInner>",
            "format": ""
        },
        {
            "name": "properties",
            "baseName": "properties",
            "type": "Array<SearchDrinks200ResponseDrinksInnerNutritionFlavonoidsInner>",
            "format": ""
        },
        {
            "name": "flavonoids",
            "baseName": "flavonoids",
            "type": "Array<SearchRecipes200ResponseRecipesInnerNutritionNutrientsInner>",
            "format": ""
        },
        {
            "name": "ingredientBreakdown",
            "baseName": "ingredient_breakdown",
            "type": "Array<ComputeNutrition200ResponseIngredientBreakdownInner>",
            "format": ""
        },
        {
            "name": "caloricBreakdown",
            "baseName": "caloric_breakdown",
            "type": "SearchDrinks200ResponseDrinksInnerNutritionCaloricBreakdown",
            "format": ""
        },
        {
            "name": "weightPerServing",
            "baseName": "weight_per_serving",
            "type": "SearchDrinks200ResponseDrinksInnerNutritionWeightPerServing",
            "format": ""
        }    ];

    static getAttributeTypeMap() {
        return ComputeNutrition200Response.attributeTypeMap;
    }

    public constructor() {
    }
}

