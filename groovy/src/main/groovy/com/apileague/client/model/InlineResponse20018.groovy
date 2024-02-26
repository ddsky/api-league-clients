package com.apileague.client.model;

import groovy.transform.Canonical
import com.apileague.client.model.InlineResponse20018Document;
import com.apileague.client.model.InlineResponse20018Sentences;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;

@Canonical
class InlineResponse20018 {
    
    InlineResponse20018Document document
    
    List<InlineResponse20018Sentences> sentences = new ArrayList<InlineResponse20018Sentences>()
}
