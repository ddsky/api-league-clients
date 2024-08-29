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
pub struct SearchDrinks200ResponseDrinksInnerNutritionWeightPerServing {
    #[serde(rename = "amount", skip_serializing_if = "Option::is_none")]
    pub amount: Option<i32>,
    #[serde(rename = "unit", default, with = "::serde_with::rust::double_option", skip_serializing_if = "Option::is_none")]
    pub unit: Option<Option<String>>,
}

impl SearchDrinks200ResponseDrinksInnerNutritionWeightPerServing {
    pub fn new() -> SearchDrinks200ResponseDrinksInnerNutritionWeightPerServing {
        SearchDrinks200ResponseDrinksInnerNutritionWeightPerServing {
            amount: None,
            unit: None,
        }
    }
}

