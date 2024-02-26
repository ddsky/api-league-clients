package com.apileague.client.model;

import groovy.transform.Canonical
import com.apileague.client.model.InlineResponse20018InterestingnessSubscores;
import com.apileague.client.model.InlineResponse20018SkimmabilityMainscores;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class InlineResponse20018Interestingness {
    
    InlineResponse20018SkimmabilityMainscores mainscores
    
    InlineResponse20018InterestingnessSubscores subscores
}
