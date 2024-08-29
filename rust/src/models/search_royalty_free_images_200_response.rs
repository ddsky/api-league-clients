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
pub struct SearchRoyaltyFreeImages200Response {
    #[serde(rename = "images", skip_serializing_if = "Option::is_none")]
    pub images: Option<Vec<models::SearchRoyaltyFreeImages200ResponseImagesInner>>,
}

impl SearchRoyaltyFreeImages200Response {
    pub fn new() -> SearchRoyaltyFreeImages200Response {
        SearchRoyaltyFreeImages200Response {
            images: None,
        }
    }
}

