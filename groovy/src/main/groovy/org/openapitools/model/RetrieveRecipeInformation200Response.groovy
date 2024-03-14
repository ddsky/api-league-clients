package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.jackson.nullable.JsonNullable;
import org.openapitools.model.RetrieveRecipeInformation200ResponseCredits;
import org.openapitools.model.RetrieveRecipeInformation200ResponseDietaryProperties;
import org.openapitools.model.RetrieveRecipeInformation200ResponseIngredientsInner;
import org.openapitools.model.RetrieveRecipeInformation200ResponseInstructionsInner;
import org.openapitools.model.RetrieveRecipeInformation200ResponseNutrition;
import org.openapitools.model.RetrieveRecipeInformation200ResponseScores;
import org.openapitools.model.RetrieveRecipeInformation200ResponseTaste;
import org.openapitools.model.RetrieveRecipeInformation200ResponseTimes;

@Canonical
class RetrieveRecipeInformation200Response {
    
    Integer id
    
    String title
    
    Integer servings
    
    List<String> images
    
    RetrieveRecipeInformation200ResponseDietaryProperties dietaryProperties
    
    BigDecimal pricePerServing
    
    RetrieveRecipeInformation200ResponseTimes times
    
    RetrieveRecipeInformation200ResponseNutrition nutrition
    
    RetrieveRecipeInformation200ResponseTaste taste
    
    List<String> cuisines
    
    List<String> mealTypes
    
    List<String> occasions
    
    List<RetrieveRecipeInformation200ResponseIngredientsInner> ingredients
    
    List<RetrieveRecipeInformation200ResponseInstructionsInner> instructions
    
    RetrieveRecipeInformation200ResponseCredits credits
    
    RetrieveRecipeInformation200ResponseScores scores
}
