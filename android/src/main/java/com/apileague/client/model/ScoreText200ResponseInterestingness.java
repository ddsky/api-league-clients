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

import com.apileague.client.model.ScoreText200ResponseInterestingnessSubscores;
import com.apileague.client.model.ScoreText200ResponseSkimmabilityMainscores;
import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;

@ApiModel(description = "")
public class ScoreText200ResponseInterestingness {
  
  @SerializedName("mainscores")
  private ScoreText200ResponseSkimmabilityMainscores mainscores = null;
  @SerializedName("subscores")
  private ScoreText200ResponseInterestingnessSubscores subscores = null;

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
  public ScoreText200ResponseInterestingnessSubscores getSubscores() {
    return subscores;
  }
  public void setSubscores(ScoreText200ResponseInterestingnessSubscores subscores) {
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
    ScoreText200ResponseInterestingness scoreText200ResponseInterestingness = (ScoreText200ResponseInterestingness) o;
    return (this.mainscores == null ? scoreText200ResponseInterestingness.mainscores == null : this.mainscores.equals(scoreText200ResponseInterestingness.mainscores)) &&
        (this.subscores == null ? scoreText200ResponseInterestingness.subscores == null : this.subscores.equals(scoreText200ResponseInterestingness.subscores));
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
    sb.append("class ScoreText200ResponseInterestingness {\n");
    
    sb.append("  mainscores: ").append(mainscores).append("\n");
    sb.append("  subscores: ").append(subscores).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
