/*
 * API League
 *
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.3.0
 * Contact: mail@apileague.com
 * Generated by: https://openapi-generator.tech
 */

use crate::models;

#[derive(Clone, Default, Debug, PartialEq, Serialize, Deserialize)]
pub struct ScoreText200ResponseReadability {
    #[serde(rename = "mainscores", skip_serializing_if = "Option::is_none")]
    pub mainscores: Option<Box<models::ScoreText200ResponseReadabilityMainscores>>,
    #[serde(rename = "subscores", skip_serializing_if = "Option::is_none")]
    pub subscores: Option<Box<models::ScoreText200ResponseReadabilitySubscores>>,
}

impl ScoreText200ResponseReadability {
    pub fn new() -> ScoreText200ResponseReadability {
        ScoreText200ResponseReadability {
            mainscores: None,
            subscores: None,
        }
    }
}

