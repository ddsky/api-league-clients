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
pub struct DetectSentiment200Response {
    #[serde(rename = "document", skip_serializing_if = "Option::is_none")]
    pub document: Option<Box<models::DetectSentiment200ResponseDocument>>,
    #[serde(rename = "sentences", skip_serializing_if = "Option::is_none")]
    pub sentences: Option<Vec<models::DetectSentiment200ResponseSentencesInner>>,
}

impl DetectSentiment200Response {
    pub fn new() -> DetectSentiment200Response {
        DetectSentiment200Response {
            document: None,
            sentences: None,
        }
    }
}

