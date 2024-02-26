package com.apileague.client.model;

import groovy.transform.Canonical
import com.apileague.client.model.InlineResponse200Books;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;

@Canonical
class InlineResponse200 {
    
    Integer available
    
    Integer number
    
    Integer offset
    
    List<InlineResponse200Books> books = new ArrayList<InlineResponse200Books>()
}
