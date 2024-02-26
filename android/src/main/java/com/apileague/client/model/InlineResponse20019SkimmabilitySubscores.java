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

import java.util.*;
import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;

@ApiModel(description = "")
public class InlineResponse20019SkimmabilitySubscores {
  
  @SerializedName("bullet_point_ratio_score")
  private List<Integer> bulletPointRatioScore = null;
  @SerializedName("image_score")
  private List<Integer> imageScore = null;
  @SerializedName("highlighted_word_ratio_score")
  private List<Integer> highlightedWordRatioScore = null;
  @SerializedName("video_score")
  private List<Integer> videoScore = null;
  @SerializedName("paragraph_score")
  private List<Integer> paragraphScore = null;
  @SerializedName("paragraph_headline_ratio_score")
  private List<Integer> paragraphHeadlineRatioScore = null;

  /**
   **/
  @ApiModelProperty(value = "")
  public List<Integer> getBulletPointRatioScore() {
    return bulletPointRatioScore;
  }
  public void setBulletPointRatioScore(List<Integer> bulletPointRatioScore) {
    this.bulletPointRatioScore = bulletPointRatioScore;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public List<Integer> getImageScore() {
    return imageScore;
  }
  public void setImageScore(List<Integer> imageScore) {
    this.imageScore = imageScore;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public List<Integer> getHighlightedWordRatioScore() {
    return highlightedWordRatioScore;
  }
  public void setHighlightedWordRatioScore(List<Integer> highlightedWordRatioScore) {
    this.highlightedWordRatioScore = highlightedWordRatioScore;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public List<Integer> getVideoScore() {
    return videoScore;
  }
  public void setVideoScore(List<Integer> videoScore) {
    this.videoScore = videoScore;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public List<Integer> getParagraphScore() {
    return paragraphScore;
  }
  public void setParagraphScore(List<Integer> paragraphScore) {
    this.paragraphScore = paragraphScore;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public List<Integer> getParagraphHeadlineRatioScore() {
    return paragraphHeadlineRatioScore;
  }
  public void setParagraphHeadlineRatioScore(List<Integer> paragraphHeadlineRatioScore) {
    this.paragraphHeadlineRatioScore = paragraphHeadlineRatioScore;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    InlineResponse20019SkimmabilitySubscores inlineResponse20019SkimmabilitySubscores = (InlineResponse20019SkimmabilitySubscores) o;
    return (this.bulletPointRatioScore == null ? inlineResponse20019SkimmabilitySubscores.bulletPointRatioScore == null : this.bulletPointRatioScore.equals(inlineResponse20019SkimmabilitySubscores.bulletPointRatioScore)) &&
        (this.imageScore == null ? inlineResponse20019SkimmabilitySubscores.imageScore == null : this.imageScore.equals(inlineResponse20019SkimmabilitySubscores.imageScore)) &&
        (this.highlightedWordRatioScore == null ? inlineResponse20019SkimmabilitySubscores.highlightedWordRatioScore == null : this.highlightedWordRatioScore.equals(inlineResponse20019SkimmabilitySubscores.highlightedWordRatioScore)) &&
        (this.videoScore == null ? inlineResponse20019SkimmabilitySubscores.videoScore == null : this.videoScore.equals(inlineResponse20019SkimmabilitySubscores.videoScore)) &&
        (this.paragraphScore == null ? inlineResponse20019SkimmabilitySubscores.paragraphScore == null : this.paragraphScore.equals(inlineResponse20019SkimmabilitySubscores.paragraphScore)) &&
        (this.paragraphHeadlineRatioScore == null ? inlineResponse20019SkimmabilitySubscores.paragraphHeadlineRatioScore == null : this.paragraphHeadlineRatioScore.equals(inlineResponse20019SkimmabilitySubscores.paragraphHeadlineRatioScore));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.bulletPointRatioScore == null ? 0: this.bulletPointRatioScore.hashCode());
    result = 31 * result + (this.imageScore == null ? 0: this.imageScore.hashCode());
    result = 31 * result + (this.highlightedWordRatioScore == null ? 0: this.highlightedWordRatioScore.hashCode());
    result = 31 * result + (this.videoScore == null ? 0: this.videoScore.hashCode());
    result = 31 * result + (this.paragraphScore == null ? 0: this.paragraphScore.hashCode());
    result = 31 * result + (this.paragraphHeadlineRatioScore == null ? 0: this.paragraphHeadlineRatioScore.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class InlineResponse20019SkimmabilitySubscores {\n");
    
    sb.append("  bulletPointRatioScore: ").append(bulletPointRatioScore).append("\n");
    sb.append("  imageScore: ").append(imageScore).append("\n");
    sb.append("  highlightedWordRatioScore: ").append(highlightedWordRatioScore).append("\n");
    sb.append("  videoScore: ").append(videoScore).append("\n");
    sb.append("  paragraphScore: ").append(paragraphScore).append("\n");
    sb.append("  paragraphHeadlineRatioScore: ").append(paragraphHeadlineRatioScore).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
