package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.jackson.nullable.JsonNullable;
import org.openapitools.model.SearchRoyaltyFreeImages200ResponseImagesInnerLicense;

@Canonical
class SearchRoyaltyFreeImages200ResponseImagesInner {
    
    Integer width
    
    SearchRoyaltyFreeImages200ResponseImagesInnerLicense license
    
    String thumbnail
    
    String id
    
    String url
    
    Integer height
}
