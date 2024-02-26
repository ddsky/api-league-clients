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

import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;

@ApiModel(description = "")
public class InlineResponse20025 {
  
  @SerializedName("original")
  private String original = null;
  @SerializedName("singular")
  private String singular = null;

  /**
   **/
  @ApiModelProperty(value = "")
  public String getOriginal() {
    return original;
  }
  public void setOriginal(String original) {
    this.original = original;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public String getSingular() {
    return singular;
  }
  public void setSingular(String singular) {
    this.singular = singular;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    InlineResponse20025 inlineResponse20025 = (InlineResponse20025) o;
    return (this.original == null ? inlineResponse20025.original == null : this.original.equals(inlineResponse20025.original)) &&
        (this.singular == null ? inlineResponse20025.singular == null : this.singular.equals(inlineResponse20025.singular));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.original == null ? 0: this.original.hashCode());
    result = 31 * result + (this.singular == null ? 0: this.singular.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class InlineResponse20025 {\n");
    
    sb.append("  original: ").append(original).append("\n");
    sb.append("  singular: ").append(singular).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
