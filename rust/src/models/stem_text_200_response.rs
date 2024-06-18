/*
 * API League
 *
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.3.0
 * Contact: mail@apileague.com
 * Generated by: https://openapi-generator.tech
 */

use crate::models;

#[derive(Clone, Default, Debug, PartialEq, Serialize, Deserialize)]
pub struct StemText200Response {
    #[serde(rename = "original", default, with = "::serde_with::rust::double_option", skip_serializing_if = "Option::is_none")]
    pub original: Option<Option<String>>,
    #[serde(rename = "stemmed", default, with = "::serde_with::rust::double_option", skip_serializing_if = "Option::is_none")]
    pub stemmed: Option<Option<String>>,
}

impl StemText200Response {
    pub fn new() -> StemText200Response {
        StemText200Response {
            original: None,
            stemmed: None,
        }
    }
}
