package com.apileague.client.model;

import groovy.transform.Canonical
import com.apileague.client.model.InlineResponse2004Jokes;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;

@Canonical
class InlineResponse2004 {
    
    List<InlineResponse2004Jokes> jokes = new ArrayList<InlineResponse2004Jokes>()
    
    Integer available
}
