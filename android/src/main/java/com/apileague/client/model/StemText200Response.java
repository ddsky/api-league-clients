/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.6.3
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
public class StemText200Response {
  
  @SerializedName("original")
  private String original = null;
  @SerializedName("stemmed")
  private String stemmed = null;

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
  public String getStemmed() {
    return stemmed;
  }
  public void setStemmed(String stemmed) {
    this.stemmed = stemmed;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    StemText200Response stemText200Response = (StemText200Response) o;
    return (this.original == null ? stemText200Response.original == null : this.original.equals(stemText200Response.original)) &&
        (this.stemmed == null ? stemText200Response.stemmed == null : this.stemmed.equals(stemText200Response.stemmed));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.original == null ? 0: this.original.hashCode());
    result = 31 * result + (this.stemmed == null ? 0: this.stemmed.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class StemText200Response {\n");
    
    sb.append("  original: ").append(original).append("\n");
    sb.append("  stemmed: ").append(stemmed).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
