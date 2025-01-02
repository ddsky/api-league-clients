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

import java.math.BigDecimal;
import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;

@ApiModel(description = "")
public class SearchDrinksAPI200ResponseDrinksInnerIngredientsInnerMeasuresMetric {
  
  @SerializedName("unit_short")
  private String unitShort = null;
  @SerializedName("amount")
  private BigDecimal amount = null;
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
  public BigDecimal getAmount() {
    return amount;
  }
  public void setAmount(BigDecimal amount) {
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
    SearchDrinksAPI200ResponseDrinksInnerIngredientsInnerMeasuresMetric searchDrinksAPI200ResponseDrinksInnerIngredientsInnerMeasuresMetric = (SearchDrinksAPI200ResponseDrinksInnerIngredientsInnerMeasuresMetric) o;
    return (this.unitShort == null ? searchDrinksAPI200ResponseDrinksInnerIngredientsInnerMeasuresMetric.unitShort == null : this.unitShort.equals(searchDrinksAPI200ResponseDrinksInnerIngredientsInnerMeasuresMetric.unitShort)) &&
        (this.amount == null ? searchDrinksAPI200ResponseDrinksInnerIngredientsInnerMeasuresMetric.amount == null : this.amount.equals(searchDrinksAPI200ResponseDrinksInnerIngredientsInnerMeasuresMetric.amount)) &&
        (this.unitLong == null ? searchDrinksAPI200ResponseDrinksInnerIngredientsInnerMeasuresMetric.unitLong == null : this.unitLong.equals(searchDrinksAPI200ResponseDrinksInnerIngredientsInnerMeasuresMetric.unitLong));
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
    sb.append("class SearchDrinksAPI200ResponseDrinksInnerIngredientsInnerMeasuresMetric {\n");
    
    sb.append("  unitShort: ").append(unitShort).append("\n");
    sb.append("  amount: ").append(amount).append("\n");
    sb.append("  unitLong: ").append(unitLong).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}