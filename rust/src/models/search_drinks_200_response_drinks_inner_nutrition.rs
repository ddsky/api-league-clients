/*
 * API League
 *
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.6.3
 * Contact: mail@apileague.com
 * Generated by: https://openapi-generator.tech
 */

use crate::models;
use serde::{Deserialize, Serialize};

#[derive(Clone, Default, Debug, PartialEq, Serialize, Deserialize)]
pub struct SearchDrinks200ResponseDrinksInnerNutrition {
    #[serde(rename = "weight_per_serving", skip_serializing_if = "Option::is_none")]
    pub weight_per_serving: Option<Box<models::SearchDrinks200ResponseDrinksInnerNutritionWeightPerServing>>,
    #[serde(rename = "caloric_breakdown", skip_serializing_if = "Option::is_none")]
    pub caloric_breakdown: Option<Box<models::SearchDrinks200ResponseDrinksInnerNutritionCaloricBreakdown>>,
    #[serde(rename = "flavonoids", skip_serializing_if = "Option::is_none")]
    pub flavonoids: Option<Vec<models::SearchDrinks200ResponseDrinksInnerNutritionFlavonoidsInner>>,
    #[serde(rename = "ingredient_breakdown", skip_serializing_if = "Option::is_none")]
    pub ingredient_breakdown: Option<Vec<models::SearchDrinks200ResponseDrinksInnerNutritionIngredientBreakdownInner>>,
    #[serde(rename = "properties", skip_serializing_if = "Option::is_none")]
    pub properties: Option<Vec<models::SearchDrinks200ResponseDrinksInnerNutritionFlavonoidsInner>>,
    #[serde(rename = "nutrients", skip_serializing_if = "Option::is_none")]
    pub nutrients: Option<Vec<models::SearchDrinks200ResponseDrinksInnerNutritionNutrientsInner>>,
}

impl SearchDrinks200ResponseDrinksInnerNutrition {
    pub fn new() -> SearchDrinks200ResponseDrinksInnerNutrition {
        SearchDrinks200ResponseDrinksInnerNutrition {
            weight_per_serving: None,
            caloric_breakdown: None,
            flavonoids: None,
            ingredient_breakdown: None,
            properties: None,
            nutrients: None,
        }
    }
}

