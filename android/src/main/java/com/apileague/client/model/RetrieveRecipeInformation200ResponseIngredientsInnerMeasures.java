/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.4.2
 * Contact: mail@apileague.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

package com.apileague.client.model;

import com.apileague.client.model.RetrieveRecipeInformation200ResponseIngredientsInnerMeasuresMetric;
import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;

@ApiModel(description = "")
public class RetrieveRecipeInformation200ResponseIngredientsInnerMeasures {
  
  @SerializedName("metric")
  private RetrieveRecipeInformation200ResponseIngredientsInnerMeasuresMetric metric = null;
  @SerializedName("us")
  private RetrieveRecipeInformation200ResponseIngredientsInnerMeasuresMetric us = null;

  /**
   **/
  @ApiModelProperty(value = "")
  public RetrieveRecipeInformation200ResponseIngredientsInnerMeasuresMetric getMetric() {
    return metric;
  }
  public void setMetric(RetrieveRecipeInformation200ResponseIngredientsInnerMeasuresMetric metric) {
    this.metric = metric;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public RetrieveRecipeInformation200ResponseIngredientsInnerMeasuresMetric getUs() {
    return us;
  }
  public void setUs(RetrieveRecipeInformation200ResponseIngredientsInnerMeasuresMetric us) {
    this.us = us;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    RetrieveRecipeInformation200ResponseIngredientsInnerMeasures retrieveRecipeInformation200ResponseIngredientsInnerMeasures = (RetrieveRecipeInformation200ResponseIngredientsInnerMeasures) o;
    return (this.metric == null ? retrieveRecipeInformation200ResponseIngredientsInnerMeasures.metric == null : this.metric.equals(retrieveRecipeInformation200ResponseIngredientsInnerMeasures.metric)) &&
        (this.us == null ? retrieveRecipeInformation200ResponseIngredientsInnerMeasures.us == null : this.us.equals(retrieveRecipeInformation200ResponseIngredientsInnerMeasures.us));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.metric == null ? 0: this.metric.hashCode());
    result = 31 * result + (this.us == null ? 0: this.us.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class RetrieveRecipeInformation200ResponseIngredientsInnerMeasures {\n");
    
    sb.append("  metric: ").append(metric).append("\n");
    sb.append("  us: ").append(us).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
