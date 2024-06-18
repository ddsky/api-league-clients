/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.3.0
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
public class ConvertUnits200Response {
  
  @SerializedName("target_amount")
  private BigDecimal targetAmount = null;
  @SerializedName("target_unit")
  private String targetUnit = null;

  /**
   **/
  @ApiModelProperty(value = "")
  public BigDecimal getTargetAmount() {
    return targetAmount;
  }
  public void setTargetAmount(BigDecimal targetAmount) {
    this.targetAmount = targetAmount;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public String getTargetUnit() {
    return targetUnit;
  }
  public void setTargetUnit(String targetUnit) {
    this.targetUnit = targetUnit;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    ConvertUnits200Response convertUnits200Response = (ConvertUnits200Response) o;
    return (this.targetAmount == null ? convertUnits200Response.targetAmount == null : this.targetAmount.equals(convertUnits200Response.targetAmount)) &&
        (this.targetUnit == null ? convertUnits200Response.targetUnit == null : this.targetUnit.equals(convertUnits200Response.targetUnit));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.targetAmount == null ? 0: this.targetAmount.hashCode());
    result = 31 * result + (this.targetUnit == null ? 0: this.targetUnit.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class ConvertUnits200Response {\n");
    
    sb.append("  targetAmount: ").append(targetAmount).append("\n");
    sb.append("  targetUnit: ").append(targetUnit).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
