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

import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;

@ApiModel(description = "")
public class ComputeNutrition200ResponseIngredientBreakdownInnerNutrientsInner {
  
  @SerializedName("name")
  private String name = null;
  @SerializedName("percent_of_daily_needs")
  private Integer percentOfDailyNeeds = null;
  @SerializedName("amount")
  private Integer amount = null;
  @SerializedName("unit")
  private String unit = null;

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
  public Integer getPercentOfDailyNeeds() {
    return percentOfDailyNeeds;
  }
  public void setPercentOfDailyNeeds(Integer percentOfDailyNeeds) {
    this.percentOfDailyNeeds = percentOfDailyNeeds;
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


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    ComputeNutrition200ResponseIngredientBreakdownInnerNutrientsInner computeNutrition200ResponseIngredientBreakdownInnerNutrientsInner = (ComputeNutrition200ResponseIngredientBreakdownInnerNutrientsInner) o;
    return (this.name == null ? computeNutrition200ResponseIngredientBreakdownInnerNutrientsInner.name == null : this.name.equals(computeNutrition200ResponseIngredientBreakdownInnerNutrientsInner.name)) &&
        (this.percentOfDailyNeeds == null ? computeNutrition200ResponseIngredientBreakdownInnerNutrientsInner.percentOfDailyNeeds == null : this.percentOfDailyNeeds.equals(computeNutrition200ResponseIngredientBreakdownInnerNutrientsInner.percentOfDailyNeeds)) &&
        (this.amount == null ? computeNutrition200ResponseIngredientBreakdownInnerNutrientsInner.amount == null : this.amount.equals(computeNutrition200ResponseIngredientBreakdownInnerNutrientsInner.amount)) &&
        (this.unit == null ? computeNutrition200ResponseIngredientBreakdownInnerNutrientsInner.unit == null : this.unit.equals(computeNutrition200ResponseIngredientBreakdownInnerNutrientsInner.unit));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.name == null ? 0: this.name.hashCode());
    result = 31 * result + (this.percentOfDailyNeeds == null ? 0: this.percentOfDailyNeeds.hashCode());
    result = 31 * result + (this.amount == null ? 0: this.amount.hashCode());
    result = 31 * result + (this.unit == null ? 0: this.unit.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class ComputeNutrition200ResponseIngredientBreakdownInnerNutrientsInner {\n");
    
    sb.append("  name: ").append(name).append("\n");
    sb.append("  percentOfDailyNeeds: ").append(percentOfDailyNeeds).append("\n");
    sb.append("  amount: ").append(amount).append("\n");
    sb.append("  unit: ").append(unit).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
