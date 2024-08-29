/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.6.3
 * Contact: mail@apileague.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

package com.apileague.client.model;

import com.apileague.client.model.SearchDrinks200ResponseDrinksInnerNutritionIngredientBreakdownInnerNutrientsInner;
import java.util.*;
import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;

@ApiModel(description = "")
public class SearchDrinks200ResponseDrinksInnerNutritionIngredientBreakdownInner {
  
  @SerializedName("name")
  private String name = null;
  @SerializedName("amount")
  private Integer amount = null;
  @SerializedName("unit")
  private String unit = null;
  @SerializedName("id")
  private Integer id = null;
  @SerializedName("nutrients")
  private List<SearchDrinks200ResponseDrinksInnerNutritionIngredientBreakdownInnerNutrientsInner> nutrients = null;

  /**
   **/
  @ApiModelProperty(value = "")
  public String getName() {
    return name;
  }
  public void setName(String name) {
    this.name = name;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public Integer getAmount() {
    return amount;
  }
  public void setAmount(Integer amount) {
    this.amount = amount;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public String getUnit() {
    return unit;
  }
  public void setUnit(String unit) {
    this.unit = unit;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public Integer getId() {
    return id;
  }
  public void setId(Integer id) {
    this.id = id;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public List<SearchDrinks200ResponseDrinksInnerNutritionIngredientBreakdownInnerNutrientsInner> getNutrients() {
    return nutrients;
  }
  public void setNutrients(List<SearchDrinks200ResponseDrinksInnerNutritionIngredientBreakdownInnerNutrientsInner> nutrients) {
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
    SearchDrinks200ResponseDrinksInnerNutritionIngredientBreakdownInner searchDrinks200ResponseDrinksInnerNutritionIngredientBreakdownInner = (SearchDrinks200ResponseDrinksInnerNutritionIngredientBreakdownInner) o;
    return (this.name == null ? searchDrinks200ResponseDrinksInnerNutritionIngredientBreakdownInner.name == null : this.name.equals(searchDrinks200ResponseDrinksInnerNutritionIngredientBreakdownInner.name)) &&
        (this.amount == null ? searchDrinks200ResponseDrinksInnerNutritionIngredientBreakdownInner.amount == null : this.amount.equals(searchDrinks200ResponseDrinksInnerNutritionIngredientBreakdownInner.amount)) &&
        (this.unit == null ? searchDrinks200ResponseDrinksInnerNutritionIngredientBreakdownInner.unit == null : this.unit.equals(searchDrinks200ResponseDrinksInnerNutritionIngredientBreakdownInner.unit)) &&
        (this.id == null ? searchDrinks200ResponseDrinksInnerNutritionIngredientBreakdownInner.id == null : this.id.equals(searchDrinks200ResponseDrinksInnerNutritionIngredientBreakdownInner.id)) &&
        (this.nutrients == null ? searchDrinks200ResponseDrinksInnerNutritionIngredientBreakdownInner.nutrients == null : this.nutrients.equals(searchDrinks200ResponseDrinksInnerNutritionIngredientBreakdownInner.nutrients));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.name == null ? 0: this.name.hashCode());
    result = 31 * result + (this.amount == null ? 0: this.amount.hashCode());
    result = 31 * result + (this.unit == null ? 0: this.unit.hashCode());
    result = 31 * result + (this.id == null ? 0: this.id.hashCode());
    result = 31 * result + (this.nutrients == null ? 0: this.nutrients.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class SearchDrinks200ResponseDrinksInnerNutritionIngredientBreakdownInner {\n");
    
    sb.append("  name: ").append(name).append("\n");
    sb.append("  amount: ").append(amount).append("\n");
    sb.append("  unit: ").append(unit).append("\n");
    sb.append("  id: ").append(id).append("\n");
    sb.append("  nutrients: ").append(nutrients).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
