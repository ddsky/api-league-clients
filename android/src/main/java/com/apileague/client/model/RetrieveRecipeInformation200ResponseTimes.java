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
public class RetrieveRecipeInformation200ResponseTimes {
  
  @SerializedName("total_minutes")
  private Integer totalMinutes = null;

  /**
   **/
  @ApiModelProperty(value = "")
  public Integer getTotalMinutes() {
    return totalMinutes;
  }
  public void setTotalMinutes(Integer totalMinutes) {
    this.totalMinutes = totalMinutes;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    RetrieveRecipeInformation200ResponseTimes retrieveRecipeInformation200ResponseTimes = (RetrieveRecipeInformation200ResponseTimes) o;
    return (this.totalMinutes == null ? retrieveRecipeInformation200ResponseTimes.totalMinutes == null : this.totalMinutes.equals(retrieveRecipeInformation200ResponseTimes.totalMinutes));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.totalMinutes == null ? 0: this.totalMinutes.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class RetrieveRecipeInformation200ResponseTimes {\n");
    
    sb.append("  totalMinutes: ").append(totalMinutes).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
