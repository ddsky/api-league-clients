/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.4.0
 * Contact: mail@apileague.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

package com.apileague.client.model;

import com.apileague.client.model.ScoreText200ResponseReadabilityMainscores;
import com.apileague.client.model.ScoreText200ResponseReadabilitySubscores;
import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;

@ApiModel(description = "")
public class ScoreText200ResponseReadability {
  
  @SerializedName("mainscores")
  private ScoreText200ResponseReadabilityMainscores mainscores = null;
  @SerializedName("subscores")
  private ScoreText200ResponseReadabilitySubscores subscores = null;

  /**
   **/
  @ApiModelProperty(value = "")
  public ScoreText200ResponseReadabilityMainscores getMainscores() {
    return mainscores;
  }
  public void setMainscores(ScoreText200ResponseReadabilityMainscores mainscores) {
    this.mainscores = mainscores;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public ScoreText200ResponseReadabilitySubscores getSubscores() {
    return subscores;
  }
  public void setSubscores(ScoreText200ResponseReadabilitySubscores subscores) {
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
    ScoreText200ResponseReadability scoreText200ResponseReadability = (ScoreText200ResponseReadability) o;
    return (this.mainscores == null ? scoreText200ResponseReadability.mainscores == null : this.mainscores.equals(scoreText200ResponseReadability.mainscores)) &&
        (this.subscores == null ? scoreText200ResponseReadability.subscores == null : this.subscores.equals(scoreText200ResponseReadability.subscores));
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
    sb.append("class ScoreText200ResponseReadability {\n");
    
    sb.append("  mainscores: ").append(mainscores).append("\n");
    sb.append("  subscores: ").append(subscores).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
