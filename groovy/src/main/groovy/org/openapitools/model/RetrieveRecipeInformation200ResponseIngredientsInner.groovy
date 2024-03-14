package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.jackson.nullable.JsonNullable;
import org.openapitools.model.RetrieveRecipeInformation200ResponseIngredientsInnerMeasures;

@Canonical
class RetrieveRecipeInformation200ResponseIngredientsInner {
    
    String image
    
    String nameClean
    
    BigDecimal amount
    
    String unit
    
    RetrieveRecipeInformation200ResponseIngredientsInnerMeasures measures
    
    String original
    
    List<String> meta
    
    String originalName
    
    String name
    
    Integer id
    
    String aisle
    
    String consistency
}
