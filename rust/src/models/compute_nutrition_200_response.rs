/*
 * API League
 *
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.4.0
 * Contact: mail@apileague.com
 * Generated by: https://openapi-generator.tech
 */

use crate::models;

#[derive(Clone, Default, Debug, PartialEq, Serialize, Deserialize)]
pub struct ComputeNutrition200Response {
    #[serde(rename = "nutrients", skip_serializing_if = "Option::is_none")]
    pub nutrients: Option<Vec<models::RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInnerNutrientsInner>>,
    #[serde(rename = "properties", skip_serializing_if = "Option::is_none")]
    pub properties: Option<Vec<models::RetrieveRecipeInformation200ResponseNutritionFlavonoidsInner>>,
    #[serde(rename = "flavonoids", skip_serializing_if = "Option::is_none")]
    pub flavonoids: Option<Vec<models::SearchRecipes200ResponseRecipesInnerNutritionNutrientsInner>>,
    #[serde(rename = "ingredient_breakdown", skip_serializing_if = "Option::is_none")]
    pub ingredient_breakdown: Option<Vec<models::ComputeNutrition200ResponseIngredientBreakdownInner>>,
    #[serde(rename = "caloric_breakdown", skip_serializing_if = "Option::is_none")]
    pub caloric_breakdown: Option<Box<models::RetrieveRecipeInformation200ResponseNutritionCaloricBreakdown>>,
    #[serde(rename = "weight_per_serving", skip_serializing_if = "Option::is_none")]
    pub weight_per_serving: Option<Box<models::RetrieveRecipeInformation200ResponseNutritionWeightPerServing>>,
}

impl ComputeNutrition200Response {
    pub fn new() -> ComputeNutrition200Response {
        ComputeNutrition200Response {
            nutrients: None,
            properties: None,
            flavonoids: None,
            ingredient_breakdown: None,
            caloric_breakdown: None,
            weight_per_serving: None,
        }
    }
}

