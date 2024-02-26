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
pub struct InlineResponse20030 {
    #[serde(rename = "target_amount", skip_serializing_if = "Option::is_none")]
    pub target_amount: Option<f32>,
    #[serde(rename = "target_unit", skip_serializing_if = "Option::is_none")]
    pub target_unit: Option<String>,
}

impl InlineResponse20030 {
    pub fn new() -> InlineResponse20030 {
        InlineResponse20030 {
            target_amount: None,
            target_unit: None,
        }
    }
}


