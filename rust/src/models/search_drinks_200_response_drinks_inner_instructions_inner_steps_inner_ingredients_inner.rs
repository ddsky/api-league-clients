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
pub struct SearchDrinks200ResponseDrinksInnerInstructionsInnerStepsInnerIngredientsInner {
    #[serde(rename = "name", default, with = "::serde_with::rust::double_option", skip_serializing_if = "Option::is_none")]
    pub name: Option<Option<String>>,
    #[serde(rename = "image", default, with = "::serde_with::rust::double_option", skip_serializing_if = "Option::is_none")]
    pub image: Option<Option<String>>,
    #[serde(rename = "id", skip_serializing_if = "Option::is_none")]
    pub id: Option<i32>,
}

impl SearchDrinks200ResponseDrinksInnerInstructionsInnerStepsInnerIngredientsInner {
    pub fn new() -> SearchDrinks200ResponseDrinksInnerInstructionsInnerStepsInnerIngredientsInner {
        SearchDrinks200ResponseDrinksInnerInstructionsInnerStepsInnerIngredientsInner {
            name: None,
            image: None,
            id: None,
        }
    }
}
