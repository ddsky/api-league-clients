/*
 * API League
 *
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.0
 * Contact: mail@apileague.com
 * Generated by: https://openapi-generator.tech
 */




#[derive(Clone, Debug, PartialEq, Serialize, Deserialize)]
pub struct ScoreText200ResponseReadability {
    #[serde(rename = "mainscores", skip_serializing_if = "Option::is_none")]
    pub mainscores: Option<Box<crate::models::ScoreText200ResponseReadabilityMainscores>>,
    #[serde(rename = "subscores", skip_serializing_if = "Option::is_none")]
    pub subscores: Option<Box<crate::models::ScoreText200ResponseReadabilitySubscores>>,
}

impl ScoreText200ResponseReadability {
    pub fn new() -> ScoreText200ResponseReadability {
        ScoreText200ResponseReadability {
            mainscores: None,
            subscores: None,
        }
    }
}


