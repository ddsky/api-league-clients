package com.apileague.client.model;

import groovy.transform.Canonical
import com.apileague.client.model.InlineResponse20018ReadabilityMainscores;
import com.apileague.client.model.InlineResponse20018StyleSubscores;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class InlineResponse20018Style {
    
    InlineResponse20018ReadabilityMainscores mainscores
    
    InlineResponse20018StyleSubscores subscores
}
