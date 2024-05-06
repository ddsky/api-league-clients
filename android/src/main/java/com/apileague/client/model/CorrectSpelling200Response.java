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

import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;

@ApiModel(description = "")
public class CorrectSpelling200Response {
  
  @SerializedName("corrected_text")
  private String correctedText = null;

  /**
   **/
  @ApiModelProperty(value = "")
  public String getCorrectedText() {
    return correctedText;
  }
  public void setCorrectedText(String correctedText) {
    this.correctedText = correctedText;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    CorrectSpelling200Response correctSpelling200Response = (CorrectSpelling200Response) o;
    return (this.correctedText == null ? correctSpelling200Response.correctedText == null : this.correctedText.equals(correctSpelling200Response.correctedText));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.correctedText == null ? 0: this.correctedText.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class CorrectSpelling200Response {\n");
    
    sb.append("  correctedText: ").append(correctedText).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
