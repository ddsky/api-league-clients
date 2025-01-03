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

import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;

@ApiModel(description = "")
public class SearchDrinksAPI200ResponseDrinksInnerIngredientsInnerMeasuresUs {
  
  @SerializedName("unit_short")
  private String unitShort = null;
  @SerializedName("amount")
  private Integer amount = null;
  @SerializedName("unit_long")
  private String unitLong = null;

  /**
   **/
  @ApiModelProperty(value = "")
  public String getUnitShort() {
    return unitShort;
  }
  public void setUnitShort(String unitShort) {
    this.unitShort = unitShort;
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
  public String getUnitLong() {
    return unitLong;
  }
  public void setUnitLong(String unitLong) {
    this.unitLong = unitLong;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    SearchDrinksAPI200ResponseDrinksInnerIngredientsInnerMeasuresUs searchDrinksAPI200ResponseDrinksInnerIngredientsInnerMeasuresUs = (SearchDrinksAPI200ResponseDrinksInnerIngredientsInnerMeasuresUs) o;
    return (this.unitShort == null ? searchDrinksAPI200ResponseDrinksInnerIngredientsInnerMeasuresUs.unitShort == null : this.unitShort.equals(searchDrinksAPI200ResponseDrinksInnerIngredientsInnerMeasuresUs.unitShort)) &&
        (this.amount == null ? searchDrinksAPI200ResponseDrinksInnerIngredientsInnerMeasuresUs.amount == null : this.amount.equals(searchDrinksAPI200ResponseDrinksInnerIngredientsInnerMeasuresUs.amount)) &&
        (this.unitLong == null ? searchDrinksAPI200ResponseDrinksInnerIngredientsInnerMeasuresUs.unitLong == null : this.unitLong.equals(searchDrinksAPI200ResponseDrinksInnerIngredientsInnerMeasuresUs.unitLong));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.unitShort == null ? 0: this.unitShort.hashCode());
    result = 31 * result + (this.amount == null ? 0: this.amount.hashCode());
    result = 31 * result + (this.unitLong == null ? 0: this.unitLong.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class SearchDrinksAPI200ResponseDrinksInnerIngredientsInnerMeasuresUs {\n");
    
    sb.append("  unitShort: ").append(unitShort).append("\n");
    sb.append("  amount: ").append(amount).append("\n");
    sb.append("  unitLong: ").append(unitLong).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
