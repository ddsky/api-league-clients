package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.jackson.nullable.JsonNullable;

@Canonical
class DetectSentiment200ResponseDocument {
    
    String sentiment
    
    Integer confidence
    
    Integer averageConfidence
}
