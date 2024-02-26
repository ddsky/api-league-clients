package com.apileague.client.model;

import groovy.transform.Canonical
import com.apileague.client.model.InlineResponse20028License;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.jackson.nullable.JsonNullable;

@Canonical
class InlineResponse20028Images {
    
    Integer width
    
    InlineResponse20028License license
    
    String thumbnail
    
    String id
    
    String url
    
    Integer height
}
