/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.4.1
 * Contact: mail@apileague.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

package com.apileague.client.model;

import com.apileague.client.model.TopNews200ResponseTopNewsInnerNewsInner;
import java.util.*;
import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;

@ApiModel(description = "")
public class TopNews200ResponseTopNewsInner {
  
  @SerializedName("news")
  private List<TopNews200ResponseTopNewsInnerNewsInner> news = null;

  /**
   **/
  @ApiModelProperty(value = "")
  public List<TopNews200ResponseTopNewsInnerNewsInner> getNews() {
    return news;
  }
  public void setNews(List<TopNews200ResponseTopNewsInnerNewsInner> news) {
    this.news = news;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    TopNews200ResponseTopNewsInner topNews200ResponseTopNewsInner = (TopNews200ResponseTopNewsInner) o;
    return (this.news == null ? topNews200ResponseTopNewsInner.news == null : this.news.equals(topNews200ResponseTopNewsInner.news));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.news == null ? 0: this.news.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class TopNews200ResponseTopNewsInner {\n");
    
    sb.append("  news: ").append(news).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
