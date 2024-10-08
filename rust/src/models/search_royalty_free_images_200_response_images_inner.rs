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
pub struct SearchRoyaltyFreeImages200ResponseImagesInner {
    #[serde(rename = "width", skip_serializing_if = "Option::is_none")]
    pub width: Option<i32>,
    #[serde(rename = "license", skip_serializing_if = "Option::is_none")]
    pub license: Option<Box<models::SearchRoyaltyFreeImages200ResponseImagesInnerLicense>>,
    #[serde(rename = "thumbnail", default, with = "::serde_with::rust::double_option", skip_serializing_if = "Option::is_none")]
    pub thumbnail: Option<Option<String>>,
    #[serde(rename = "id", default, with = "::serde_with::rust::double_option", skip_serializing_if = "Option::is_none")]
    pub id: Option<Option<String>>,
    #[serde(rename = "url", default, with = "::serde_with::rust::double_option", skip_serializing_if = "Option::is_none")]
    pub url: Option<Option<String>>,
    #[serde(rename = "height", skip_serializing_if = "Option::is_none")]
    pub height: Option<i32>,
}

impl SearchRoyaltyFreeImages200ResponseImagesInner {
    pub fn new() -> SearchRoyaltyFreeImages200ResponseImagesInner {
        SearchRoyaltyFreeImages200ResponseImagesInner {
            width: None,
            license: None,
            thumbnail: None,
            id: None,
            url: None,
            height: None,
        }
    }
}

