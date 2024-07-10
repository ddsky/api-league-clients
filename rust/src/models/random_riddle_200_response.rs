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
pub struct RandomRiddle200Response {
    #[serde(rename = "riddle", default, with = "::serde_with::rust::double_option", skip_serializing_if = "Option::is_none")]
    pub riddle: Option<Option<String>>,
    #[serde(rename = "answer", default, with = "::serde_with::rust::double_option", skip_serializing_if = "Option::is_none")]
    pub answer: Option<Option<String>>,
    #[serde(rename = "difficulty", default, with = "::serde_with::rust::double_option", skip_serializing_if = "Option::is_none")]
    pub difficulty: Option<Option<String>>,
}

impl RandomRiddle200Response {
    pub fn new() -> RandomRiddle200Response {
        RandomRiddle200Response {
            riddle: None,
            answer: None,
            difficulty: None,
        }
    }
}
