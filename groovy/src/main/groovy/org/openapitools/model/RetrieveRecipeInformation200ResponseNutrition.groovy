package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.RetrieveRecipeInformation200ResponseNutritionCaloricBreakdown;
import org.openapitools.model.RetrieveRecipeInformation200ResponseNutritionFlavonoidsInner;
import org.openapitools.model.RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInner;
import org.openapitools.model.RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInnerNutrientsInner;
import org.openapitools.model.RetrieveRecipeInformation200ResponseNutritionWeightPerServing;
import org.openapitools.model.SearchRecipes200ResponseRecipesInnerNutritionNutrientsInner;

@Canonical
class RetrieveRecipeInformation200ResponseNutrition {
    
    RetrieveRecipeInformation200ResponseNutritionWeightPerServing weightPerServing
    
    RetrieveRecipeInformation200ResponseNutritionCaloricBreakdown caloricBreakdown
    
    List<RetrieveRecipeInformation200ResponseNutritionFlavonoidsInner> flavonoids = new ArrayList<>()
    
    List<RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInner> ingredientBreakdown = new ArrayList<>()
    
    List<SearchRecipes200ResponseRecipesInnerNutritionNutrientsInner> properties = new ArrayList<>()
    
    List<RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInnerNutrientsInner> nutrients = new ArrayList<>()
}
