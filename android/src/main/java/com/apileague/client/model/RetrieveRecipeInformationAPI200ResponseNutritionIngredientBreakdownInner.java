/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.6.4
 * Contact: mail@apileague.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

package com.apileague.client.model;

import com.apileague.client.model.SearchDrinksAPI200ResponseDrinksInnerNutritionNutrientsInner;
import java.math.BigDecimal;
import java.util.*;
import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;

@ApiModel(description = "")
public class RetrieveRecipeInformationAPI200ResponseNutritionIngredientBreakdownInner {
  
  @SerializedName("name")
  private String name = null;
  @SerializedName("amount")
  private BigDecimal amount = null;
  @SerializedName("unit")
  private String unit = null;
  @SerializedName("id")
  private Integer id = null;
  @SerializedName("nutrients")
  private List<SearchDrinksAPI200ResponseDrinksInnerNutritionNutrientsInner> nutrients = null;

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
  public BigDecimal getAmount() {
    return amount;
  }
  public void setAmount(BigDecimal amount) {
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
  public List<SearchDrinksAPI200ResponseDrinksInnerNutritionNutrientsInner> getNutrients() {
    return nutrients;
  }
  public void setNutrients(List<SearchDrinksAPI200ResponseDrinksInnerNutritionNutrientsInner> nutrients) {
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
    RetrieveRecipeInformationAPI200ResponseNutritionIngredientBreakdownInner retrieveRecipeInformationAPI200ResponseNutritionIngredientBreakdownInner = (RetrieveRecipeInformationAPI200ResponseNutritionIngredientBreakdownInner) o;
    return (this.name == null ? retrieveRecipeInformationAPI200ResponseNutritionIngredientBreakdownInner.name == null : this.name.equals(retrieveRecipeInformationAPI200ResponseNutritionIngredientBreakdownInner.name)) &&
        (this.amount == null ? retrieveRecipeInformationAPI200ResponseNutritionIngredientBreakdownInner.amount == null : this.amount.equals(retrieveRecipeInformationAPI200ResponseNutritionIngredientBreakdownInner.amount)) &&
        (this.unit == null ? retrieveRecipeInformationAPI200ResponseNutritionIngredientBreakdownInner.unit == null : this.unit.equals(retrieveRecipeInformationAPI200ResponseNutritionIngredientBreakdownInner.unit)) &&
        (this.id == null ? retrieveRecipeInformationAPI200ResponseNutritionIngredientBreakdownInner.id == null : this.id.equals(retrieveRecipeInformationAPI200ResponseNutritionIngredientBreakdownInner.id)) &&
        (this.nutrients == null ? retrieveRecipeInformationAPI200ResponseNutritionIngredientBreakdownInner.nutrients == null : this.nutrients.equals(retrieveRecipeInformationAPI200ResponseNutritionIngredientBreakdownInner.nutrients));
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
    sb.append("class RetrieveRecipeInformationAPI200ResponseNutritionIngredientBreakdownInner {\n");
    
    sb.append("  name: ").append(name).append("\n");
    sb.append("  amount: ").append(amount).append("\n");
    sb.append("  unit: ").append(unit).append("\n");
    sb.append("  id: ").append(id).append("\n");
    sb.append("  nutrients: ").append(nutrients).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
