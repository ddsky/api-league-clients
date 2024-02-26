package com.apileague.client.model;

import groovy.transform.Canonical
import com.apileague.client.model.InlineResponse20019InterestingnessSubscores;
import com.apileague.client.model.InlineResponse20019SkimmabilityMainscores;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class InlineResponse20019Interestingness {
    
    InlineResponse20019SkimmabilityMainscores mainscores
    
    InlineResponse20019InterestingnessSubscores subscores
}
