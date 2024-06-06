/*
 * API League
 *
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.2.0
 * Contact: mail@apileague.com
 * Generated by: https://openapi-generator.tech
 */

use crate::models;

#[derive(Clone, Default, Debug, PartialEq, Serialize, Deserialize)]
pub struct ScoreText200ResponseInterestingnessSubscores {
    #[serde(rename = "title_rating_score", skip_serializing_if = "Option::is_none")]
    pub title_rating_score: Option<Vec<i32>>,
    #[serde(rename = "quote_score", skip_serializing_if = "Option::is_none")]
    pub quote_score: Option<Vec<i32>>,
    #[serde(rename = "length_score", skip_serializing_if = "Option::is_none")]
    pub length_score: Option<Vec<i32>>,
    #[serde(rename = "link_score", skip_serializing_if = "Option::is_none")]
    pub link_score: Option<Vec<i32>>,
    #[serde(rename = "google_hits_score", skip_serializing_if = "Option::is_none")]
    pub google_hits_score: Option<Vec<i32>>,
}

impl ScoreText200ResponseInterestingnessSubscores {
    pub fn new() -> ScoreText200ResponseInterestingnessSubscores {
        ScoreText200ResponseInterestingnessSubscores {
            title_rating_score: None,
            quote_score: None,
            length_score: None,
            link_score: None,
            google_hits_score: None,
        }
    }
}

