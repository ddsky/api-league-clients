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

import com.apileague.client.model.RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInnerNutrientsInner;
import java.math.BigDecimal;
import java.util.*;
import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;

@ApiModel(description = "")
public class RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInner {
  
  @SerializedName("name")
  private String name = null;
  @SerializedName("amount")
  private BigDecimal amount = null;
  @SerializedName("unit")
  private String unit = null;
  @SerializedName("id")
  private Integer id = null;
  @SerializedName("nutrients")
  private List<RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInnerNutrientsInner> nutrients = null;

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
  public List<RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInnerNutrientsInner> getNutrients() {
    return nutrients;
  }
  public void setNutrients(List<RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInnerNutrientsInner> nutrients) {
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
    RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInner retrieveRecipeInformation200ResponseNutritionIngredientBreakdownInner = (RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInner) o;
    return (this.name == null ? retrieveRecipeInformation200ResponseNutritionIngredientBreakdownInner.name == null : this.name.equals(retrieveRecipeInformation200ResponseNutritionIngredientBreakdownInner.name)) &&
        (this.amount == null ? retrieveRecipeInformation200ResponseNutritionIngredientBreakdownInner.amount == null : this.amount.equals(retrieveRecipeInformation200ResponseNutritionIngredientBreakdownInner.amount)) &&
        (this.unit == null ? retrieveRecipeInformation200ResponseNutritionIngredientBreakdownInner.unit == null : this.unit.equals(retrieveRecipeInformation200ResponseNutritionIngredientBreakdownInner.unit)) &&
        (this.id == null ? retrieveRecipeInformation200ResponseNutritionIngredientBreakdownInner.id == null : this.id.equals(retrieveRecipeInformation200ResponseNutritionIngredientBreakdownInner.id)) &&
        (this.nutrients == null ? retrieveRecipeInformation200ResponseNutritionIngredientBreakdownInner.nutrients == null : this.nutrients.equals(retrieveRecipeInformation200ResponseNutritionIngredientBreakdownInner.nutrients));
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
    sb.append("class RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInner {\n");
    
    sb.append("  name: ").append(name).append("\n");
    sb.append("  amount: ").append(amount).append("\n");
    sb.append("  unit: ").append(unit).append("\n");
    sb.append("  id: ").append(id).append("\n");
    sb.append("  nutrients: ").append(nutrients).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
