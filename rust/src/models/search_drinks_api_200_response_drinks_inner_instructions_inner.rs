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
pub struct SearchDrinksApi200ResponseDrinksInnerInstructionsInner {
    #[serde(rename = "name", default, with = "::serde_with::rust::double_option", skip_serializing_if = "Option::is_none")]
    pub name: Option<Option<String>>,
    #[serde(rename = "steps", skip_serializing_if = "Option::is_none")]
    pub steps: Option<Vec<models::SearchDrinksApi200ResponseDrinksInnerInstructionsInnerStepsInner>>,
}

impl SearchDrinksApi200ResponseDrinksInnerInstructionsInner {
    pub fn new() -> SearchDrinksApi200ResponseDrinksInnerInstructionsInner {
        SearchDrinksApi200ResponseDrinksInnerInstructionsInner {
            name: None,
            steps: None,
        }
    }
}

