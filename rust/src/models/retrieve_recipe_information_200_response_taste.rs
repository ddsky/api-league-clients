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
pub struct RetrieveRecipeInformation200ResponseTaste {
    #[serde(rename = "fattiness", skip_serializing_if = "Option::is_none")]
    pub fattiness: Option<f32>,
    #[serde(rename = "spiciness", skip_serializing_if = "Option::is_none")]
    pub spiciness: Option<i32>,
    #[serde(rename = "saltiness", skip_serializing_if = "Option::is_none")]
    pub saltiness: Option<i32>,
    #[serde(rename = "bitterness", skip_serializing_if = "Option::is_none")]
    pub bitterness: Option<f32>,
    #[serde(rename = "savoriness", skip_serializing_if = "Option::is_none")]
    pub savoriness: Option<f32>,
    #[serde(rename = "sweetness", skip_serializing_if = "Option::is_none")]
    pub sweetness: Option<f32>,
    #[serde(rename = "sourness", skip_serializing_if = "Option::is_none")]
    pub sourness: Option<f32>,
}

impl RetrieveRecipeInformation200ResponseTaste {
    pub fn new() -> RetrieveRecipeInformation200ResponseTaste {
        RetrieveRecipeInformation200ResponseTaste {
            fattiness: None,
            spiciness: None,
            saltiness: None,
            bitterness: None,
            savoriness: None,
            sweetness: None,
            sourness: None,
        }
    }
}

