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

import java.math.BigDecimal;
import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;

@ApiModel(description = "")
public class ScoreText200ResponseSkimmabilityMainscores {
  
  @SerializedName("total_possible")
  private Integer totalPossible = null;
  @SerializedName("total")
  private BigDecimal total = null;

  /**
   **/
  @ApiModelProperty(value = "")
  public Integer getTotalPossible() {
    return totalPossible;
  }
  public void setTotalPossible(Integer totalPossible) {
    this.totalPossible = totalPossible;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public BigDecimal getTotal() {
    return total;
  }
  public void setTotal(BigDecimal total) {
    this.total = total;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    ScoreText200ResponseSkimmabilityMainscores scoreText200ResponseSkimmabilityMainscores = (ScoreText200ResponseSkimmabilityMainscores) o;
    return (this.totalPossible == null ? scoreText200ResponseSkimmabilityMainscores.totalPossible == null : this.totalPossible.equals(scoreText200ResponseSkimmabilityMainscores.totalPossible)) &&
        (this.total == null ? scoreText200ResponseSkimmabilityMainscores.total == null : this.total.equals(scoreText200ResponseSkimmabilityMainscores.total));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.totalPossible == null ? 0: this.totalPossible.hashCode());
    result = 31 * result + (this.total == null ? 0: this.total.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class ScoreText200ResponseSkimmabilityMainscores {\n");
    
    sb.append("  totalPossible: ").append(totalPossible).append("\n");
    sb.append("  total: ").append(total).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}