/*
 * API League
 *
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.5.0
 * Contact: mail@apileague.com
 * Generated by: https://openapi-generator.tech
 */

use crate::models;
use serde::{Deserialize, Serialize};

#[derive(Clone, Default, Debug, PartialEq, Serialize, Deserialize)]
pub struct RetrieveRecipeInformation200ResponseNutrition {
    #[serde(rename = "weight_per_serving", skip_serializing_if = "Option::is_none")]
    pub weight_per_serving: Option<Box<models::SearchDrinks200ResponseDrinksInnerNutritionWeightPerServing>>,
    #[serde(rename = "caloric_breakdown", skip_serializing_if = "Option::is_none")]
    pub caloric_breakdown: Option<Box<models::SearchDrinks200ResponseDrinksInnerNutritionCaloricBreakdown>>,
    #[serde(rename = "flavonoids", skip_serializing_if = "Option::is_none")]
    pub flavonoids: Option<Vec<models::SearchDrinks200ResponseDrinksInnerNutritionFlavonoidsInner>>,
    #[serde(rename = "ingredient_breakdown", skip_serializing_if = "Option::is_none")]
    pub ingredient_breakdown: Option<Vec<models::RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInner>>,
    #[serde(rename = "properties", skip_serializing_if = "Option::is_none")]
    pub properties: Option<Vec<models::SearchRecipes200ResponseRecipesInnerNutritionNutrientsInner>>,
    #[serde(rename = "nutrients", skip_serializing_if = "Option::is_none")]
    pub nutrients: Option<Vec<models::SearchDrinks200ResponseDrinksInnerNutritionNutrientsInner>>,
}

impl RetrieveRecipeInformation200ResponseNutrition {
    pub fn new() -> RetrieveRecipeInformation200ResponseNutrition {
        RetrieveRecipeInformation200ResponseNutrition {
            weight_per_serving: None,
            caloric_breakdown: None,
            flavonoids: None,
            ingredient_breakdown: None,
            properties: None,
            nutrients: None,
        }
    }
}

