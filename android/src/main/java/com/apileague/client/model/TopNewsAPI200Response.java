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

import com.apileague.client.model.TopNewsAPI200ResponseTopNewsInner;
import java.util.*;
import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;

@ApiModel(description = "")
public class TopNewsAPI200Response {
  
  @SerializedName("top_news")
  private List<TopNewsAPI200ResponseTopNewsInner> topNews = null;
  @SerializedName("language")
  private String language = null;
  @SerializedName("country")
  private String country = null;

  /**
   **/
  @ApiModelProperty(value = "")
  public List<TopNewsAPI200ResponseTopNewsInner> getTopNews() {
    return topNews;
  }
  public void setTopNews(List<TopNewsAPI200ResponseTopNewsInner> topNews) {
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
    TopNewsAPI200Response topNewsAPI200Response = (TopNewsAPI200Response) o;
    return (this.topNews == null ? topNewsAPI200Response.topNews == null : this.topNews.equals(topNewsAPI200Response.topNews)) &&
        (this.language == null ? topNewsAPI200Response.language == null : this.language.equals(topNewsAPI200Response.language)) &&
        (this.country == null ? topNewsAPI200Response.country == null : this.country.equals(topNewsAPI200Response.country));
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
    sb.append("class TopNewsAPI200Response {\n");
    
    sb.append("  topNews: ").append(topNews).append("\n");
    sb.append("  language: ").append(language).append("\n");
    sb.append("  country: ").append(country).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}