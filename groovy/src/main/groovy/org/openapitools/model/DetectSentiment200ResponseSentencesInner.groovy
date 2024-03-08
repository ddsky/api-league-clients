package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.jackson.nullable.JsonNullable;

@Canonical
class DetectSentiment200ResponseSentencesInner {
    
    Integer length
    
    String sentiment
    
    Integer offset
    
    Integer confidence
}
