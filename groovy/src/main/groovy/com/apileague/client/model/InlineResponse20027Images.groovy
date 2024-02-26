package com.apileague.client.model;

import groovy.transform.Canonical
import com.apileague.client.model.InlineResponse20027License;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.jackson.nullable.JsonNullable;

@Canonical
class InlineResponse20027Images {
    
    Integer width
    
    InlineResponse20027License license
    
    String thumbnail
    
    String id
    
    String url
    
    Integer height
}
