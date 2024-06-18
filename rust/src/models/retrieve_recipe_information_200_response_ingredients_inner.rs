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
pub struct RetrieveRecipeInformation200ResponseIngredientsInner {
    #[serde(rename = "image", default, with = "::serde_with::rust::double_option", skip_serializing_if = "Option::is_none")]
    pub image: Option<Option<String>>,
    #[serde(rename = "name_clean", default, with = "::serde_with::rust::double_option", skip_serializing_if = "Option::is_none")]
    pub name_clean: Option<Option<String>>,
    #[serde(rename = "amount", skip_serializing_if = "Option::is_none")]
    pub amount: Option<f64>,
    #[serde(rename = "unit", default, with = "::serde_with::rust::double_option", skip_serializing_if = "Option::is_none")]
    pub unit: Option<Option<String>>,
    #[serde(rename = "measures", skip_serializing_if = "Option::is_none")]
    pub measures: Option<Box<models::RetrieveRecipeInformation200ResponseIngredientsInnerMeasures>>,
    #[serde(rename = "original", default, with = "::serde_with::rust::double_option", skip_serializing_if = "Option::is_none")]
    pub original: Option<Option<String>>,
    #[serde(rename = "meta", skip_serializing_if = "Option::is_none")]
    pub meta: Option<Vec<String>>,
    #[serde(rename = "original_name", default, with = "::serde_with::rust::double_option", skip_serializing_if = "Option::is_none")]
    pub original_name: Option<Option<String>>,
    #[serde(rename = "name", default, with = "::serde_with::rust::double_option", skip_serializing_if = "Option::is_none")]
    pub name: Option<Option<String>>,
    #[serde(rename = "id", skip_serializing_if = "Option::is_none")]
    pub id: Option<i32>,
    #[serde(rename = "aisle", default, with = "::serde_with::rust::double_option", skip_serializing_if = "Option::is_none")]
    pub aisle: Option<Option<String>>,
    #[serde(rename = "consistency", default, with = "::serde_with::rust::double_option", skip_serializing_if = "Option::is_none")]
    pub consistency: Option<Option<String>>,
}

impl RetrieveRecipeInformation200ResponseIngredientsInner {
    pub fn new() -> RetrieveRecipeInformation200ResponseIngredientsInner {
        RetrieveRecipeInformation200ResponseIngredientsInner {
            image: None,
            name_clean: None,
            amount: None,
            unit: None,
            measures: None,
            original: None,
            meta: None,
            original_name: None,
            name: None,
            id: None,
            aisle: None,
            consistency: None,
        }
    }
}

