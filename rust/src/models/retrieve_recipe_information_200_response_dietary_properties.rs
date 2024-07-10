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
pub struct RetrieveRecipeInformation200ResponseDietaryProperties {
    #[serde(rename = "low_fodmap", skip_serializing_if = "Option::is_none")]
    pub low_fodmap: Option<bool>,
    #[serde(rename = "vegetarian", skip_serializing_if = "Option::is_none")]
    pub vegetarian: Option<bool>,
    #[serde(rename = "vegan", skip_serializing_if = "Option::is_none")]
    pub vegan: Option<bool>,
    #[serde(rename = "gluten_free", skip_serializing_if = "Option::is_none")]
    pub gluten_free: Option<bool>,
    #[serde(rename = "dairy_free", skip_serializing_if = "Option::is_none")]
    pub dairy_free: Option<bool>,
    #[serde(rename = "gaps", default, with = "::serde_with::rust::double_option", skip_serializing_if = "Option::is_none")]
    pub gaps: Option<Option<String>>,
    #[serde(rename = "diets", skip_serializing_if = "Option::is_none")]
    pub diets: Option<Vec<String>>,
}

impl RetrieveRecipeInformation200ResponseDietaryProperties {
    pub fn new() -> RetrieveRecipeInformation200ResponseDietaryProperties {
        RetrieveRecipeInformation200ResponseDietaryProperties {
            low_fodmap: None,
            vegetarian: None,
            vegan: None,
            gluten_free: None,
            dairy_free: None,
            gaps: None,
            diets: None,
        }
    }
}

