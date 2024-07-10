/*
 * API League
 *
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.4.0
 * Contact: mail@apileague.com
 * Generated by: https://openapi-generator.tech
 */

use crate::models;

#[derive(Clone, Default, Debug, PartialEq, Serialize, Deserialize)]
pub struct CorrectSpelling200Response {
    #[serde(rename = "corrected_text", default, with = "::serde_with::rust::double_option", skip_serializing_if = "Option::is_none")]
    pub corrected_text: Option<Option<String>>,
}

impl CorrectSpelling200Response {
    pub fn new() -> CorrectSpelling200Response {
        CorrectSpelling200Response {
            corrected_text: None,
        }
    }
}

