/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.4.2
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
public class SearchWeb200ResponseResultsInner {
  
  @SerializedName("title")
  private String title = null;
  @SerializedName("summary")
  private String summary = null;
  @SerializedName("url")
  private String url = null;

  /**
   **/
  @ApiModelProperty(value = "")
  public String getTitle() {
    return title;
  }
  public void setTitle(String title) {
    this.title = title;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public String getSummary() {
    return summary;
  }
  public void setSummary(String summary) {
    this.summary = summary;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public String getUrl() {
    return url;
  }
  public void setUrl(String url) {
    this.url = url;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    SearchWeb200ResponseResultsInner searchWeb200ResponseResultsInner = (SearchWeb200ResponseResultsInner) o;
    return (this.title == null ? searchWeb200ResponseResultsInner.title == null : this.title.equals(searchWeb200ResponseResultsInner.title)) &&
        (this.summary == null ? searchWeb200ResponseResultsInner.summary == null : this.summary.equals(searchWeb200ResponseResultsInner.summary)) &&
        (this.url == null ? searchWeb200ResponseResultsInner.url == null : this.url.equals(searchWeb200ResponseResultsInner.url));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.title == null ? 0: this.title.hashCode());
    result = 31 * result + (this.summary == null ? 0: this.summary.hashCode());
    result = 31 * result + (this.url == null ? 0: this.url.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class SearchWeb200ResponseResultsInner {\n");
    
    sb.append("  title: ").append(title).append("\n");
    sb.append("  summary: ").append(summary).append("\n");
    sb.append("  url: ").append(url).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
