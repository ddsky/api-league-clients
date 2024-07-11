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
pub struct DetectSentiment200ResponseSentencesInner {
    #[serde(rename = "length", skip_serializing_if = "Option::is_none")]
    pub length: Option<i32>,
    #[serde(rename = "sentiment", default, with = "::serde_with::rust::double_option", skip_serializing_if = "Option::is_none")]
    pub sentiment: Option<Option<String>>,
    #[serde(rename = "offset", skip_serializing_if = "Option::is_none")]
    pub offset: Option<i32>,
    #[serde(rename = "confidence", skip_serializing_if = "Option::is_none")]
    pub confidence: Option<i32>,
}

impl DetectSentiment200ResponseSentencesInner {
    pub fn new() -> DetectSentiment200ResponseSentencesInner {
        DetectSentiment200ResponseSentencesInner {
            length: None,
            sentiment: None,
            offset: None,
            confidence: None,
        }
    }
}

