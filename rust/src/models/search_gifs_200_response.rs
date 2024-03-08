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
pub struct SearchGifs200Response {
    #[serde(rename = "images", skip_serializing_if = "Option::is_none")]
    pub images: Option<Vec<crate::models::SearchGifs200ResponseImagesInner>>,
}

impl SearchGifs200Response {
    pub fn new() -> SearchGifs200Response {
        SearchGifs200Response {
            images: None,
        }
    }
}


