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
pub struct RetrieveRecipeInformation200ResponseInstructionsInner {
    #[serde(rename = "name", default, with = "::serde_with::rust::double_option", skip_serializing_if = "Option::is_none")]
    pub name: Option<Option<String>>,
    #[serde(rename = "steps", skip_serializing_if = "Option::is_none")]
    pub steps: Option<Vec<models::RetrieveRecipeInformation200ResponseInstructionsInnerStepsInner>>,
}

impl RetrieveRecipeInformation200ResponseInstructionsInner {
    pub fn new() -> RetrieveRecipeInformation200ResponseInstructionsInner {
        RetrieveRecipeInformation200ResponseInstructionsInner {
            name: None,
            steps: None,
        }
    }
}

