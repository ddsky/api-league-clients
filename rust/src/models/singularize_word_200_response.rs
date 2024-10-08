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
pub struct SingularizeWord200Response {
    #[serde(rename = "original", default, with = "::serde_with::rust::double_option", skip_serializing_if = "Option::is_none")]
    pub original: Option<Option<String>>,
    #[serde(rename = "singular", default, with = "::serde_with::rust::double_option", skip_serializing_if = "Option::is_none")]
    pub singular: Option<Option<String>>,
}

impl SingularizeWord200Response {
    pub fn new() -> SingularizeWord200Response {
        SingularizeWord200Response {
            original: None,
            singular: None,
        }
    }
}

