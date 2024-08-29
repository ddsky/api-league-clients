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
pub struct RetrieveRecipeInformation200ResponseScores {
    #[serde(rename = "meta_score", skip_serializing_if = "Option::is_none")]
    pub meta_score: Option<f64>,
    #[serde(rename = "weight_watcher_smart_points", skip_serializing_if = "Option::is_none")]
    pub weight_watcher_smart_points: Option<i32>,
    #[serde(rename = "health_score", skip_serializing_if = "Option::is_none")]
    pub health_score: Option<i32>,
}

impl RetrieveRecipeInformation200ResponseScores {
    pub fn new() -> RetrieveRecipeInformation200ResponseScores {
        RetrieveRecipeInformation200ResponseScores {
            meta_score: None,
            weight_watcher_smart_points: None,
            health_score: None,
        }
    }
}

