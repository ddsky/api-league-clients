/*
 * API League
 *
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.6.3
 * Contact: mail@apileague.com
 * Generated by: https://openapi-generator.tech
 */

use crate::models;
use serde::{Deserialize, Serialize};

#[derive(Clone, Default, Debug, PartialEq, Serialize, Deserialize)]
pub struct RetrieveRecipeInformation200ResponseCredits {
    #[serde(rename = "license", default, with = "::serde_with::rust::double_option", skip_serializing_if = "Option::is_none")]
    pub license: Option<Option<String>>,
    #[serde(rename = "text", default, with = "::serde_with::rust::double_option", skip_serializing_if = "Option::is_none")]
    pub text: Option<Option<String>>,
    #[serde(rename = "source_name", default, with = "::serde_with::rust::double_option", skip_serializing_if = "Option::is_none")]
    pub source_name: Option<Option<String>>,
    #[serde(rename = "source_url", default, with = "::serde_with::rust::double_option", skip_serializing_if = "Option::is_none")]
    pub source_url: Option<Option<String>>,
}

impl RetrieveRecipeInformation200ResponseCredits {
    pub fn new() -> RetrieveRecipeInformation200ResponseCredits {
        RetrieveRecipeInformation200ResponseCredits {
            license: None,
            text: None,
            source_name: None,
            source_url: None,
        }
    }
}

