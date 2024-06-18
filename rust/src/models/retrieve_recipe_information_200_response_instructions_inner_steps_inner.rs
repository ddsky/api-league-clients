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
pub struct RetrieveRecipeInformation200ResponseInstructionsInnerStepsInner {
    #[serde(rename = "number", skip_serializing_if = "Option::is_none")]
    pub number: Option<i32>,
    #[serde(rename = "ingredients", skip_serializing_if = "Option::is_none")]
    pub ingredients: Option<Vec<models::RetrieveRecipeInformation200ResponseInstructionsInnerStepsInnerIngredientsInner>>,
    #[serde(rename = "equipment", skip_serializing_if = "Option::is_none")]
    pub equipment: Option<Vec<models::RetrieveRecipeInformation200ResponseInstructionsInnerStepsInnerIngredientsInner>>,
    #[serde(rename = "step", default, with = "::serde_with::rust::double_option", skip_serializing_if = "Option::is_none")]
    pub step: Option<Option<String>>,
}

impl RetrieveRecipeInformation200ResponseInstructionsInnerStepsInner {
    pub fn new() -> RetrieveRecipeInformation200ResponseInstructionsInnerStepsInner {
        RetrieveRecipeInformation200ResponseInstructionsInnerStepsInner {
            number: None,
            ingredients: None,
            equipment: None,
            step: None,
        }
    }
}

