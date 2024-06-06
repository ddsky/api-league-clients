/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.2.0
 * Contact: mail@apileague.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

package com.apileague.client.model;

import com.apileague.client.model.ScoreText200ResponseInterestingness;
import com.apileague.client.model.ScoreText200ResponseReadability;
import com.apileague.client.model.ScoreText200ResponseSkimmability;
import com.apileague.client.model.ScoreText200ResponseStyle;
import java.math.BigDecimal;
import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;

@ApiModel(description = "")
public class ScoreText200Response {
  
  @SerializedName("number_of_words")
  private Integer numberOfWords = null;
  @SerializedName("number_of_sentences")
  private Integer numberOfSentences = null;
  @SerializedName("readability")
  private ScoreText200ResponseReadability readability = null;
  @SerializedName("skimmability")
  private ScoreText200ResponseSkimmability skimmability = null;
  @SerializedName("interestingness")
  private ScoreText200ResponseInterestingness interestingness = null;
  @SerializedName("style")
  private ScoreText200ResponseStyle style = null;
  @SerializedName("total_score")
  private BigDecimal totalScore = null;

  /**
   **/
  @ApiModelProperty(value = "")
  public Integer getNumberOfWords() {
    return numberOfWords;
  }
  public void setNumberOfWords(Integer numberOfWords) {
    this.numberOfWords = numberOfWords;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public Integer getNumberOfSentences() {
    return numberOfSentences;
  }
  public void setNumberOfSentences(Integer numberOfSentences) {
    this.numberOfSentences = numberOfSentences;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public ScoreText200ResponseReadability getReadability() {
    return readability;
  }
  public void setReadability(ScoreText200ResponseReadability readability) {
    this.readability = readability;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public ScoreText200ResponseSkimmability getSkimmability() {
    return skimmability;
  }
  public void setSkimmability(ScoreText200ResponseSkimmability skimmability) {
    this.skimmability = skimmability;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public ScoreText200ResponseInterestingness getInterestingness() {
    return interestingness;
  }
  public void setInterestingness(ScoreText200ResponseInterestingness interestingness) {
    this.interestingness = interestingness;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public ScoreText200ResponseStyle getStyle() {
    return style;
  }
  public void setStyle(ScoreText200ResponseStyle style) {
    this.style = style;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public BigDecimal getTotalScore() {
    return totalScore;
  }
  public void setTotalScore(BigDecimal totalScore) {
    this.totalScore = totalScore;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    ScoreText200Response scoreText200Response = (ScoreText200Response) o;
    return (this.numberOfWords == null ? scoreText200Response.numberOfWords == null : this.numberOfWords.equals(scoreText200Response.numberOfWords)) &&
        (this.numberOfSentences == null ? scoreText200Response.numberOfSentences == null : this.numberOfSentences.equals(scoreText200Response.numberOfSentences)) &&
        (this.readability == null ? scoreText200Response.readability == null : this.readability.equals(scoreText200Response.readability)) &&
        (this.skimmability == null ? scoreText200Response.skimmability == null : this.skimmability.equals(scoreText200Response.skimmability)) &&
        (this.interestingness == null ? scoreText200Response.interestingness == null : this.interestingness.equals(scoreText200Response.interestingness)) &&
        (this.style == null ? scoreText200Response.style == null : this.style.equals(scoreText200Response.style)) &&
        (this.totalScore == null ? scoreText200Response.totalScore == null : this.totalScore.equals(scoreText200Response.totalScore));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.numberOfWords == null ? 0: this.numberOfWords.hashCode());
    result = 31 * result + (this.numberOfSentences == null ? 0: this.numberOfSentences.hashCode());
    result = 31 * result + (this.readability == null ? 0: this.readability.hashCode());
    result = 31 * result + (this.skimmability == null ? 0: this.skimmability.hashCode());
    result = 31 * result + (this.interestingness == null ? 0: this.interestingness.hashCode());
    result = 31 * result + (this.style == null ? 0: this.style.hashCode());
    result = 31 * result + (this.totalScore == null ? 0: this.totalScore.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class ScoreText200Response {\n");
    
    sb.append("  numberOfWords: ").append(numberOfWords).append("\n");
    sb.append("  numberOfSentences: ").append(numberOfSentences).append("\n");
    sb.append("  readability: ").append(readability).append("\n");
    sb.append("  skimmability: ").append(skimmability).append("\n");
    sb.append("  interestingness: ").append(interestingness).append("\n");
    sb.append("  style: ").append(style).append("\n");
    sb.append("  totalScore: ").append(totalScore).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
