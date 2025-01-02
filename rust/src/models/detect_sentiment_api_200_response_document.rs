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
pub struct DetectSentimentApi200ResponseDocument {
    #[serde(rename = "sentiment", default, with = "::serde_with::rust::double_option", skip_serializing_if = "Option::is_none")]
    pub sentiment: Option<Option<String>>,
    #[serde(rename = "confidence", skip_serializing_if = "Option::is_none")]
    pub confidence: Option<i32>,
    #[serde(rename = "average_confidence", skip_serializing_if = "Option::is_none")]
    pub average_confidence: Option<i32>,
}

impl DetectSentimentApi200ResponseDocument {
    pub fn new() -> DetectSentimentApi200ResponseDocument {
        DetectSentimentApi200ResponseDocument {
            sentiment: None,
            confidence: None,
            average_confidence: None,
        }
    }
}

