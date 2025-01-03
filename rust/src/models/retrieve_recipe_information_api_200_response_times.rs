/*
 * API League
 *
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.6.4
 * Contact: mail@apileague.com
 * Generated by: https://openapi-generator.tech
 */

use crate::models;
use serde::{Deserialize, Serialize};

#[derive(Clone, Default, Debug, PartialEq, Serialize, Deserialize)]
pub struct RetrieveRecipeInformationApi200ResponseTimes {
    #[serde(rename = "total_minutes", skip_serializing_if = "Option::is_none")]
    pub total_minutes: Option<i32>,
}

impl RetrieveRecipeInformationApi200ResponseTimes {
    pub fn new() -> RetrieveRecipeInformationApi200ResponseTimes {
        RetrieveRecipeInformationApi200ResponseTimes {
            total_minutes: None,
        }
    }
}

