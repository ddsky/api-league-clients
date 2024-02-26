package com.apileague.client.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.math.BigDecimal;
import org.openapitools.jackson.nullable.JsonNullable;

@Canonical
class InlineResponse2006 {
    
    String description
    
    String url
    
    String type
    
    Integer width
    
    Integer height
    
    BigDecimal ratio
}
