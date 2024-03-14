package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.math.BigDecimal;
import org.openapitools.jackson.nullable.JsonNullable;

@Canonical
class SearchRestaurants200ResponseRestaurantsInnerAddress {
    
    String zipcode
    
    String country
    
    String city
    
    BigDecimal latitude
    
    BigDecimal lon
    
    String streetAddr2
    
    String state
    
    String streetAddr
    
    BigDecimal lat
    
    BigDecimal longitude
}
