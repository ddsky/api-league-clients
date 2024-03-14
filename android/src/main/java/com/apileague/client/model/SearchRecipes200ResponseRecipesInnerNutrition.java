/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.0
 * Contact: mail@apileague.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

package com.apileague.client.model;

import com.apileague.client.model.SearchRecipes200ResponseRecipesInnerNutritionNutrientsInner;
import java.util.*;
import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;

@ApiModel(description = "")
public class SearchRecipes200ResponseRecipesInnerNutrition {
  
  @SerializedName("nutrients")
  private List<SearchRecipes200ResponseRecipesInnerNutritionNutrientsInner> nutrients = null;

  /**
   **/
  @ApiModelProperty(value = "")
  public List<SearchRecipes200ResponseRecipesInnerNutritionNutrientsInner> getNutrients() {
    return nutrients;
  }
  public void setNutrients(List<SearchRecipes200ResponseRecipesInnerNutritionNutrientsInner> nutrients) {
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
    SearchRecipes200ResponseRecipesInnerNutrition searchRecipes200ResponseRecipesInnerNutrition = (SearchRecipes200ResponseRecipesInnerNutrition) o;
    return (this.nutrients == null ? searchRecipes200ResponseRecipesInnerNutrition.nutrients == null : this.nutrients.equals(searchRecipes200ResponseRecipesInnerNutrition.nutrients));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.nutrients == null ? 0: this.nutrients.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class SearchRecipes200ResponseRecipesInnerNutrition {\n");
    
    sb.append("  nutrients: ").append(nutrients).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
