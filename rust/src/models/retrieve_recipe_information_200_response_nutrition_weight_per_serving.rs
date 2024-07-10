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
pub struct RetrieveRecipeInformation200ResponseNutritionWeightPerServing {
    #[serde(rename = "amount", skip_serializing_if = "Option::is_none")]
    pub amount: Option<i32>,
    #[serde(rename = "unit", default, with = "::serde_with::rust::double_option", skip_serializing_if = "Option::is_none")]
    pub unit: Option<Option<String>>,
}

impl RetrieveRecipeInformation200ResponseNutritionWeightPerServing {
    pub fn new() -> RetrieveRecipeInformation200ResponseNutritionWeightPerServing {
        RetrieveRecipeInformation200ResponseNutritionWeightPerServing {
            amount: None,
            unit: None,
        }
    }
}

