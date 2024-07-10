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
pub struct TagPartOfSpeech200Response {
    #[serde(rename = "tagged_text", default, with = "::serde_with::rust::double_option", skip_serializing_if = "Option::is_none")]
    pub tagged_text: Option<Option<String>>,
}

impl TagPartOfSpeech200Response {
    pub fn new() -> TagPartOfSpeech200Response {
        TagPartOfSpeech200Response {
            tagged_text: None,
        }
    }
}

