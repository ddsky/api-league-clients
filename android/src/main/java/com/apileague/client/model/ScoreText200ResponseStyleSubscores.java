/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.3.0
 * Contact: mail@apileague.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

package com.apileague.client.model;

import java.util.*;
import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;

@ApiModel(description = "")
public class ScoreText200ResponseStyleSubscores {
  
  @SerializedName("abbreviation_score")
  private List<Integer> abbreviationScore = null;
  @SerializedName("style_score")
  private List<Integer> styleScore = null;
  @SerializedName("spelling_score")
  private List<Integer> spellingScore = null;

  /**
   **/
  @ApiModelProperty(value = "")
  public List<Integer> getAbbreviationScore() {
    return abbreviationScore;
  }
  public void setAbbreviationScore(List<Integer> abbreviationScore) {
    this.abbreviationScore = abbreviationScore;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public List<Integer> getStyleScore() {
    return styleScore;
  }
  public void setStyleScore(List<Integer> styleScore) {
    this.styleScore = styleScore;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public List<Integer> getSpellingScore() {
    return spellingScore;
  }
  public void setSpellingScore(List<Integer> spellingScore) {
    this.spellingScore = spellingScore;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    ScoreText200ResponseStyleSubscores scoreText200ResponseStyleSubscores = (ScoreText200ResponseStyleSubscores) o;
    return (this.abbreviationScore == null ? scoreText200ResponseStyleSubscores.abbreviationScore == null : this.abbreviationScore.equals(scoreText200ResponseStyleSubscores.abbreviationScore)) &&
        (this.styleScore == null ? scoreText200ResponseStyleSubscores.styleScore == null : this.styleScore.equals(scoreText200ResponseStyleSubscores.styleScore)) &&
        (this.spellingScore == null ? scoreText200ResponseStyleSubscores.spellingScore == null : this.spellingScore.equals(scoreText200ResponseStyleSubscores.spellingScore));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.abbreviationScore == null ? 0: this.abbreviationScore.hashCode());
    result = 31 * result + (this.styleScore == null ? 0: this.styleScore.hashCode());
    result = 31 * result + (this.spellingScore == null ? 0: this.spellingScore.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class ScoreText200ResponseStyleSubscores {\n");
    
    sb.append("  abbreviationScore: ").append(abbreviationScore).append("\n");
    sb.append("  styleScore: ").append(styleScore).append("\n");
    sb.append("  spellingScore: ").append(spellingScore).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
