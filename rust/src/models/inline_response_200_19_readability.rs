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
pub struct InlineResponse20019Readability {
    #[serde(rename = "mainscores", skip_serializing_if = "Option::is_none")]
    pub mainscores: Option<Box<crate::models::InlineResponse20019ReadabilityMainscores>>,
    #[serde(rename = "subscores", skip_serializing_if = "Option::is_none")]
    pub subscores: Option<Box<crate::models::InlineResponse20019ReadabilitySubscores>>,
}

impl InlineResponse20019Readability {
    pub fn new() -> InlineResponse20019Readability {
        InlineResponse20019Readability {
            mainscores: None,
            subscores: None,
        }
    }
}


