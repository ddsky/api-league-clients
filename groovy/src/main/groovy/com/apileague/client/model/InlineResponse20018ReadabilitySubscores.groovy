package com.apileague.client.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.math.BigDecimal;

@Canonical
class InlineResponse20018ReadabilitySubscores {
    
    Integer readingTimeSeconds
    
    Integer forcast
    
    BigDecimal flesch
    
    BigDecimal smog
    
    BigDecimal ari
    
    Integer lix
    
    BigDecimal colemanLiau
    
    BigDecimal kincaid
    
    BigDecimal fog
}
