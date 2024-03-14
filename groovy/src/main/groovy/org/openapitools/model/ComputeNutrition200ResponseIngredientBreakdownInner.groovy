package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.jackson.nullable.JsonNullable;
import org.openapitools.model.ComputeNutrition200ResponseIngredientBreakdownInnerNutrientsInner;

@Canonical
class ComputeNutrition200ResponseIngredientBreakdownInner {
    
    String name
    
    Integer amount
    
    String unit
    
    Integer id
    
    List<ComputeNutrition200ResponseIngredientBreakdownInnerNutrientsInner> nutrients
}
