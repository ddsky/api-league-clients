package com.apileague.client.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;

@Canonical
class InlineResponse20018StyleSubscores {
    
    List<Integer> abbreviationScore = new ArrayList<Integer>()
    
    List<Integer> styleScore = new ArrayList<Integer>()
    
    List<Integer> spellingScore = new ArrayList<Integer>()
}
