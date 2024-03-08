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
pub struct RandomMeme200Response {
    #[serde(rename = "description", default, with = "::serde_with::rust::double_option", skip_serializing_if = "Option::is_none")]
    pub description: Option<Option<String>>,
    #[serde(rename = "url", default, with = "::serde_with::rust::double_option", skip_serializing_if = "Option::is_none")]
    pub url: Option<Option<String>>,
    #[serde(rename = "type", default, with = "::serde_with::rust::double_option", skip_serializing_if = "Option::is_none")]
    pub r#type: Option<Option<String>>,
    #[serde(rename = "width", skip_serializing_if = "Option::is_none")]
    pub width: Option<i32>,
    #[serde(rename = "height", skip_serializing_if = "Option::is_none")]
    pub height: Option<i32>,
    #[serde(rename = "ratio", skip_serializing_if = "Option::is_none")]
    pub ratio: Option<f32>,
}

impl RandomMeme200Response {
    pub fn new() -> RandomMeme200Response {
        RandomMeme200Response {
            description: None,
            url: None,
            r#type: None,
            width: None,
            height: None,
            ratio: None,
        }
    }
}


