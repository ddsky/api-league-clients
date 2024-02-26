package com.apileague.client.model;

import groovy.transform.Canonical
import com.apileague.client.model.InlineResponse20019Interestingness;
import com.apileague.client.model.InlineResponse20019Readability;
import com.apileague.client.model.InlineResponse20019Skimmability;
import com.apileague.client.model.InlineResponse20019Style;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.math.BigDecimal;

@Canonical
class InlineResponse20019 {
    
    Integer numberOfWords
    
    Integer numberOfSentences
    
    InlineResponse20019Readability readability
    
    InlineResponse20019Skimmability skimmability
    
    InlineResponse20019Interestingness interestingness
    
    InlineResponse20019Style style
    
    BigDecimal totalScore
}
