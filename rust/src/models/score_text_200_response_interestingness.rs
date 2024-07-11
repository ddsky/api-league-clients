/*
 * API League
 *
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.4.1
 * Contact: mail@apileague.com
 * Generated by: https://openapi-generator.tech
 */

use crate::models;

#[derive(Clone, Default, Debug, PartialEq, Serialize, Deserialize)]
pub struct ScoreText200ResponseInterestingness {
    #[serde(rename = "mainscores", skip_serializing_if = "Option::is_none")]
    pub mainscores: Option<Box<models::ScoreText200ResponseSkimmabilityMainscores>>,
    #[serde(rename = "subscores", skip_serializing_if = "Option::is_none")]
    pub subscores: Option<Box<models::ScoreText200ResponseInterestingnessSubscores>>,
}

impl ScoreText200ResponseInterestingness {
    pub fn new() -> ScoreText200ResponseInterestingness {
        ScoreText200ResponseInterestingness {
            mainscores: None,
            subscores: None,
        }
    }
}

