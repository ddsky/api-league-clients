package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.jackson.nullable.JsonNullable;
import org.openapitools.model.SearchRestaurants200ResponseRestaurantsInnerAddress;
import org.openapitools.model.SearchRestaurants200ResponseRestaurantsInnerLocalHours;

@Canonical
class SearchRestaurants200ResponseRestaurantsInner {
    
    Boolean offersThirdPartyDelivery
    
    SearchRestaurants200ResponseRestaurantsInnerAddress address
    
    Boolean supportsUpcCodes
    
    Boolean isOpen
    
    String description
    
    Integer weightedRatingValue
    
    String type
    
    Boolean offersFirstPartyDelivery
    
    Integer aggregatedRatingCount
    
    Boolean pickupEnabled
    
    List<String> cuisines
    
    BigDecimal miles
    
    Integer dollarSigns
    
    Boolean deliveryEnabled
    
    String name
    
    BigDecimal phoneNumber
    
    String id
    
    SearchRestaurants200ResponseRestaurantsInnerLocalHours localHours
}
