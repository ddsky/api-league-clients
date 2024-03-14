package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.jackson.nullable.JsonNullable;

@Canonical
class ComputeNutrition200ResponseIngredientBreakdownInnerNutrientsInner {
    
    String name
    
    Integer percentOfDailyNeeds
    
    Integer amount
    
    String unit
}
