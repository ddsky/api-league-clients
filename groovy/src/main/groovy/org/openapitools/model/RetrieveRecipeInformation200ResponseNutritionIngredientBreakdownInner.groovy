package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.jackson.nullable.JsonNullable;
import org.openapitools.model.RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInnerNutrientsInner;

@Canonical
class RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInner {
    
    String name
    
    BigDecimal amount
    
    String unit
    
    Integer id
    
    List<RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInnerNutrientsInner> nutrients
}
