/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.5.0
 * Contact: mail@apileague.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

package com.apileague.client.model;

import com.apileague.client.model.RetrieveRecipeInformation200ResponseInstructionsInnerStepsInner;
import java.util.*;
import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;

@ApiModel(description = "")
public class RetrieveRecipeInformation200ResponseInstructionsInner {
  
  @SerializedName("name")
  private String name = null;
  @SerializedName("steps")
  private List<RetrieveRecipeInformation200ResponseInstructionsInnerStepsInner> steps = null;

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
  public List<RetrieveRecipeInformation200ResponseInstructionsInnerStepsInner> getSteps() {
    return steps;
  }
  public void setSteps(List<RetrieveRecipeInformation200ResponseInstructionsInnerStepsInner> steps) {
    this.steps = steps;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    RetrieveRecipeInformation200ResponseInstructionsInner retrieveRecipeInformation200ResponseInstructionsInner = (RetrieveRecipeInformation200ResponseInstructionsInner) o;
    return (this.name == null ? retrieveRecipeInformation200ResponseInstructionsInner.name == null : this.name.equals(retrieveRecipeInformation200ResponseInstructionsInner.name)) &&
        (this.steps == null ? retrieveRecipeInformation200ResponseInstructionsInner.steps == null : this.steps.equals(retrieveRecipeInformation200ResponseInstructionsInner.steps));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.name == null ? 0: this.name.hashCode());
    result = 31 * result + (this.steps == null ? 0: this.steps.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class RetrieveRecipeInformation200ResponseInstructionsInner {\n");
    
    sb.append("  name: ").append(name).append("\n");
    sb.append("  steps: ").append(steps).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
