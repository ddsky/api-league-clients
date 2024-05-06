package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.jackson.nullable.JsonNullable;
import org.openapitools.model.RetrieveRecipeInformation200ResponseInstructionsInnerStepsInnerIngredientsInner;

@Canonical
class RetrieveRecipeInformation200ResponseInstructionsInnerStepsInner {
    
    Integer number
    
    List<RetrieveRecipeInformation200ResponseInstructionsInnerStepsInnerIngredientsInner> ingredients = new ArrayList<>()
    
    List<RetrieveRecipeInformation200ResponseInstructionsInnerStepsInnerIngredientsInner> equipment = new ArrayList<>()
    
    String step
}
