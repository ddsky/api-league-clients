/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.4.1
 * Contact: mail@apileague.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

package com.apileague.client.model;

import com.apileague.client.model.ScoreText200ResponseReadability;
import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;

@ApiModel(description = "")
public class ScoreReadability200Response {
  
  @SerializedName("readability")
  private ScoreText200ResponseReadability readability = null;

  /**
   **/
  @ApiModelProperty(value = "")
  public ScoreText200ResponseReadability getReadability() {
    return readability;
  }
  public void setReadability(ScoreText200ResponseReadability readability) {
    this.readability = readability;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    ScoreReadability200Response scoreReadability200Response = (ScoreReadability200Response) o;
    return (this.readability == null ? scoreReadability200Response.readability == null : this.readability.equals(scoreReadability200Response.readability));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.readability == null ? 0: this.readability.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class ScoreReadability200Response {\n");
    
    sb.append("  readability: ").append(readability).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
