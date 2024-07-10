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
pub struct RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInnerNutrientsInner {
    #[serde(rename = "name", default, with = "::serde_with::rust::double_option", skip_serializing_if = "Option::is_none")]
    pub name: Option<Option<String>>,
    #[serde(rename = "percent_of_daily_needs", skip_serializing_if = "Option::is_none")]
    pub percent_of_daily_needs: Option<f64>,
    #[serde(rename = "amount", skip_serializing_if = "Option::is_none")]
    pub amount: Option<f64>,
    #[serde(rename = "unit", default, with = "::serde_with::rust::double_option", skip_serializing_if = "Option::is_none")]
    pub unit: Option<Option<String>>,
}

impl RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInnerNutrientsInner {
    pub fn new() -> RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInnerNutrientsInner {
        RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInnerNutrientsInner {
            name: None,
            percent_of_daily_needs: None,
            amount: None,
            unit: None,
        }
    }
}

