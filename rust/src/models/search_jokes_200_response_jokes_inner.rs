/*
 * API League
 *
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.2.0
 * Contact: mail@apileague.com
 * Generated by: https://openapi-generator.tech
 */

use crate::models;

#[derive(Clone, Default, Debug, PartialEq, Serialize, Deserialize)]
pub struct SearchJokes200ResponseJokesInner {
    #[serde(rename = "joke", default, with = "::serde_with::rust::double_option", skip_serializing_if = "Option::is_none")]
    pub joke: Option<Option<String>>,
}

impl SearchJokes200ResponseJokesInner {
    pub fn new() -> SearchJokes200ResponseJokesInner {
        SearchJokes200ResponseJokesInner {
            joke: None,
        }
    }
}

