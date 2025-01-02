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

import com.apileague.client.model.ScoreTextAPI200ResponseReadabilityMainscores;
import com.apileague.client.model.ScoreTextAPI200ResponseReadabilitySubscores;
import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;

@ApiModel(description = "")
public class ScoreTextAPI200ResponseReadability {
  
  @SerializedName("mainscores")
  private ScoreTextAPI200ResponseReadabilityMainscores mainscores = null;
  @SerializedName("subscores")
  private ScoreTextAPI200ResponseReadabilitySubscores subscores = null;

  /**
   **/
  @ApiModelProperty(value = "")
  public ScoreTextAPI200ResponseReadabilityMainscores getMainscores() {
    return mainscores;
  }
  public void setMainscores(ScoreTextAPI200ResponseReadabilityMainscores mainscores) {
    this.mainscores = mainscores;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public ScoreTextAPI200ResponseReadabilitySubscores getSubscores() {
    return subscores;
  }
  public void setSubscores(ScoreTextAPI200ResponseReadabilitySubscores subscores) {
    this.subscores = subscores;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    ScoreTextAPI200ResponseReadability scoreTextAPI200ResponseReadability = (ScoreTextAPI200ResponseReadability) o;
    return (this.mainscores == null ? scoreTextAPI200ResponseReadability.mainscores == null : this.mainscores.equals(scoreTextAPI200ResponseReadability.mainscores)) &&
        (this.subscores == null ? scoreTextAPI200ResponseReadability.subscores == null : this.subscores.equals(scoreTextAPI200ResponseReadability.subscores));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.mainscores == null ? 0: this.mainscores.hashCode());
    result = 31 * result + (this.subscores == null ? 0: this.subscores.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class ScoreTextAPI200ResponseReadability {\n");
    
    sb.append("  mainscores: ").append(mainscores).append("\n");
    sb.append("  subscores: ").append(subscores).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}