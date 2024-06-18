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
pub struct RandomPoem200Response {
    #[serde(rename = "title", default, with = "::serde_with::rust::double_option", skip_serializing_if = "Option::is_none")]
    pub title: Option<Option<String>>,
    #[serde(rename = "author", default, with = "::serde_with::rust::double_option", skip_serializing_if = "Option::is_none")]
    pub author: Option<Option<String>>,
    #[serde(rename = "poem", default, with = "::serde_with::rust::double_option", skip_serializing_if = "Option::is_none")]
    pub poem: Option<Option<String>>,
}

impl RandomPoem200Response {
    pub fn new() -> RandomPoem200Response {
        RandomPoem200Response {
            title: None,
            author: None,
            poem: None,
        }
    }
}

