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

import com.apileague.client.model.ScoreText200ResponseSkimmabilityMainscores;
import com.apileague.client.model.ScoreText200ResponseSkimmabilitySubscores;
import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;

@ApiModel(description = "")
public class ScoreText200ResponseSkimmability {
  
  @SerializedName("mainscores")
  private ScoreText200ResponseSkimmabilityMainscores mainscores = null;
  @SerializedName("subscores")
  private ScoreText200ResponseSkimmabilitySubscores subscores = null;

  /**
   **/
  @ApiModelProperty(value = "")
  public ScoreText200ResponseSkimmabilityMainscores getMainscores() {
    return mainscores;
  }
  public void setMainscores(ScoreText200ResponseSkimmabilityMainscores mainscores) {
    this.mainscores = mainscores;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public ScoreText200ResponseSkimmabilitySubscores getSubscores() {
    return subscores;
  }
  public void setSubscores(ScoreText200ResponseSkimmabilitySubscores subscores) {
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
    ScoreText200ResponseSkimmability scoreText200ResponseSkimmability = (ScoreText200ResponseSkimmability) o;
    return (this.mainscores == null ? scoreText200ResponseSkimmability.mainscores == null : this.mainscores.equals(scoreText200ResponseSkimmability.mainscores)) &&
        (this.subscores == null ? scoreText200ResponseSkimmability.subscores == null : this.subscores.equals(scoreText200ResponseSkimmability.subscores));
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
    sb.append("class ScoreText200ResponseSkimmability {\n");
    
    sb.append("  mainscores: ").append(mainscores).append("\n");
    sb.append("  subscores: ").append(subscores).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
