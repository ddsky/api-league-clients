/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.6.4
 * Contact: mail@apileague.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

package com.apileague.client.model;

import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;

@ApiModel(description = "")
public class SearchDrinksAPI200ResponseDrinksInnerCredits {
  
  @SerializedName("text")
  private String text = null;
  @SerializedName("source_name")
  private String sourceName = null;
  @SerializedName("source_url")
  private String sourceUrl = null;

  /**
   **/
  @ApiModelProperty(value = "")
  public String getText() {
    return text;
  }
  public void setText(String text) {
    this.text = text;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public String getSourceName() {
    return sourceName;
  }
  public void setSourceName(String sourceName) {
    this.sourceName = sourceName;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public String getSourceUrl() {
    return sourceUrl;
  }
  public void setSourceUrl(String sourceUrl) {
    this.sourceUrl = sourceUrl;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    SearchDrinksAPI200ResponseDrinksInnerCredits searchDrinksAPI200ResponseDrinksInnerCredits = (SearchDrinksAPI200ResponseDrinksInnerCredits) o;
    return (this.text == null ? searchDrinksAPI200ResponseDrinksInnerCredits.text == null : this.text.equals(searchDrinksAPI200ResponseDrinksInnerCredits.text)) &&
        (this.sourceName == null ? searchDrinksAPI200ResponseDrinksInnerCredits.sourceName == null : this.sourceName.equals(searchDrinksAPI200ResponseDrinksInnerCredits.sourceName)) &&
        (this.sourceUrl == null ? searchDrinksAPI200ResponseDrinksInnerCredits.sourceUrl == null : this.sourceUrl.equals(searchDrinksAPI200ResponseDrinksInnerCredits.sourceUrl));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.text == null ? 0: this.text.hashCode());
    result = 31 * result + (this.sourceName == null ? 0: this.sourceName.hashCode());
    result = 31 * result + (this.sourceUrl == null ? 0: this.sourceUrl.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class SearchDrinksAPI200ResponseDrinksInnerCredits {\n");
    
    sb.append("  text: ").append(text).append("\n");
    sb.append("  sourceName: ").append(sourceName).append("\n");
    sb.append("  sourceUrl: ").append(sourceUrl).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}