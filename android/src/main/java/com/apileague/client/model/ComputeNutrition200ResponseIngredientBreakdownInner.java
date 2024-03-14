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

import com.apileague.client.model.ComputeNutrition200ResponseIngredientBreakdownInnerNutrientsInner;
import java.util.*;
import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;

@ApiModel(description = "")
public class ComputeNutrition200ResponseIngredientBreakdownInner {
  
  @SerializedName("name")
  private String name = null;
  @SerializedName("amount")
  private Integer amount = null;
  @SerializedName("unit")
  private String unit = null;
  @SerializedName("id")
  private Integer id = null;
  @SerializedName("nutrients")
  private List<ComputeNutrition200ResponseIngredientBreakdownInnerNutrientsInner> nutrients = null;

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
  public List<ComputeNutrition200ResponseIngredientBreakdownInnerNutrientsInner> getNutrients() {
    return nutrients;
  }
  public void setNutrients(List<ComputeNutrition200ResponseIngredientBreakdownInnerNutrientsInner> nutrients) {
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
    ComputeNutrition200ResponseIngredientBreakdownInner computeNutrition200ResponseIngredientBreakdownInner = (ComputeNutrition200ResponseIngredientBreakdownInner) o;
    return (this.name == null ? computeNutrition200ResponseIngredientBreakdownInner.name == null : this.name.equals(computeNutrition200ResponseIngredientBreakdownInner.name)) &&
        (this.amount == null ? computeNutrition200ResponseIngredientBreakdownInner.amount == null : this.amount.equals(computeNutrition200ResponseIngredientBreakdownInner.amount)) &&
        (this.unit == null ? computeNutrition200ResponseIngredientBreakdownInner.unit == null : this.unit.equals(computeNutrition200ResponseIngredientBreakdownInner.unit)) &&
        (this.id == null ? computeNutrition200ResponseIngredientBreakdownInner.id == null : this.id.equals(computeNutrition200ResponseIngredientBreakdownInner.id)) &&
        (this.nutrients == null ? computeNutrition200ResponseIngredientBreakdownInner.nutrients == null : this.nutrients.equals(computeNutrition200ResponseIngredientBreakdownInner.nutrients));
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
    sb.append("class ComputeNutrition200ResponseIngredientBreakdownInner {\n");
    
    sb.append("  name: ").append(name).append("\n");
    sb.append("  amount: ").append(amount).append("\n");
    sb.append("  unit: ").append(unit).append("\n");
    sb.append("  id: ").append(id).append("\n");
    sb.append("  nutrients: ").append(nutrients).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}