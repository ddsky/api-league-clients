package com.apileague.client.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.jackson.nullable.JsonNullable;

@Canonical
class InlineResponse2002News {
    
    String summary
    
    String image
    
    BigDecimal sentiment
    
    String sourceCountry
    
    String language
    
    Integer id
    
    String text
    
    String title
    
    String publishDate
    
    String url
    
    List<String> authors = new ArrayList<String>()
}
