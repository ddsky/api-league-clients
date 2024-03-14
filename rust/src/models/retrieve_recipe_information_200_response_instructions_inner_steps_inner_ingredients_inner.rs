/*
 * API League
 *
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.0
 * Contact: mail@apileague.com
 * Generated by: https://openapi-generator.tech
 */




#[derive(Clone, Debug, PartialEq, Serialize, Deserialize)]
pub struct RetrieveRecipeInformation200ResponseInstructionsInnerStepsInnerIngredientsInner {
    #[serde(rename = "name", default, with = "::serde_with::rust::double_option", skip_serializing_if = "Option::is_none")]
    pub name: Option<Option<String>>,
    #[serde(rename = "image", default, with = "::serde_with::rust::double_option", skip_serializing_if = "Option::is_none")]
    pub image: Option<Option<String>>,
    #[serde(rename = "id", skip_serializing_if = "Option::is_none")]
    pub id: Option<i32>,
}

impl RetrieveRecipeInformation200ResponseInstructionsInnerStepsInnerIngredientsInner {
    pub fn new() -> RetrieveRecipeInformation200ResponseInstructionsInnerStepsInnerIngredientsInner {
        RetrieveRecipeInformation200ResponseInstructionsInnerStepsInnerIngredientsInner {
            name: None,
            image: None,
            id: None,
        }
    }
}


