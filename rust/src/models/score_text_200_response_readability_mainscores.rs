/*
 * API League
 *
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.6.2
 * Contact: mail@apileague.com
 * Generated by: https://openapi-generator.tech
 */

use crate::models;
use serde::{Deserialize, Serialize};

#[derive(Clone, Default, Debug, PartialEq, Serialize, Deserialize)]
pub struct ScoreText200ResponseReadabilityMainscores {
    #[serde(rename = "total_possible", skip_serializing_if = "Option::is_none")]
    pub total_possible: Option<i32>,
    #[serde(rename = "total", skip_serializing_if = "Option::is_none")]
    pub total: Option<i32>,
}

impl ScoreText200ResponseReadabilityMainscores {
    pub fn new() -> ScoreText200ResponseReadabilityMainscores {
        ScoreText200ResponseReadabilityMainscores {
            total_possible: None,
            total: None,
        }
    }
}

