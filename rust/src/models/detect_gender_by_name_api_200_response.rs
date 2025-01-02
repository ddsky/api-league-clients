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
pub struct DetectGenderByNameApi200Response {
    #[serde(rename = "name", default, with = "::serde_with::rust::double_option", skip_serializing_if = "Option::is_none")]
    pub name: Option<Option<String>>,
    #[serde(rename = "probability_male", skip_serializing_if = "Option::is_none")]
    pub probability_male: Option<f64>,
    #[serde(rename = "probability_female", skip_serializing_if = "Option::is_none")]
    pub probability_female: Option<f64>,
    #[serde(rename = "popularity", skip_serializing_if = "Option::is_none")]
    pub popularity: Option<f64>,
}

impl DetectGenderByNameApi200Response {
    pub fn new() -> DetectGenderByNameApi200Response {
        DetectGenderByNameApi200Response {
            name: None,
            probability_male: None,
            probability_female: None,
            popularity: None,
        }
    }
}
