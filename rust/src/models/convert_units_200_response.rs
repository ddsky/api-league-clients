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
pub struct ConvertUnits200Response {
    #[serde(rename = "target_amount", skip_serializing_if = "Option::is_none")]
    pub target_amount: Option<f64>,
    #[serde(rename = "target_unit", default, with = "::serde_with::rust::double_option", skip_serializing_if = "Option::is_none")]
    pub target_unit: Option<Option<String>>,
}

impl ConvertUnits200Response {
    pub fn new() -> ConvertUnits200Response {
        ConvertUnits200Response {
            target_amount: None,
            target_unit: None,
        }
    }
}

