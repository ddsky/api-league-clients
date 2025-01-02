/*
 * API League
 *
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.6.4
 * Contact: mail@apileague.com
 * Generated by: https://openapi-generator.tech
 */

use crate::models;
use serde::{Deserialize, Serialize};

#[derive(Clone, Default, Debug, PartialEq, Serialize, Deserialize)]
pub struct SearchDrinksApi200ResponseDrinksInnerNutritionFlavonoidsInner {
    #[serde(rename = "name", default, with = "::serde_with::rust::double_option", skip_serializing_if = "Option::is_none")]
    pub name: Option<Option<String>>,
    #[serde(rename = "amount", skip_serializing_if = "Option::is_none")]
    pub amount: Option<i32>,
    #[serde(rename = "unit", default, with = "::serde_with::rust::double_option", skip_serializing_if = "Option::is_none")]
    pub unit: Option<Option<String>>,
}

impl SearchDrinksApi200ResponseDrinksInnerNutritionFlavonoidsInner {
    pub fn new() -> SearchDrinksApi200ResponseDrinksInnerNutritionFlavonoidsInner {
        SearchDrinksApi200ResponseDrinksInnerNutritionFlavonoidsInner {
            name: None,
            amount: None,
            unit: None,
        }
    }
}

