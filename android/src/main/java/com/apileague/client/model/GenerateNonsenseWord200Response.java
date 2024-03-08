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

import java.math.BigDecimal;
import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;

@ApiModel(description = "")
public class GenerateNonsenseWord200Response {
  
  @SerializedName("word")
  private String word = null;
  @SerializedName("rating")
  private BigDecimal rating = null;

  /**
   **/
  @ApiModelProperty(value = "")
  public String getWord() {
    return word;
  }
  public void setWord(String word) {
    this.word = word;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public BigDecimal getRating() {
    return rating;
  }
  public void setRating(BigDecimal rating) {
    this.rating = rating;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    GenerateNonsenseWord200Response generateNonsenseWord200Response = (GenerateNonsenseWord200Response) o;
    return (this.word == null ? generateNonsenseWord200Response.word == null : this.word.equals(generateNonsenseWord200Response.word)) &&
        (this.rating == null ? generateNonsenseWord200Response.rating == null : this.rating.equals(generateNonsenseWord200Response.rating));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.word == null ? 0: this.word.hashCode());
    result = 31 * result + (this.rating == null ? 0: this.rating.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class GenerateNonsenseWord200Response {\n");
    
    sb.append("  word: ").append(word).append("\n");
    sb.append("  rating: ").append(rating).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
