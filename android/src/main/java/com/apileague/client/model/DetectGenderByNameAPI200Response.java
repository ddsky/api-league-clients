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
public class DetectGenderByNameAPI200Response {
  
  @SerializedName("name")
  private String name = null;
  @SerializedName("probability_male")
  private BigDecimal probabilityMale = null;
  @SerializedName("probability_female")
  private BigDecimal probabilityFemale = null;
  @SerializedName("popularity")
  private BigDecimal popularity = null;

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
  public BigDecimal getProbabilityMale() {
    return probabilityMale;
  }
  public void setProbabilityMale(BigDecimal probabilityMale) {
    this.probabilityMale = probabilityMale;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public BigDecimal getProbabilityFemale() {
    return probabilityFemale;
  }
  public void setProbabilityFemale(BigDecimal probabilityFemale) {
    this.probabilityFemale = probabilityFemale;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public BigDecimal getPopularity() {
    return popularity;
  }
  public void setPopularity(BigDecimal popularity) {
    this.popularity = popularity;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    DetectGenderByNameAPI200Response detectGenderByNameAPI200Response = (DetectGenderByNameAPI200Response) o;
    return (this.name == null ? detectGenderByNameAPI200Response.name == null : this.name.equals(detectGenderByNameAPI200Response.name)) &&
        (this.probabilityMale == null ? detectGenderByNameAPI200Response.probabilityMale == null : this.probabilityMale.equals(detectGenderByNameAPI200Response.probabilityMale)) &&
        (this.probabilityFemale == null ? detectGenderByNameAPI200Response.probabilityFemale == null : this.probabilityFemale.equals(detectGenderByNameAPI200Response.probabilityFemale)) &&
        (this.popularity == null ? detectGenderByNameAPI200Response.popularity == null : this.popularity.equals(detectGenderByNameAPI200Response.popularity));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.name == null ? 0: this.name.hashCode());
    result = 31 * result + (this.probabilityMale == null ? 0: this.probabilityMale.hashCode());
    result = 31 * result + (this.probabilityFemale == null ? 0: this.probabilityFemale.hashCode());
    result = 31 * result + (this.popularity == null ? 0: this.popularity.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class DetectGenderByNameAPI200Response {\n");
    
    sb.append("  name: ").append(name).append("\n");
    sb.append("  probabilityMale: ").append(probabilityMale).append("\n");
    sb.append("  probabilityFemale: ").append(probabilityFemale).append("\n");
    sb.append("  popularity: ").append(popularity).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
