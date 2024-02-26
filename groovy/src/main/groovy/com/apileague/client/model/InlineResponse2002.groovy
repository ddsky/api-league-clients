package com.apileague.client.model;

import groovy.transform.Canonical
import com.apileague.client.model.InlineResponse2002News;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;

@Canonical
class InlineResponse2002 {
    
    Integer offset
    
    Integer number
    
    Integer available
    
    List<InlineResponse2002News> news = new ArrayList<InlineResponse2002News>()
}
