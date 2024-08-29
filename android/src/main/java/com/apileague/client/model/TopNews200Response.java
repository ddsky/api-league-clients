/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.6.2
 * Contact: mail@apileague.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

package com.apileague.client.model;

import com.apileague.client.model.TopNews200ResponseTopNewsInner;
import java.util.*;
import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;

@ApiModel(description = "")
public class TopNews200Response {
  
  @SerializedName("top_news")
  private List<TopNews200ResponseTopNewsInner> topNews = null;
  @SerializedName("language")
  private String language = null;
  @SerializedName("country")
  private String country = null;

  /**
   **/
  @ApiModelProperty(value = "")
  public List<TopNews200ResponseTopNewsInner> getTopNews() {
    return topNews;
  }
  public void setTopNews(List<TopNews200ResponseTopNewsInner> topNews) {
    this.topNews = topNews;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public String getLanguage() {
    return language;
  }
  public void setLanguage(String language) {
    this.language = language;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public String getCountry() {
    return country;
  }
  public void setCountry(String country) {
    this.country = country;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    TopNews200Response topNews200Response = (TopNews200Response) o;
    return (this.topNews == null ? topNews200Response.topNews == null : this.topNews.equals(topNews200Response.topNews)) &&
        (this.language == null ? topNews200Response.language == null : this.language.equals(topNews200Response.language)) &&
        (this.country == null ? topNews200Response.country == null : this.country.equals(topNews200Response.country));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.topNews == null ? 0: this.topNews.hashCode());
    result = 31 * result + (this.language == null ? 0: this.language.hashCode());
    result = 31 * result + (this.country == null ? 0: this.country.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class TopNews200Response {\n");
    
    sb.append("  topNews: ").append(topNews).append("\n");
    sb.append("  language: ").append(language).append("\n");
    sb.append("  country: ").append(country).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
