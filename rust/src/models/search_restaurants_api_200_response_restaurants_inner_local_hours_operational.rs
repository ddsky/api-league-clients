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
pub struct SearchRestaurantsApi200ResponseRestaurantsInnerLocalHoursOperational {
    #[serde(rename = "sunday", default, with = "::serde_with::rust::double_option", skip_serializing_if = "Option::is_none")]
    pub sunday: Option<Option<String>>,
    #[serde(rename = "saturday", default, with = "::serde_with::rust::double_option", skip_serializing_if = "Option::is_none")]
    pub saturday: Option<Option<String>>,
    #[serde(rename = "tuesday", default, with = "::serde_with::rust::double_option", skip_serializing_if = "Option::is_none")]
    pub tuesday: Option<Option<String>>,
    #[serde(rename = "thursday", default, with = "::serde_with::rust::double_option", skip_serializing_if = "Option::is_none")]
    pub thursday: Option<Option<String>>,
    #[serde(rename = "friday", default, with = "::serde_with::rust::double_option", skip_serializing_if = "Option::is_none")]
    pub friday: Option<Option<String>>,
    #[serde(rename = "wednesday", default, with = "::serde_with::rust::double_option", skip_serializing_if = "Option::is_none")]
    pub wednesday: Option<Option<String>>,
    #[serde(rename = "monday", default, with = "::serde_with::rust::double_option", skip_serializing_if = "Option::is_none")]
    pub monday: Option<Option<String>>,
}

impl SearchRestaurantsApi200ResponseRestaurantsInnerLocalHoursOperational {
    pub fn new() -> SearchRestaurantsApi200ResponseRestaurantsInnerLocalHoursOperational {
        SearchRestaurantsApi200ResponseRestaurantsInnerLocalHoursOperational {
            sunday: None,
            saturday: None,
            tuesday: None,
            thursday: None,
            friday: None,
            wednesday: None,
            monday: None,
        }
    }
}

