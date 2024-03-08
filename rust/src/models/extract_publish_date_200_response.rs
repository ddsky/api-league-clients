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
pub struct ExtractPublishDate200Response {
    #[serde(rename = "publish_date", default, with = "::serde_with::rust::double_option", skip_serializing_if = "Option::is_none")]
    pub publish_date: Option<Option<String>>,
}

impl ExtractPublishDate200Response {
    pub fn new() -> ExtractPublishDate200Response {
        ExtractPublishDate200Response {
            publish_date: None,
        }
    }
}

