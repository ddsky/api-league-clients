/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.4.0
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
public class RetrieveRecipeInformation200ResponseNutritionFlavonoidsInner {
  
  @SerializedName("name")
  private String name = null;
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
    RetrieveRecipeInformation200ResponseNutritionFlavonoidsInner retrieveRecipeInformation200ResponseNutritionFlavonoidsInner = (RetrieveRecipeInformation200ResponseNutritionFlavonoidsInner) o;
    return (this.name == null ? retrieveRecipeInformation200ResponseNutritionFlavonoidsInner.name == null : this.name.equals(retrieveRecipeInformation200ResponseNutritionFlavonoidsInner.name)) &&
        (this.amount == null ? retrieveRecipeInformation200ResponseNutritionFlavonoidsInner.amount == null : this.amount.equals(retrieveRecipeInformation200ResponseNutritionFlavonoidsInner.amount)) &&
        (this.unit == null ? retrieveRecipeInformation200ResponseNutritionFlavonoidsInner.unit == null : this.unit.equals(retrieveRecipeInformation200ResponseNutritionFlavonoidsInner.unit));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.name == null ? 0: this.name.hashCode());
    result = 31 * result + (this.amount == null ? 0: this.amount.hashCode());
    result = 31 * result + (this.unit == null ? 0: this.unit.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class RetrieveRecipeInformation200ResponseNutritionFlavonoidsInner {\n");
    
    sb.append("  name: ").append(name).append("\n");
    sb.append("  amount: ").append(amount).append("\n");
    sb.append("  unit: ").append(unit).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
