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

import com.apileague.client.model.ScoreText200ResponseReadabilityMainscores;
import com.apileague.client.model.ScoreText200ResponseStyleSubscores;
import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;

@ApiModel(description = "")
public class ScoreText200ResponseStyle {
  
  @SerializedName("mainscores")
  private ScoreText200ResponseReadabilityMainscores mainscores = null;
  @SerializedName("subscores")
  private ScoreText200ResponseStyleSubscores subscores = null;

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
  public ScoreText200ResponseStyleSubscores getSubscores() {
    return subscores;
  }
  public void setSubscores(ScoreText200ResponseStyleSubscores subscores) {
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
    ScoreText200ResponseStyle scoreText200ResponseStyle = (ScoreText200ResponseStyle) o;
    return (this.mainscores == null ? scoreText200ResponseStyle.mainscores == null : this.mainscores.equals(scoreText200ResponseStyle.mainscores)) &&
        (this.subscores == null ? scoreText200ResponseStyle.subscores == null : this.subscores.equals(scoreText200ResponseStyle.subscores));
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
    sb.append("class ScoreText200ResponseStyle {\n");
    
    sb.append("  mainscores: ").append(mainscores).append("\n");
    sb.append("  subscores: ").append(subscores).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
