/*
 * API League
 *
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.6.2
 * Contact: mail@apileague.com
 * Generated by: https://openapi-generator.tech
 */

use crate::models;
use serde::{Deserialize, Serialize};

#[derive(Clone, Default, Debug, PartialEq, Serialize, Deserialize)]
pub struct ExtractEntities200ResponseEntitiesInner {
    #[serde(rename = "start_position", skip_serializing_if = "Option::is_none")]
    pub start_position: Option<i32>,
    #[serde(rename = "image", default, with = "::serde_with::rust::double_option", skip_serializing_if = "Option::is_none")]
    pub image: Option<Option<String>>,
    #[serde(rename = "type", default, with = "::serde_with::rust::double_option", skip_serializing_if = "Option::is_none")]
    pub r#type: Option<Option<String>>,
    #[serde(rename = "value", default, with = "::serde_with::rust::double_option", skip_serializing_if = "Option::is_none")]
    pub value: Option<Option<String>>,
    #[serde(rename = "end_position", skip_serializing_if = "Option::is_none")]
    pub end_position: Option<i32>,
}

impl ExtractEntities200ResponseEntitiesInner {
    pub fn new() -> ExtractEntities200ResponseEntitiesInner {
        ExtractEntities200ResponseEntitiesInner {
            start_position: None,
            image: None,
            r#type: None,
            value: None,
            end_position: None,
        }
    }
}

