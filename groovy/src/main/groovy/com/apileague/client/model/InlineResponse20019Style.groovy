package com.apileague.client.model;

import groovy.transform.Canonical
import com.apileague.client.model.InlineResponse20019ReadabilityMainscores;
import com.apileague.client.model.InlineResponse20019StyleSubscores;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class InlineResponse20019Style {
    
    InlineResponse20019ReadabilityMainscores mainscores
    
    InlineResponse20019StyleSubscores subscores
}
