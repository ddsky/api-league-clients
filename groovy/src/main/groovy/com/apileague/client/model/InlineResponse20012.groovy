package com.apileague.client.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.jackson.nullable.JsonNullable;

@Canonical
class InlineResponse20012 {
    
    String title
    
    String mainText
    
    String mainHtml
    
    List<String> images = new ArrayList<String>()
}
