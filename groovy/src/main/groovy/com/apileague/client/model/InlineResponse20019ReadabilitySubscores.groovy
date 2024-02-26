package com.apileague.client.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.math.BigDecimal;

@Canonical
class InlineResponse20019ReadabilitySubscores {
    
    Integer readingTimeSeconds
    
    BigDecimal forcast
    
    BigDecimal flesch
    
    BigDecimal smog
    
    BigDecimal ari
    
    BigDecimal lix
    
    BigDecimal colemanLiau
    
    BigDecimal kincaid
    
    BigDecimal fog
}
