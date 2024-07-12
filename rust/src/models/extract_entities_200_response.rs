/*
 * API League
 *
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.4.2
 * Contact: mail@apileague.com
 * Generated by: https://openapi-generator.tech
 */

use crate::models;

#[derive(Clone, Default, Debug, PartialEq, Serialize, Deserialize)]
pub struct ExtractEntities200Response {
    #[serde(rename = "entities", skip_serializing_if = "Option::is_none")]
    pub entities: Option<Vec<models::ExtractEntities200ResponseEntitiesInner>>,
}

impl ExtractEntities200Response {
    pub fn new() -> ExtractEntities200Response {
        ExtractEntities200Response {
            entities: None,
        }
    }
}

