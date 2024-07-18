/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.5.0
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
public class ScoreText200ResponseInterestingnessSubscores {
  
  @SerializedName("title_rating_score")
  private List<Integer> titleRatingScore = null;
  @SerializedName("quote_score")
  private List<Integer> quoteScore = null;
  @SerializedName("length_score")
  private List<Integer> lengthScore = null;
  @SerializedName("link_score")
  private List<Integer> linkScore = null;
  @SerializedName("google_hits_score")
  private List<Integer> googleHitsScore = null;

  /**
   **/
  @ApiModelProperty(value = "")
  public List<Integer> getTitleRatingScore() {
    return titleRatingScore;
  }
  public void setTitleRatingScore(List<Integer> titleRatingScore) {
    this.titleRatingScore = titleRatingScore;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public List<Integer> getQuoteScore() {
    return quoteScore;
  }
  public void setQuoteScore(List<Integer> quoteScore) {
    this.quoteScore = quoteScore;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public List<Integer> getLengthScore() {
    return lengthScore;
  }
  public void setLengthScore(List<Integer> lengthScore) {
    this.lengthScore = lengthScore;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public List<Integer> getLinkScore() {
    return linkScore;
  }
  public void setLinkScore(List<Integer> linkScore) {
    this.linkScore = linkScore;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public List<Integer> getGoogleHitsScore() {
    return googleHitsScore;
  }
  public void setGoogleHitsScore(List<Integer> googleHitsScore) {
    this.googleHitsScore = googleHitsScore;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    ScoreText200ResponseInterestingnessSubscores scoreText200ResponseInterestingnessSubscores = (ScoreText200ResponseInterestingnessSubscores) o;
    return (this.titleRatingScore == null ? scoreText200ResponseInterestingnessSubscores.titleRatingScore == null : this.titleRatingScore.equals(scoreText200ResponseInterestingnessSubscores.titleRatingScore)) &&
        (this.quoteScore == null ? scoreText200ResponseInterestingnessSubscores.quoteScore == null : this.quoteScore.equals(scoreText200ResponseInterestingnessSubscores.quoteScore)) &&
        (this.lengthScore == null ? scoreText200ResponseInterestingnessSubscores.lengthScore == null : this.lengthScore.equals(scoreText200ResponseInterestingnessSubscores.lengthScore)) &&
        (this.linkScore == null ? scoreText200ResponseInterestingnessSubscores.linkScore == null : this.linkScore.equals(scoreText200ResponseInterestingnessSubscores.linkScore)) &&
        (this.googleHitsScore == null ? scoreText200ResponseInterestingnessSubscores.googleHitsScore == null : this.googleHitsScore.equals(scoreText200ResponseInterestingnessSubscores.googleHitsScore));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.titleRatingScore == null ? 0: this.titleRatingScore.hashCode());
    result = 31 * result + (this.quoteScore == null ? 0: this.quoteScore.hashCode());
    result = 31 * result + (this.lengthScore == null ? 0: this.lengthScore.hashCode());
    result = 31 * result + (this.linkScore == null ? 0: this.linkScore.hashCode());
    result = 31 * result + (this.googleHitsScore == null ? 0: this.googleHitsScore.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class ScoreText200ResponseInterestingnessSubscores {\n");
    
    sb.append("  titleRatingScore: ").append(titleRatingScore).append("\n");
    sb.append("  quoteScore: ").append(quoteScore).append("\n");
    sb.append("  lengthScore: ").append(lengthScore).append("\n");
    sb.append("  linkScore: ").append(linkScore).append("\n");
    sb.append("  googleHitsScore: ").append(googleHitsScore).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
