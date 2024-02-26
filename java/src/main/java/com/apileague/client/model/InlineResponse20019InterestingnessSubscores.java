/*
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

import java.util.Objects;
import java.util.Arrays;
import com.google.gson.TypeAdapter;
import com.google.gson.annotations.JsonAdapter;
import com.google.gson.annotations.SerializedName;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/**
 * InlineResponse20019InterestingnessSubscores
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", date = "2024-02-26T23:39:54.793+01:00[Europe/Berlin]")
public class InlineResponse20019InterestingnessSubscores {
  public static final String SERIALIZED_NAME_TITLE_RATING_SCORE = "title_rating_score";
  @SerializedName(SERIALIZED_NAME_TITLE_RATING_SCORE)
  private List<Integer> titleRatingScore = null;

  public static final String SERIALIZED_NAME_QUOTE_SCORE = "quote_score";
  @SerializedName(SERIALIZED_NAME_QUOTE_SCORE)
  private List<Integer> quoteScore = null;

  public static final String SERIALIZED_NAME_LENGTH_SCORE = "length_score";
  @SerializedName(SERIALIZED_NAME_LENGTH_SCORE)
  private List<Integer> lengthScore = null;

  public static final String SERIALIZED_NAME_LINK_SCORE = "link_score";
  @SerializedName(SERIALIZED_NAME_LINK_SCORE)
  private List<Integer> linkScore = null;

  public static final String SERIALIZED_NAME_GOOGLE_HITS_SCORE = "google_hits_score";
  @SerializedName(SERIALIZED_NAME_GOOGLE_HITS_SCORE)
  private List<Integer> googleHitsScore = null;

  public InlineResponse20019InterestingnessSubscores() { 
  }

  public InlineResponse20019InterestingnessSubscores titleRatingScore(List<Integer> titleRatingScore) {
    
    this.titleRatingScore = titleRatingScore;
    return this;
  }

  public InlineResponse20019InterestingnessSubscores addTitleRatingScoreItem(Integer titleRatingScoreItem) {
    if (this.titleRatingScore == null) {
      this.titleRatingScore = new ArrayList<>();
    }
    this.titleRatingScore.add(titleRatingScoreItem);
    return this;
  }

   /**
   * Get titleRatingScore
   * @return titleRatingScore
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public List<Integer> getTitleRatingScore() {
    return titleRatingScore;
  }


  public void setTitleRatingScore(List<Integer> titleRatingScore) {
    this.titleRatingScore = titleRatingScore;
  }


  public InlineResponse20019InterestingnessSubscores quoteScore(List<Integer> quoteScore) {
    
    this.quoteScore = quoteScore;
    return this;
  }

  public InlineResponse20019InterestingnessSubscores addQuoteScoreItem(Integer quoteScoreItem) {
    if (this.quoteScore == null) {
      this.quoteScore = new ArrayList<>();
    }
    this.quoteScore.add(quoteScoreItem);
    return this;
  }

   /**
   * Get quoteScore
   * @return quoteScore
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public List<Integer> getQuoteScore() {
    return quoteScore;
  }


  public void setQuoteScore(List<Integer> quoteScore) {
    this.quoteScore = quoteScore;
  }


  public InlineResponse20019InterestingnessSubscores lengthScore(List<Integer> lengthScore) {
    
    this.lengthScore = lengthScore;
    return this;
  }

  public InlineResponse20019InterestingnessSubscores addLengthScoreItem(Integer lengthScoreItem) {
    if (this.lengthScore == null) {
      this.lengthScore = new ArrayList<>();
    }
    this.lengthScore.add(lengthScoreItem);
    return this;
  }

   /**
   * Get lengthScore
   * @return lengthScore
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public List<Integer> getLengthScore() {
    return lengthScore;
  }


  public void setLengthScore(List<Integer> lengthScore) {
    this.lengthScore = lengthScore;
  }


  public InlineResponse20019InterestingnessSubscores linkScore(List<Integer> linkScore) {
    
    this.linkScore = linkScore;
    return this;
  }

  public InlineResponse20019InterestingnessSubscores addLinkScoreItem(Integer linkScoreItem) {
    if (this.linkScore == null) {
      this.linkScore = new ArrayList<>();
    }
    this.linkScore.add(linkScoreItem);
    return this;
  }

   /**
   * Get linkScore
   * @return linkScore
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public List<Integer> getLinkScore() {
    return linkScore;
  }


  public void setLinkScore(List<Integer> linkScore) {
    this.linkScore = linkScore;
  }


  public InlineResponse20019InterestingnessSubscores googleHitsScore(List<Integer> googleHitsScore) {
    
    this.googleHitsScore = googleHitsScore;
    return this;
  }

  public InlineResponse20019InterestingnessSubscores addGoogleHitsScoreItem(Integer googleHitsScoreItem) {
    if (this.googleHitsScore == null) {
      this.googleHitsScore = new ArrayList<>();
    }
    this.googleHitsScore.add(googleHitsScoreItem);
    return this;
  }

   /**
   * Get googleHitsScore
   * @return googleHitsScore
  **/
  @javax.annotation.Nullable
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
    InlineResponse20019InterestingnessSubscores inlineResponse20019InterestingnessSubscores = (InlineResponse20019InterestingnessSubscores) o;
    return Objects.equals(this.titleRatingScore, inlineResponse20019InterestingnessSubscores.titleRatingScore) &&
        Objects.equals(this.quoteScore, inlineResponse20019InterestingnessSubscores.quoteScore) &&
        Objects.equals(this.lengthScore, inlineResponse20019InterestingnessSubscores.lengthScore) &&
        Objects.equals(this.linkScore, inlineResponse20019InterestingnessSubscores.linkScore) &&
        Objects.equals(this.googleHitsScore, inlineResponse20019InterestingnessSubscores.googleHitsScore);
  }

  @Override
  public int hashCode() {
    return Objects.hash(titleRatingScore, quoteScore, lengthScore, linkScore, googleHitsScore);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class InlineResponse20019InterestingnessSubscores {\n");
    sb.append("    titleRatingScore: ").append(toIndentedString(titleRatingScore)).append("\n");
    sb.append("    quoteScore: ").append(toIndentedString(quoteScore)).append("\n");
    sb.append("    lengthScore: ").append(toIndentedString(lengthScore)).append("\n");
    sb.append("    linkScore: ").append(toIndentedString(linkScore)).append("\n");
    sb.append("    googleHitsScore: ").append(toIndentedString(googleHitsScore)).append("\n");
    sb.append("}");
    return sb.toString();
  }

  /**
   * Convert the given object to string with each line indented by 4 spaces
   * (except the first line).
   */
  private String toIndentedString(Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }

}

