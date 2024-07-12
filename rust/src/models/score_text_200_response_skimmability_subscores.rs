/*
 * API League
 *
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.4.2
 * Contact: mail@apileague.com
 * Generated by: https://openapi-generator.tech
 */

use crate::models;

#[derive(Clone, Default, Debug, PartialEq, Serialize, Deserialize)]
pub struct ScoreText200ResponseSkimmabilitySubscores {
    #[serde(rename = "bullet_point_ratio_score", skip_serializing_if = "Option::is_none")]
    pub bullet_point_ratio_score: Option<Vec<i32>>,
    #[serde(rename = "image_score", skip_serializing_if = "Option::is_none")]
    pub image_score: Option<Vec<i32>>,
    #[serde(rename = "highlighted_word_ratio_score", skip_serializing_if = "Option::is_none")]
    pub highlighted_word_ratio_score: Option<Vec<i32>>,
    #[serde(rename = "video_score", skip_serializing_if = "Option::is_none")]
    pub video_score: Option<Vec<i32>>,
    #[serde(rename = "paragraph_score", skip_serializing_if = "Option::is_none")]
    pub paragraph_score: Option<Vec<i32>>,
    #[serde(rename = "paragraph_headline_ratio_score", skip_serializing_if = "Option::is_none")]
    pub paragraph_headline_ratio_score: Option<Vec<i32>>,
}

impl ScoreText200ResponseSkimmabilitySubscores {
    pub fn new() -> ScoreText200ResponseSkimmabilitySubscores {
        ScoreText200ResponseSkimmabilitySubscores {
            bullet_point_ratio_score: None,
            image_score: None,
            highlighted_word_ratio_score: None,
            video_score: None,
            paragraph_score: None,
            paragraph_headline_ratio_score: None,
        }
    }
}

