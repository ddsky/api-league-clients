package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.SearchRecipes200ResponseRecipesInner;

@Canonical
class SearchRecipes200Response {
    
    Integer offset
    
    Integer number
    
    List<SearchRecipes200ResponseRecipesInner> recipes
    
    Integer totalResults
}
