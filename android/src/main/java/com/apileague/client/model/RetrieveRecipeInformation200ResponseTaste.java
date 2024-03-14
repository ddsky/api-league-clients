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
public class RetrieveRecipeInformation200ResponseTaste {
  
  @SerializedName("fattiness")
  private BigDecimal fattiness = null;
  @SerializedName("spiciness")
  private Integer spiciness = null;
  @SerializedName("saltiness")
  private Integer saltiness = null;
  @SerializedName("bitterness")
  private BigDecimal bitterness = null;
  @SerializedName("savoriness")
  private BigDecimal savoriness = null;
  @SerializedName("sweetness")
  private BigDecimal sweetness = null;
  @SerializedName("sourness")
  private BigDecimal sourness = null;

  /**
   **/
  @ApiModelProperty(value = "")
  public BigDecimal getFattiness() {
    return fattiness;
  }
  public void setFattiness(BigDecimal fattiness) {
    this.fattiness = fattiness;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public Integer getSpiciness() {
    return spiciness;
  }
  public void setSpiciness(Integer spiciness) {
    this.spiciness = spiciness;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public Integer getSaltiness() {
    return saltiness;
  }
  public void setSaltiness(Integer saltiness) {
    this.saltiness = saltiness;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public BigDecimal getBitterness() {
    return bitterness;
  }
  public void setBitterness(BigDecimal bitterness) {
    this.bitterness = bitterness;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public BigDecimal getSavoriness() {
    return savoriness;
  }
  public void setSavoriness(BigDecimal savoriness) {
    this.savoriness = savoriness;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public BigDecimal getSweetness() {
    return sweetness;
  }
  public void setSweetness(BigDecimal sweetness) {
    this.sweetness = sweetness;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public BigDecimal getSourness() {
    return sourness;
  }
  public void setSourness(BigDecimal sourness) {
    this.sourness = sourness;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    RetrieveRecipeInformation200ResponseTaste retrieveRecipeInformation200ResponseTaste = (RetrieveRecipeInformation200ResponseTaste) o;
    return (this.fattiness == null ? retrieveRecipeInformation200ResponseTaste.fattiness == null : this.fattiness.equals(retrieveRecipeInformation200ResponseTaste.fattiness)) &&
        (this.spiciness == null ? retrieveRecipeInformation200ResponseTaste.spiciness == null : this.spiciness.equals(retrieveRecipeInformation200ResponseTaste.spiciness)) &&
        (this.saltiness == null ? retrieveRecipeInformation200ResponseTaste.saltiness == null : this.saltiness.equals(retrieveRecipeInformation200ResponseTaste.saltiness)) &&
        (this.bitterness == null ? retrieveRecipeInformation200ResponseTaste.bitterness == null : this.bitterness.equals(retrieveRecipeInformation200ResponseTaste.bitterness)) &&
        (this.savoriness == null ? retrieveRecipeInformation200ResponseTaste.savoriness == null : this.savoriness.equals(retrieveRecipeInformation200ResponseTaste.savoriness)) &&
        (this.sweetness == null ? retrieveRecipeInformation200ResponseTaste.sweetness == null : this.sweetness.equals(retrieveRecipeInformation200ResponseTaste.sweetness)) &&
        (this.sourness == null ? retrieveRecipeInformation200ResponseTaste.sourness == null : this.sourness.equals(retrieveRecipeInformation200ResponseTaste.sourness));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.fattiness == null ? 0: this.fattiness.hashCode());
    result = 31 * result + (this.spiciness == null ? 0: this.spiciness.hashCode());
    result = 31 * result + (this.saltiness == null ? 0: this.saltiness.hashCode());
    result = 31 * result + (this.bitterness == null ? 0: this.bitterness.hashCode());
    result = 31 * result + (this.savoriness == null ? 0: this.savoriness.hashCode());
    result = 31 * result + (this.sweetness == null ? 0: this.sweetness.hashCode());
    result = 31 * result + (this.sourness == null ? 0: this.sourness.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class RetrieveRecipeInformation200ResponseTaste {\n");
    
    sb.append("  fattiness: ").append(fattiness).append("\n");
    sb.append("  spiciness: ").append(spiciness).append("\n");
    sb.append("  saltiness: ").append(saltiness).append("\n");
    sb.append("  bitterness: ").append(bitterness).append("\n");
    sb.append("  savoriness: ").append(savoriness).append("\n");
    sb.append("  sweetness: ").append(sweetness).append("\n");
    sb.append("  sourness: ").append(sourness).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}