/*
 * API League
 *
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.0
 * Contact: mail@apileague.com
 * Generated by: https://openapi-generator.tech
 */




#[derive(Clone, Debug, PartialEq, Default, Serialize, Deserialize)]
pub struct InlineResponse20017Document {
    #[serde(rename = "sentiment", skip_serializing_if = "Option::is_none")]
    pub sentiment: Option<String>,
    #[serde(rename = "confidence", skip_serializing_if = "Option::is_none")]
    pub confidence: Option<i32>,
    #[serde(rename = "average_confidence", skip_serializing_if = "Option::is_none")]
    pub average_confidence: Option<i32>,
}

impl InlineResponse20017Document {
    pub fn new() -> InlineResponse20017Document {
        InlineResponse20017Document {
            sentiment: None,
            confidence: None,
            average_confidence: None,
        }
    }
}


