package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.jackson.nullable.JsonNullable;

@Canonical
class RetrieveRecipeInformation200ResponseDietaryProperties {
    
    Boolean lowFodmap
    
    Boolean vegetarian
    
    Boolean vegan
    
    Boolean glutenFree
    
    Boolean dairyFree
    
    String gaps
    
    List<String> diets = new ArrayList<>()
}
