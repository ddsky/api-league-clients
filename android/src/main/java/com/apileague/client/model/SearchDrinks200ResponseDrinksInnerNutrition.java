/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.5.0
 * Contact: mail@apileague.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

package com.apileague.client.model;

import com.apileague.client.model.SearchDrinks200ResponseDrinksInnerNutritionCaloricBreakdown;
import com.apileague.client.model.SearchDrinks200ResponseDrinksInnerNutritionFlavonoidsInner;
import com.apileague.client.model.SearchDrinks200ResponseDrinksInnerNutritionIngredientBreakdownInner;
import com.apileague.client.model.SearchDrinks200ResponseDrinksInnerNutritionNutrientsInner;
import com.apileague.client.model.SearchDrinks200ResponseDrinksInnerNutritionWeightPerServing;
import java.util.*;
import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;

@ApiModel(description = "")
public class SearchDrinks200ResponseDrinksInnerNutrition {
  
  @SerializedName("weight_per_serving")
  private SearchDrinks200ResponseDrinksInnerNutritionWeightPerServing weightPerServing = null;
  @SerializedName("caloric_breakdown")
  private SearchDrinks200ResponseDrinksInnerNutritionCaloricBreakdown caloricBreakdown = null;
  @SerializedName("flavonoids")
  private List<SearchDrinks200ResponseDrinksInnerNutritionFlavonoidsInner> flavonoids = null;
  @SerializedName("ingredient_breakdown")
  private List<SearchDrinks200ResponseDrinksInnerNutritionIngredientBreakdownInner> ingredientBreakdown = null;
  @SerializedName("properties")
  private List<SearchDrinks200ResponseDrinksInnerNutritionFlavonoidsInner> properties = null;
  @SerializedName("nutrients")
  private List<SearchDrinks200ResponseDrinksInnerNutritionNutrientsInner> nutrients = null;

  /**
   **/
  @ApiModelProperty(value = "")
  public SearchDrinks200ResponseDrinksInnerNutritionWeightPerServing getWeightPerServing() {
    return weightPerServing;
  }
  public void setWeightPerServing(SearchDrinks200ResponseDrinksInnerNutritionWeightPerServing weightPerServing) {
    this.weightPerServing = weightPerServing;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public SearchDrinks200ResponseDrinksInnerNutritionCaloricBreakdown getCaloricBreakdown() {
    return caloricBreakdown;
  }
  public void setCaloricBreakdown(SearchDrinks200ResponseDrinksInnerNutritionCaloricBreakdown caloricBreakdown) {
    this.caloricBreakdown = caloricBreakdown;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public List<SearchDrinks200ResponseDrinksInnerNutritionFlavonoidsInner> getFlavonoids() {
    return flavonoids;
  }
  public void setFlavonoids(List<SearchDrinks200ResponseDrinksInnerNutritionFlavonoidsInner> flavonoids) {
    this.flavonoids = flavonoids;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public List<SearchDrinks200ResponseDrinksInnerNutritionIngredientBreakdownInner> getIngredientBreakdown() {
    return ingredientBreakdown;
  }
  public void setIngredientBreakdown(List<SearchDrinks200ResponseDrinksInnerNutritionIngredientBreakdownInner> ingredientBreakdown) {
    this.ingredientBreakdown = ingredientBreakdown;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public List<SearchDrinks200ResponseDrinksInnerNutritionFlavonoidsInner> getProperties() {
    return properties;
  }
  public void setProperties(List<SearchDrinks200ResponseDrinksInnerNutritionFlavonoidsInner> properties) {
    this.properties = properties;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public List<SearchDrinks200ResponseDrinksInnerNutritionNutrientsInner> getNutrients() {
    return nutrients;
  }
  public void setNutrients(List<SearchDrinks200ResponseDrinksInnerNutritionNutrientsInner> nutrients) {
    this.nutrients = nutrients;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    SearchDrinks200ResponseDrinksInnerNutrition searchDrinks200ResponseDrinksInnerNutrition = (SearchDrinks200ResponseDrinksInnerNutrition) o;
    return (this.weightPerServing == null ? searchDrinks200ResponseDrinksInnerNutrition.weightPerServing == null : this.weightPerServing.equals(searchDrinks200ResponseDrinksInnerNutrition.weightPerServing)) &&
        (this.caloricBreakdown == null ? searchDrinks200ResponseDrinksInnerNutrition.caloricBreakdown == null : this.caloricBreakdown.equals(searchDrinks200ResponseDrinksInnerNutrition.caloricBreakdown)) &&
        (this.flavonoids == null ? searchDrinks200ResponseDrinksInnerNutrition.flavonoids == null : this.flavonoids.equals(searchDrinks200ResponseDrinksInnerNutrition.flavonoids)) &&
        (this.ingredientBreakdown == null ? searchDrinks200ResponseDrinksInnerNutrition.ingredientBreakdown == null : this.ingredientBreakdown.equals(searchDrinks200ResponseDrinksInnerNutrition.ingredientBreakdown)) &&
        (this.properties == null ? searchDrinks200ResponseDrinksInnerNutrition.properties == null : this.properties.equals(searchDrinks200ResponseDrinksInnerNutrition.properties)) &&
        (this.nutrients == null ? searchDrinks200ResponseDrinksInnerNutrition.nutrients == null : this.nutrients.equals(searchDrinks200ResponseDrinksInnerNutrition.nutrients));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.weightPerServing == null ? 0: this.weightPerServing.hashCode());
    result = 31 * result + (this.caloricBreakdown == null ? 0: this.caloricBreakdown.hashCode());
    result = 31 * result + (this.flavonoids == null ? 0: this.flavonoids.hashCode());
    result = 31 * result + (this.ingredientBreakdown == null ? 0: this.ingredientBreakdown.hashCode());
    result = 31 * result + (this.properties == null ? 0: this.properties.hashCode());
    result = 31 * result + (this.nutrients == null ? 0: this.nutrients.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class SearchDrinks200ResponseDrinksInnerNutrition {\n");
    
    sb.append("  weightPerServing: ").append(weightPerServing).append("\n");
    sb.append("  caloricBreakdown: ").append(caloricBreakdown).append("\n");
    sb.append("  flavonoids: ").append(flavonoids).append("\n");
    sb.append("  ingredientBreakdown: ").append(ingredientBreakdown).append("\n");
    sb.append("  properties: ").append(properties).append("\n");
    sb.append("  nutrients: ").append(nutrients).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}