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
pub struct PluralizeWord200Response {
    #[serde(rename = "original", default, with = "::serde_with::rust::double_option", skip_serializing_if = "Option::is_none")]
    pub original: Option<Option<String>>,
    #[serde(rename = "plural", default, with = "::serde_with::rust::double_option", skip_serializing_if = "Option::is_none")]
    pub plural: Option<Option<String>>,
}

impl PluralizeWord200Response {
    pub fn new() -> PluralizeWord200Response {
        PluralizeWord200Response {
            original: None,
            plural: None,
        }
    }
}

