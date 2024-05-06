/*
 * API League
 *
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.0.0
 * Contact: mail@apileague.com
 * Generated by: https://openapi-generator.tech
 */

use crate::models;

#[derive(Clone, Default, Debug, PartialEq, Serialize, Deserialize)]
pub struct ScoreText200ResponseReadabilitySubscores {
    #[serde(rename = "reading_time_seconds", skip_serializing_if = "Option::is_none")]
    pub reading_time_seconds: Option<i32>,
    #[serde(rename = "forcast", skip_serializing_if = "Option::is_none")]
    pub forcast: Option<f64>,
    #[serde(rename = "flesch", skip_serializing_if = "Option::is_none")]
    pub flesch: Option<f64>,
    #[serde(rename = "smog", skip_serializing_if = "Option::is_none")]
    pub smog: Option<f64>,
    #[serde(rename = "ari", skip_serializing_if = "Option::is_none")]
    pub ari: Option<f64>,
    #[serde(rename = "lix", skip_serializing_if = "Option::is_none")]
    pub lix: Option<f64>,
    #[serde(rename = "coleman_liau", skip_serializing_if = "Option::is_none")]
    pub coleman_liau: Option<f64>,
    #[serde(rename = "kincaid", skip_serializing_if = "Option::is_none")]
    pub kincaid: Option<f64>,
    #[serde(rename = "fog", skip_serializing_if = "Option::is_none")]
    pub fog: Option<f64>,
}

impl ScoreText200ResponseReadabilitySubscores {
    pub fn new() -> ScoreText200ResponseReadabilitySubscores {
        ScoreText200ResponseReadabilitySubscores {
            reading_time_seconds: None,
            forcast: None,
            flesch: None,
            smog: None,
            ari: None,
            lix: None,
            coleman_liau: None,
            kincaid: None,
            fog: None,
        }
    }
}

