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
import org.openapitools.jackson.nullable.JsonNullable;

/**
 * InlineResponse20018Document
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", date = "2024-02-26T23:39:54.793+01:00[Europe/Berlin]")
public class InlineResponse20018Document {
  public static final String SERIALIZED_NAME_SENTIMENT = "sentiment";
  @SerializedName(SERIALIZED_NAME_SENTIMENT)
  private String sentiment;

  public static final String SERIALIZED_NAME_CONFIDENCE = "confidence";
  @SerializedName(SERIALIZED_NAME_CONFIDENCE)
  private Integer confidence;

  public static final String SERIALIZED_NAME_AVERAGE_CONFIDENCE = "average_confidence";
  @SerializedName(SERIALIZED_NAME_AVERAGE_CONFIDENCE)
  private Integer averageConfidence;

  public InlineResponse20018Document() { 
  }

  public InlineResponse20018Document sentiment(String sentiment) {
    
    this.sentiment = sentiment;
    return this;
  }

   /**
   * Get sentiment
   * @return sentiment
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public String getSentiment() {
    return sentiment;
  }


  public void setSentiment(String sentiment) {
    this.sentiment = sentiment;
  }


  public InlineResponse20018Document confidence(Integer confidence) {
    
    this.confidence = confidence;
    return this;
  }

   /**
   * Get confidence
   * @return confidence
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public Integer getConfidence() {
    return confidence;
  }


  public void setConfidence(Integer confidence) {
    this.confidence = confidence;
  }


  public InlineResponse20018Document averageConfidence(Integer averageConfidence) {
    
    this.averageConfidence = averageConfidence;
    return this;
  }

   /**
   * Get averageConfidence
   * @return averageConfidence
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public Integer getAverageConfidence() {
    return averageConfidence;
  }


  public void setAverageConfidence(Integer averageConfidence) {
    this.averageConfidence = averageConfidence;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    InlineResponse20018Document inlineResponse20018Document = (InlineResponse20018Document) o;
    return Objects.equals(this.sentiment, inlineResponse20018Document.sentiment) &&
        Objects.equals(this.confidence, inlineResponse20018Document.confidence) &&
        Objects.equals(this.averageConfidence, inlineResponse20018Document.averageConfidence);
  }

  private static <T> boolean equalsNullable(JsonNullable<T> a, JsonNullable<T> b) {
    return a == b || (a != null && b != null && a.isPresent() && b.isPresent() && Objects.deepEquals(a.get(), b.get()));
  }

  @Override
  public int hashCode() {
    return Objects.hash(sentiment, confidence, averageConfidence);
  }

  private static <T> int hashCodeNullable(JsonNullable<T> a) {
    if (a == null) {
      return 1;
    }
    return a.isPresent() ? Arrays.deepHashCode(new Object[]{a.get()}) : 31;
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class InlineResponse20018Document {\n");
    sb.append("    sentiment: ").append(toIndentedString(sentiment)).append("\n");
    sb.append("    confidence: ").append(toIndentedString(confidence)).append("\n");
    sb.append("    averageConfidence: ").append(toIndentedString(averageConfidence)).append("\n");
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

