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
public class InlineResponse20026 {
  
  @SerializedName("original")
  private String original = null;
  @SerializedName("plural")
  private String plural = null;

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
  public String getPlural() {
    return plural;
  }
  public void setPlural(String plural) {
    this.plural = plural;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    InlineResponse20026 inlineResponse20026 = (InlineResponse20026) o;
    return (this.original == null ? inlineResponse20026.original == null : this.original.equals(inlineResponse20026.original)) &&
        (this.plural == null ? inlineResponse20026.plural == null : this.plural.equals(inlineResponse20026.plural));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.original == null ? 0: this.original.hashCode());
    result = 31 * result + (this.plural == null ? 0: this.plural.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class InlineResponse20026 {\n");
    
    sb.append("  original: ").append(original).append("\n");
    sb.append("  plural: ").append(plural).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
