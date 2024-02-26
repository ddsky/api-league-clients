package com.apileague.client.model;

import groovy.transform.Canonical
import com.apileague.client.model.ModelNull;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.jackson.nullable.JsonNullable;

@Canonical
class InlineResponse20020Dates {
    
    Integer startPosition
    
    String date
    
    ModelNull normalizedDate = null
    
    String tag
    
    Integer endPosition
}
