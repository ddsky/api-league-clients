/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.0.0
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
public class RetrieveRecipeInformation200ResponseNutritionCaloricBreakdown {
  
  @SerializedName("percent_fat")
  private BigDecimal percentFat = null;
  @SerializedName("percent_carbs")
  private BigDecimal percentCarbs = null;
  @SerializedName("percent_protein")
  private BigDecimal percentProtein = null;

  /**
   **/
  @ApiModelProperty(value = "")
  public BigDecimal getPercentFat() {
    return percentFat;
  }
  public void setPercentFat(BigDecimal percentFat) {
    this.percentFat = percentFat;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public BigDecimal getPercentCarbs() {
    return percentCarbs;
  }
  public void setPercentCarbs(BigDecimal percentCarbs) {
    this.percentCarbs = percentCarbs;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public BigDecimal getPercentProtein() {
    return percentProtein;
  }
  public void setPercentProtein(BigDecimal percentProtein) {
    this.percentProtein = percentProtein;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    RetrieveRecipeInformation200ResponseNutritionCaloricBreakdown retrieveRecipeInformation200ResponseNutritionCaloricBreakdown = (RetrieveRecipeInformation200ResponseNutritionCaloricBreakdown) o;
    return (this.percentFat == null ? retrieveRecipeInformation200ResponseNutritionCaloricBreakdown.percentFat == null : this.percentFat.equals(retrieveRecipeInformation200ResponseNutritionCaloricBreakdown.percentFat)) &&
        (this.percentCarbs == null ? retrieveRecipeInformation200ResponseNutritionCaloricBreakdown.percentCarbs == null : this.percentCarbs.equals(retrieveRecipeInformation200ResponseNutritionCaloricBreakdown.percentCarbs)) &&
        (this.percentProtein == null ? retrieveRecipeInformation200ResponseNutritionCaloricBreakdown.percentProtein == null : this.percentProtein.equals(retrieveRecipeInformation200ResponseNutritionCaloricBreakdown.percentProtein));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.percentFat == null ? 0: this.percentFat.hashCode());
    result = 31 * result + (this.percentCarbs == null ? 0: this.percentCarbs.hashCode());
    result = 31 * result + (this.percentProtein == null ? 0: this.percentProtein.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class RetrieveRecipeInformation200ResponseNutritionCaloricBreakdown {\n");
    
    sb.append("  percentFat: ").append(percentFat).append("\n");
    sb.append("  percentCarbs: ").append(percentCarbs).append("\n");
    sb.append("  percentProtein: ").append(percentProtein).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
