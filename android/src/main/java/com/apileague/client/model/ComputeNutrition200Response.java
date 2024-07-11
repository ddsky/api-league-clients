/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.4.1
 * Contact: mail@apileague.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

package com.apileague.client.model;

import com.apileague.client.model.ComputeNutrition200ResponseIngredientBreakdownInner;
import com.apileague.client.model.RetrieveRecipeInformation200ResponseNutritionCaloricBreakdown;
import com.apileague.client.model.RetrieveRecipeInformation200ResponseNutritionFlavonoidsInner;
import com.apileague.client.model.RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInnerNutrientsInner;
import com.apileague.client.model.RetrieveRecipeInformation200ResponseNutritionWeightPerServing;
import com.apileague.client.model.SearchRecipes200ResponseRecipesInnerNutritionNutrientsInner;
import java.util.*;
import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;

@ApiModel(description = "")
public class ComputeNutrition200Response {
  
  @SerializedName("nutrients")
  private List<RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInnerNutrientsInner> nutrients = null;
  @SerializedName("properties")
  private List<RetrieveRecipeInformation200ResponseNutritionFlavonoidsInner> properties = null;
  @SerializedName("flavonoids")
  private List<SearchRecipes200ResponseRecipesInnerNutritionNutrientsInner> flavonoids = null;
  @SerializedName("ingredient_breakdown")
  private List<ComputeNutrition200ResponseIngredientBreakdownInner> ingredientBreakdown = null;
  @SerializedName("caloric_breakdown")
  private RetrieveRecipeInformation200ResponseNutritionCaloricBreakdown caloricBreakdown = null;
  @SerializedName("weight_per_serving")
  private RetrieveRecipeInformation200ResponseNutritionWeightPerServing weightPerServing = null;

  /**
   **/
  @ApiModelProperty(value = "")
  public List<RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInnerNutrientsInner> getNutrients() {
    return nutrients;
  }
  public void setNutrients(List<RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInnerNutrientsInner> nutrients) {
    this.nutrients = nutrients;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public List<RetrieveRecipeInformation200ResponseNutritionFlavonoidsInner> getProperties() {
    return properties;
  }
  public void setProperties(List<RetrieveRecipeInformation200ResponseNutritionFlavonoidsInner> properties) {
    this.properties = properties;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public List<SearchRecipes200ResponseRecipesInnerNutritionNutrientsInner> getFlavonoids() {
    return flavonoids;
  }
  public void setFlavonoids(List<SearchRecipes200ResponseRecipesInnerNutritionNutrientsInner> flavonoids) {
    this.flavonoids = flavonoids;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public List<ComputeNutrition200ResponseIngredientBreakdownInner> getIngredientBreakdown() {
    return ingredientBreakdown;
  }
  public void setIngredientBreakdown(List<ComputeNutrition200ResponseIngredientBreakdownInner> ingredientBreakdown) {
    this.ingredientBreakdown = ingredientBreakdown;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public RetrieveRecipeInformation200ResponseNutritionCaloricBreakdown getCaloricBreakdown() {
    return caloricBreakdown;
  }
  public void setCaloricBreakdown(RetrieveRecipeInformation200ResponseNutritionCaloricBreakdown caloricBreakdown) {
    this.caloricBreakdown = caloricBreakdown;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public RetrieveRecipeInformation200ResponseNutritionWeightPerServing getWeightPerServing() {
    return weightPerServing;
  }
  public void setWeightPerServing(RetrieveRecipeInformation200ResponseNutritionWeightPerServing weightPerServing) {
    this.weightPerServing = weightPerServing;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    ComputeNutrition200Response computeNutrition200Response = (ComputeNutrition200Response) o;
    return (this.nutrients == null ? computeNutrition200Response.nutrients == null : this.nutrients.equals(computeNutrition200Response.nutrients)) &&
        (this.properties == null ? computeNutrition200Response.properties == null : this.properties.equals(computeNutrition200Response.properties)) &&
        (this.flavonoids == null ? computeNutrition200Response.flavonoids == null : this.flavonoids.equals(computeNutrition200Response.flavonoids)) &&
        (this.ingredientBreakdown == null ? computeNutrition200Response.ingredientBreakdown == null : this.ingredientBreakdown.equals(computeNutrition200Response.ingredientBreakdown)) &&
        (this.caloricBreakdown == null ? computeNutrition200Response.caloricBreakdown == null : this.caloricBreakdown.equals(computeNutrition200Response.caloricBreakdown)) &&
        (this.weightPerServing == null ? computeNutrition200Response.weightPerServing == null : this.weightPerServing.equals(computeNutrition200Response.weightPerServing));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.nutrients == null ? 0: this.nutrients.hashCode());
    result = 31 * result + (this.properties == null ? 0: this.properties.hashCode());
    result = 31 * result + (this.flavonoids == null ? 0: this.flavonoids.hashCode());
    result = 31 * result + (this.ingredientBreakdown == null ? 0: this.ingredientBreakdown.hashCode());
    result = 31 * result + (this.caloricBreakdown == null ? 0: this.caloricBreakdown.hashCode());
    result = 31 * result + (this.weightPerServing == null ? 0: this.weightPerServing.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class ComputeNutrition200Response {\n");
    
    sb.append("  nutrients: ").append(nutrients).append("\n");
    sb.append("  properties: ").append(properties).append("\n");
    sb.append("  flavonoids: ").append(flavonoids).append("\n");
    sb.append("  ingredientBreakdown: ").append(ingredientBreakdown).append("\n");
    sb.append("  caloricBreakdown: ").append(caloricBreakdown).append("\n");
    sb.append("  weightPerServing: ").append(weightPerServing).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
