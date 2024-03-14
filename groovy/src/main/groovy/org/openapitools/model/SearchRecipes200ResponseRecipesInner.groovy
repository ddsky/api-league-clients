package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.jackson.nullable.JsonNullable;
import org.openapitools.model.SearchRecipes200ResponseRecipesInnerNutrition;

@Canonical
class SearchRecipes200ResponseRecipesInner {
    
    List<String> images
    
    SearchRecipes200ResponseRecipesInnerNutrition nutrition
    
    Integer id
    
    String title
}
