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
pub struct ScoreTextApi200ResponseStyleSubscores {
    #[serde(rename = "abbreviation_score", skip_serializing_if = "Option::is_none")]
    pub abbreviation_score: Option<Vec<i32>>,
    #[serde(rename = "style_score", skip_serializing_if = "Option::is_none")]
    pub style_score: Option<Vec<i32>>,
    #[serde(rename = "spelling_score", skip_serializing_if = "Option::is_none")]
    pub spelling_score: Option<Vec<i32>>,
}

impl ScoreTextApi200ResponseStyleSubscores {
    pub fn new() -> ScoreTextApi200ResponseStyleSubscores {
        ScoreTextApi200ResponseStyleSubscores {
            abbreviation_score: None,
            style_score: None,
            spelling_score: None,
        }
    }
}

