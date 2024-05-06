package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.ComputeNutrition200ResponseIngredientBreakdownInner;
import org.openapitools.model.RetrieveRecipeInformation200ResponseNutritionCaloricBreakdown;
import org.openapitools.model.RetrieveRecipeInformation200ResponseNutritionFlavonoidsInner;
import org.openapitools.model.RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInnerNutrientsInner;
import org.openapitools.model.RetrieveRecipeInformation200ResponseNutritionWeightPerServing;
import org.openapitools.model.SearchRecipes200ResponseRecipesInnerNutritionNutrientsInner;

@Canonical
class ComputeNutrition200Response {
    
    List<RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInnerNutrientsInner> nutrients = new ArrayList<>()
    
    List<RetrieveRecipeInformation200ResponseNutritionFlavonoidsInner> properties = new ArrayList<>()
    
    List<SearchRecipes200ResponseRecipesInnerNutritionNutrientsInner> flavonoids = new ArrayList<>()
    
    List<ComputeNutrition200ResponseIngredientBreakdownInner> ingredientBreakdown = new ArrayList<>()
    
    RetrieveRecipeInformation200ResponseNutritionCaloricBreakdown caloricBreakdown
    
    RetrieveRecipeInformation200ResponseNutritionWeightPerServing weightPerServing
}
