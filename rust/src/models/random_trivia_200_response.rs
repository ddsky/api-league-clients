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
pub struct RandomTrivia200Response {
    #[serde(rename = "trivia", default, with = "::serde_with::rust::double_option", skip_serializing_if = "Option::is_none")]
    pub trivia: Option<Option<String>>,
}

impl RandomTrivia200Response {
    pub fn new() -> RandomTrivia200Response {
        RandomTrivia200Response {
            trivia: None,
        }
    }
}

